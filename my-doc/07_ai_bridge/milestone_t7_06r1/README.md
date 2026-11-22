# T7-06-R1 里程碑备份（设备现状快照）

生成时间：2026-11-22 14:12（设备时间）／本机 `D:\tgz02\OS\system\my-doc\07_ai_bridge\milestone_t7_06r1`
对应设备：TG-Z02 `AILABS_S1`，Android 8.1，`armeabi-v7a`，`192.168.1.9:5555`
对应仓库基线：`0906daa4`（本轮在工作区另有 3 处未提交改动，见 `DEPLOY.md` §9）

## 这个文件夹是什么

设备上**所有我们自己注入的程序、部署的脚本、运行配置和现场数据**的一比一副本。目的是下次改造前能对照/回滚，不至于手忙脚乱。

## 目录

| 路径 | 内容 |
|---|---|
| `packages/` | 从设备打的原始四个 tar.gz（可直接 `tar -xzf` 还原到 `/data/local/tmp`） |
| `t6/` | `/data/local/tmp/t6` 原样副本：`tg_injector`、`tg_supervisor`、`libtg_hook.so`、`libtg_dialog.so`、`talk.req`、`dialog.cfg`、init.rc 脚本、日志 |
| `t7/` | `/data/local/tmp/t7` 原样副本：`libtg_ttsguard.so`、`libtg_wakeinfo.so`、`run_t7_05.sh`、本轮全部诊断脚本、T7-04/T7-05 回滚备份 |
| `t5_bridge/` | `/data/local/tmp/t5_bridge` 原样副本：`tgb_bridge`、`ai_worker`、`tts_exec.dex`、`worker.conf`、`work/`（事件与标记）、`tts/`（播报队列与日志）、`secret/`（**key，已加 .gitignore，不要提交**） |
| `wake/` | 应用私有目录 `…/files/wake` 的副本（`wakeinfo.jsonl` / `wakeinfo.status`） |
| `host/bin/` | 主机侧编译产物（与设备上的同源二进制，方便免编译重部署） |
| `MANIFEST.sha256` | 除 `secret/deepseek_api_key` 外所有文件的 sha256（471 个） |
| `DEPLOY.md` | **部署文档**：架构、注入清单、脚本清单、部署步骤、验证、回滚、已知坑 |

## 快速还原（设备已 root）

```sh
adb push packages/m_t6.tar.gz     /sdcard/
adb push packages/m_t7.tar.gz     /sdcard/
adb push packages/m_bridge.tar.gz /sdcard/
adb push packages/m_wake.tar.gz   /sdcard/
adb shell su -c 'cd /data/local/tmp && tar -xzf /sdcard/m_t6.tar.gz && tar -xzf /sdcard/m_t7.tar.gz && tar -xzf /sdcard/m_bridge.tar.gz'
adb shell su -c 'tar -xzf /sdcard/m_wake.tar.gz -C /data/data/com.alibaba.ailabs.genie.smartapp/files'
adb shell su -c 'sh /data/local/tmp/t7/restore_full.sh'
```

注意：`worker.conf` 里的 `api_key_file` 指向 `secret/deepseek_api_key`，还原后确认该文件权限是 `0600`。
