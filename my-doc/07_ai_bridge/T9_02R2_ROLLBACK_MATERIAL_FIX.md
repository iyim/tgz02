# T9-02R2 回滚材料事务化修复

- 仓库：`iyim/tgz02`，基线提交 `dfad9cc5d28d97c21d8485ef8fab752e6851c74d`
- 设备：TG-Z02 / AILABS_S1L，Android 8.1（SDK 27），`armeabi-v7a`，Magisk root，`192.168.1.9:5555`
- 作业时间：2026-11-24 14:24 — 14:35（CST）
- 范围：只改三个部署/回滚脚本 + 新增回归测试；**没有改任何语音功能代码**，`tg_stack.rc` 与 `boot_stack.sh` 的启动架构一字未动

---

## 1. 审查意见与本次修复对照

| 审查要求 | 落地 | 证据 |
|---|---|---|
| 首次部署备份旧启动文件、生成完整清单 | 备份在 `$BAK/.staging_<stamp>/` 里完成并逐个校验，最后用 `mv` 发布；清单最后一步发布 | 主机用例 1、真机 `01` |
| 已部署 `tg_stack.rc` 时重复部署不得覆盖/清空原清单 | `OLD_LIST` 为空时**只读取、只校验**，任何写入分支都不会被执行；日志 `nothing new to capture - the existing rollback set is left untouched` | 主机用例 2/12、真机 `04`（清单 sha256 `2e91054e…` 前后完全一致） |
| 发现原始备份已存在时先验完整性再决定复用 | `verify_existing_set()`：清单格式（64 位小写 hex + 安全文件名）+ 每个文件存在 + 每个哈希匹配 + 至少一条；返回 0/1/2 三态 | 主机用例 4/5，真机 `02` |
| 备份事务未完成时不得改动有效回滚材料 | 先在 staging 里复制并逐个比哈希，任一步失败 `rm -rf staging; fail`（此时 `$BAK` 里一个字节都没变）；发布阶段文件先 rename、清单最后 rename | 主机用例 4/7/11 |
| 回滚前必须验证原始备份文件与清单 | `rollback_boot_rc.sh` 先全量校验（含格式、文件名安全、空清单），全部通过才 `remount,rw` | 真机 `05`（复制目录上的完整回滚 + 篡改 + 空清单三种分支） |
| 不允许空清单绕过校验 | 清单为 0 字节 → 部署拒绝、回滚拒绝；空清单永远不会被写成"有效" | 主机用例 5、真机 `02`/`05` |
| 不改变已验收启动架构 | `tg_stack.rc`（`190f611c…`）、`boot_stack.sh`（`6f72f3f8…`）在设备上前后哈希不变；`:core` 仍只有那两个 `.so` | 真机 `04`、`40` |

### 1.1 审查指出的缺陷在真机上是**真实存在**的

T9-02R 部署后（12:52:53 那次幂等重跑）设备就已经处于被破坏的状态：

```
=== rollback material BEFORE any action
-rw-r--r-- 1 root root  122 2026-11-24 12:52 deploy.stamp
-rw-r--r-- 1 root root    0 2026-11-24 12:52 sha256.before      <-- 被 ": >" 清空
-rw-r--r-- 1 root root 2114 2026-11-24 12:26 tg_supervisor.rc   <-- 原始备份还在
manifest_bytes=0
cdd947509c15b3b5facc0794529294ff94ab069ec1f0c20164fd27cfe414ec34  tg_supervisor.rc
deploy.stamp: deployed_at=20261124_125253 new_rc_sha256=190f611c… replaced= none
=== what the rollback script says about this state
ERROR: /data/local/tmp/t9/rc_backup/sha256.before is empty - refusing to touch /system/etc/init
```

即：**回滚能力当时已经丢失**，只是没人去回滚过。证据：`evidence/t9-02r2/01_static_and_prestate.txt`。

---

## 2. 新的事务模型（`deploy_boot_rc.sh`）

旧写法的问题不在某一行，而在"清单是一个随时可被重写的文件"。新模型把清单当**一次事务的产物**：

```
                ┌──────────── 状态判定（只读，不写） ─────────────┐
                │ verify_existing_set(): 0 有效 / 1 不存在 / 2 损坏 │
                └───────────────┬───────────────────────────────┘
      OLD_LIST 为空             │                       OLD_LIST 非空
   （只有 tg_stack.rc，即重复部署）│                （真的还有旧启动项要替换）
        │                       │                              │
        ├─ 0 有效 → 什么都不写，直接继续部署（唯一合法路径）        │
        ├─ 1 不存在 → 什么都不写，日志说明"没有可回滚的原始项"      │
        └─ 2 损坏 → fail，退出码 1，一个字节都不动                │
                                                                │
                        逐项决定 reuse / capture ───────────────┘
                        复用条件：清单里有该项 + 备份存在 + 备份哈希==清单哈希 + 备份哈希==现网哈希
                        冲突（现网 ≠ 原始）→ fail（TG_FORCE_REBAK=1 才归档旧集并重新捕获）
                                                                │
                        staging：cp + 逐项哈希校验 + 继承未涉及的旧条目 │
                                                                │
                        发布：mv 备份文件 → sync → mv 清单 → sync → 重验 → rm -rf staging
                                                                │
                        然后才 remount,rw / 删除旧项 / 安装 tg_stack.rc
```

关键不变量：

1. **没有任何分支会在 `OLD_LIST` 为空时写 `$BAK`。** 这就是审查指出的 P1 的根因封堵。
2. **清单的 publish 是最后一次 `mv`**；此前一切都是 staging 里的副本，失败即丢弃。
3. **已捕获的原始项不会被后来的"现网文件"覆盖**：现网和原始不一致时是冲突，不是升级。
4. 发布后立即用同一套 `verify_existing_set()` 复验；不通过就 `fail`（此时旧项还没删）。

新增日志行（真机输出）：

```
   existing rollback set verified: 1 entries in /data/local/tmp/t9/rc_backup/sha256.before
   reuse: (none)  capture: (none)
   nothing new to capture - the existing rollback set is left untouched
```

`$BAK/deploy.stamp` 现在额外记录 `captured=` / `reused=`，并追加一行到 `$BAK/deploy.log`，事后可以还原"哪次部署动了哪些东西"。

### 2.1 `rollback_boot_rc.sh`

- 清单必须存在、非空、每行严格 `<64 位小写 hex>  <安全文件名>`（`*/*`、`.`、`..` 直接拒绝）；
- 逐项校验备份文件存在且哈希匹配，全部通过才 `remount,rw`；
- 恢复后对目标文件再算一次哈希，与清单比对；不一致立刻回只读并报错；
- 名字匹配改为**逐行精确比较**，不再用 `grep "  $name$"`（避免正则元字符误配）；
- 追加 `$BAK/rollback.log` 一行审计记录。

### 2.2 `repair_rc_manifest.sh`（新增）

设备上已经丢弃的清单需要一条**可审计**的恢复路径，而不是手写一行进去。用法：

```
su -c "sh /data/local/tmp/t9/repair_rc_manifest.sh <expected_sha256> [更多...]"
```

规则：必须显式给出期望哈希（不信任备份目录里的任何"现状"）；只记录哈希等于期望值的备份文件；已有有效清单不动；损坏清单先归档为 `sha256.before.damaged.<stamp>`；写完复验。

本次设备上的期望哈希取自既有报告（T8-15.6 / T9-01 记录的 T6 `tg_supervisor.rc` = `cdd94750…ec34`），与现存备份文件哈希一致，因此这次修复是**用外部证据校准**，不是"把现状当成真相"。

---

## 3. 主机测试

### 3.1 新增回归（`tests/t9_02r2_backup_transaction_test.sh`）

真脚本 + 桩 `mount/chown/sync/setprop/getprop`，假 `/system/etc/init`，**不接触设备**：

```
T9-02R2 backup transaction tests: 80 passed, 0 failed
```

| # | 场景 | 断言要点 |
|---|---|---|
| 1 | 首次部署 | 清单 = `原始哈希  tg_supervisor.rc`；备份内容 = 原始；`/system` 回 `ro` |
| 2 | 重复部署 | 清单字节哈希不变、备份字节哈希不变、日志含 `nothing new to capture`、**不含 `staged`** |
| 3 | 首次 → 重复 → 回滚 | 回滚成功；恢复文件与最初原始**逐字节相同**；日志 `rollback set verified: 1 entries` |
| 4 | 备份被篡改 | 部署拒绝、清单与备份均未改、目录未动；回滚也拒绝（`is corrupted`） |
| 5 | 空清单（旧脚本产物） | 部署拒绝（`does not verify`）、清单未被替换、目录未动；回滚拒绝（`empty`） |
| 6 | 无旧文件、无历史捕获 | 部署成功、**不创建空清单**、日志说明无原始项；回滚拒绝（`nothing to roll back to`） |
| 7 | 现网文件被改过 | 部署拒绝（`differs from the captured original`）、清单/备份/现网三者均未被改 |
| 8 | `TG_FORCE_REBAK=1` + 冲突 | 重新捕获新内容，回滚恢复到**新**内容 |
| 9 | `TG_FORCE_REBAK=1` + 损坏集 | 归档损坏清单、重新捕获、回滚恢复可用，且**不会**退回被归档的旧原始 |
| 10 | 清单里插入畸形行 | 回滚拒绝（`malformed`）、清单未被改 |
| 11 | 部署中途因陌生 `tg_*.rc` 中止 | 清单与备份字节不变、无残留 staging 目录 |
| 12 | 连续三次部署 + 一次回滚 | 清单始终一份；回滚拿回第一次捕获的原始 |
| 13 | 修复脚本（正确期望哈希） | 重建清单、归档截断清单、回滚恢复可用且哈希一致 |
| 14 | 修复脚本（错误哈希 / 无参数） | 拒绝，且不写下任何清单；备份文件不动 |
| 15 | 修复脚本（已有有效清单） | 直接退出 0（`existing manifest verifies`），清单不被重写 |

### 3.2 旧回归未退化

```
T9-02R boot script tests: 41 passed, 0 failed
```

日志：`evidence/t9-02r2_host_regression.log`、`evidence/t9_02r_boot_scripts_test.log`。

---

## 4. 真机验证（只读 + 幂等重跑，不改启动架构）

脚本 `sh -n` 4/4 通过（`deploy`、`rollback`、`repair`、`boot_stack`）。设备上的完整序列：

| 步骤 | 操作 | 结果 | 证据 |
|---|---|---|---|
| 1 | 现状取证 | 清单 0 字节、备份 `cdd94750…` 在、回滚拒绝 | `01_static_and_prestate.txt` |
| 2 | 新脚本直接部署（对损坏集） | `EXIT=1`，`existing rollback material does not verify - refusing to touch it or /system/etc/init`；清单/备份/`init` 目录均未变，`/system` 一直 `ro` | `02_deploy_refuses_damaged.txt` |
| 3 | 用 T8-15.6/T9-01 记录的哈希修复清单 | `accept tg_supervisor.rc (cdd94750…)`，损坏清单归档为 `sha256.before.damaged.20261124_143427`，新清单 1 条 | `03_repair_manifest.txt` |
| 4 | 幂等重复部署（本项的回归核心） | `EXIT=0`；清单 `2e91054e…`、备份 `cdd94750…` 前后**完全一致**；`tg_stack.rc` 仍是 `190f611c…`；`/system` 回 `ro` | `04_repeat_deploy.txt` |
| 5 | 第二次重复部署 | 同上，清单/备份不变 | `04_repeat_deploy.txt` |
| 6 | 在**复制出来的** init 目录 + 备份集上跑完整回滚（`mount/chown/sync` 用 PATH 桩，`TG_INIT_DIR`/`TG_BAK` 指向副本） | 恢复 `tg_supervisor.rc`，哈希 `cdd94750…`；真实 `/system/etc/init` 与真实备份集**全程未动** | `05_rollback_selfcheck.txt` |
| 7 | 同一副本上篡改备份 | 回滚拒绝（`is corrupted (820fea20… != cdd94750…)`），副本目录未动 | `05_rollback_selfcheck.txt` |
| 8 | 同一副本上空清单 | 回滚拒绝（`is empty`） | `05_rollback_selfcheck.txt` |

真机复现要点：**第 4 步就是审查描述的那个场景**（`entries to replace: (none)`），旧脚本在这一步把清单清空，新脚本输出 `nothing new to capture - the existing rollback set is left untouched` 并且两个哈希一字不差。

回滚材料现状（末尾快照）：

```
manifest  sha256.before           83 B  = cdd94750…  tg_supervisor.rc
backup    tg_supervisor.rc      2114 B  = cdd94750…
archive   sha256.before.damaged.20261124_143427  0 B（原截断文件，留档）
```

`/system` 已回 `ro`，`:core`（pid 1178）仍只映射 `libtg_hook.so` + `libtg_ttsguard_t8156.so`，`tg_hook_sup`/`tg_guard_sup` running，`tgb_bridge` 1602 / `ai_worker` 2580 在位（`evidence/t9-04/40_final_state.txt`）。

---

## 5. 没做什么（避免顺手扩大范围）

- 没有为了"图省事"把 `tg_stack.rc` 排除在备份之外，也没有把 `sha256.before` 改成每次写两份；
- 没有引入目录 fsync：Android 的 `sh` 没有可靠的目录 fsync 接口，`mv` + `sync` 已是这条链能做到的上限，剩余风险写在 §6；
- 没有重启设备、没有重新注入、没有改 SELinux、没有动原厂任何文件；
- 没有把 `boot_stack.sh`/`tg_stack.rc` 一起"顺手优化"。

---

## 6. 剩余风险与后续

1. **`mv` + `sync` 不是目录 fsync**。掉电恰好落在"文件已 rename、清单已 rename、sync 之前"的窗口，理论上仍可能得到"新清单 + 旧文件"的不一致；下次部署会用 `verify_existing_set()` 判为损坏并拒绝，不会静默通过。要彻底闭环需要在脚本里用 `debugfs`/`fsync(2)` 之类的手段，当前 sh 环境没有。
2. **冲突语义偏保守**：现网 `tg_supervisor.rc` 与原始不一致时一律拒绝（哪怕差异是无害的），必须显式 `TG_FORCE_REBAK=1`。这是有意的——回滚材料的价值在于"一定是原始那份"。
3. **staging 目录残留**：正常路径会 `rm -rf`，异常断电可能留下 `$BAK/.staging_*`；它不参与校验，可人工删除。
4. **回滚仍需重启**才生效（init 在启动时读 `.rc`），脚本只在读回阶段打印这一点，未做自动重启（沿用已验收行为）。

## 7. 复现命令

```sh
# 主机
bash tests/t9_02r2_backup_transaction_test.sh      # 80 checks
bash tests/t9_02r_boot_scripts_test.sh             # 41 checks（回归）

# 设备（root）
su 0 sh -c 'sh /data/local/tmp/t9/deploy_boot_rc.sh'            # 幂等重复部署
su 0 sh -c 'sh /data/local/tmp/t9/repair_rc_manifest.sh <hash>' # 仅在清单损坏时需要
su 0 sh -c 'sh /data/local/tmp/t9/rollback_boot_rc.sh'          # 真回滚（会改启动配置）
```
