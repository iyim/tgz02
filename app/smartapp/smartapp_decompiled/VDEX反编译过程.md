# smartapp.vdex 反编译过程记录

本文件说明 `smartapp.apk` 为什么没有 smali、代码是怎么从 `oat/arm/smartapp.vdex` 中恢复出来的、每一步用了什么参数、哪些地方不完美。
文档本身即位于产物的同级目录（`system/app/smartapp/smartapp_decompiled/`）。

- 记录日期：2026-11-18
- 执行环境：Windows 10/11 + PowerShell 7、Python 3.11、OpenJDK 21、apktool 3.0.2（内含 smali/baksmali 3.x）
- 过程脚本：`D:\tgz02\OS\_analysis\vdex_dequicken.py`（核心还原）、`D:\tgz02\OS\_analysis\vdex-extract.ps1`（初版裸提取）
- 参考实现：`anestisb/vdexExtractor` 的 `src/vdex/vdex_backend_010.c`、`src/vdex/vdex_decompiler_010.c`、`src/dex_instruction_list.h`（本地副本在 `D:\tgz02\OS\_analysis\vdexsrc\`）

---

## 1. 输入与输出

### 输入（原厂文件，未修改）

| 文件 | 大小 | SHA-256 |
|---|---|---|
| `oat/arm/smartapp.vdex` | 28,902,724 | `c86ef9dcf2494180d9875ff96261f908adf5e875306a0673e9f825a345168028` |
| `oat/arm/smartapp.odex` | 569,824 | `656f5769eb3af9a8281b21c938bee5b466d873f8919b8ecad313a48216dba48c` |
| `smartapp.apk` | 25,336,386 | `1506719b63a3a5592731f80d1eca39db05537388f515f5ff69ea08b69093da00` |

> `smartapp.apk` 内部**不存在 `classes*.dex`**（这是本机所有阿里核心应用的共同特征：代码已被预先 dexopt，dex 只存在于 vdex/oat 里）。因此 apktool 直接解包只能得到 `AndroidManifest.xml` / `res/` / `assets/`，`smali/` 为空。

### 输出（本目录）

| 产物 | 说明 |
|---|---|
| `smali/` | `classes.dex` 反汇编结果 |
| `smali_classes2/` | `classes2.dex` 反汇编结果 |
| `smali_classes3/` | `classes3.dex` 反汇编结果 |
| `smali_classes4/` | `classes4.dex` 反汇编结果 |
| `dex/classes*.dex` | 从 vdex 还原并修复校验和的 4 个 dex（25.5 MB，可直接喂 jadx / dex2jar / baksmali） |

| dex | 大小 | SHA-256（还原后） |
|---|---|---|
| `classes.dex` | 9,726,492 | `5683c88658be4ef934cc2299ace7826ab80b6900d2be97938ef777e2ebbdc768` |
| `classes2.dex` | 5,045,328 | `091a598f5b02285c840ff4e40dfcd4e31b6cb730703fc46d6a9a1d957d19f66a` |
| `classes3.dex` | 6,182,104 | `3264143ec0bfbe49217c500f6001611ea7ee50a11f3bbcada6a0af13c95dd6cf` |
| `classes4.dex` | 5,817,564 | `8fe53fdfbbdb021240aba9d0f18777d5b2dd332ac6fed171db3aebee252875ef` |

> 注意：上述 SHA-256 是**本项目还原后**的 dex 指纹，不是 Google 或阿里的原始指纹（原始签名已随 quickening 改变，见 §5）。

---

## 2. vdex010 的实际布局（本机实测）

文件头 8 字节为 `76 64 65 78 30 31 30 00` → `"vdex010\0"`，即 Android 9（Pie）的 vdex 格式，不是 Oreo 的 006。

实测字段：

| 偏移 | 字段 | 本机值 | 说明 |
|---|---|---|---|
| 0x00 | magic | `vdex` | |
| 0x04 | version | `010\0` | vdex010 |
| 0x08 | numberOfDexFiles | `4` | |
| 0x0C | dexSize | `26,771,488` | 4 个 dex 的合计字节数 |
| 0x10 | verifierDepsSize | `155,368` | 校验依赖区 |
| 0x14 | quickeningInfoSize | `1,975,828` | 关键区：quickening 数据 |
| 0x18 | checksums[4] | 16 字节 | 每个 dex 一个 `u32` location checksum（注意：**不是** dex 文件头里的 adler32） |
| 0x28 | DEX[0] | `dex\n035\0` | 第一个 dex 从这里开始 |
| 0x946A44 | DEX[1] | | 0x28 + 9,726,492 |
| 0xE16694 | DEX[2] | | |
| 0x13FBB6C | DEX[3] | | |
| 0x19ADF30 | QuickeningInfo | 1,975,828 字节 | `0x28 + 26,771,488 + 155,368` |

即文件结构：

```
[24 字节头][4×4 字节 location checksum][dex0][dex1][dex2][dex3][verifier deps][quickening info]
```

dex 各自带标准 112 字节 dex 头，所以切片只需按每个 dex 头的 `file_size`（偏移 +0x20）走。

---

## 3. 问题：dex 被 quickened

直接切出来的 dex 用 `adler32` 复核会**全部不匹配**：

| dex | 头内存储 checksum | 实测 adler32 |
|---|---|---|
| classes.dex | `0x660D0DC2` | `0xE6EFAA00` |
| classes2.dex | `0xCE1DA921` | `0x626AE8FE` |
| classes3.dex | `0xB59AAE44` | `0xC46B6A32` |
| classes4.dex | `0x02F85FBD` | `0x7E2FBA2D` |

原因是 dex2oat 在生成 oat 时把部分指令的**操作数换成了运行时偏移**（vtable index / field offset），这种"quickened" 形态只对 ART 解释器/编译器有意义，baksmali 会：

1. 先因为 checksum 不符拒绝解析（可以重算绕过）；
2. 即使绕过，遇到 quickened opcode（0xE3–0xF2、0x73）会当作非法指令报错。

所以必须按 quickening info **逐条还原**。

---

## 4. quickening info 的结构（实测）

区尾部是"每个 dex 一个 `u32` 索引"：

```
quickening_indices = [1191892, 1486324, 1637060, 1822044]
```

- 第 i 个 dex 的条目表 = `quicken_start + indices[i]` 起，到 `indices[i+1]`（最后一个 dex 到 `quicken_start + quickeningInfoSize - 4*N`）止；
- 每个条目 8 字节：`u32 code_item_offset` + `u32 data_offset`（相对 `quicken_start`）；**条目数组不保证按 code_item 顺序排列**（实测 `entries != sorted(entries)`），所以必须按 `code_item_offset` 建索引查表，不能顺序消费；
- `data_offset` 处：`u32 size`（字节数）+ `size/2` 个 `u16` 值，按**指令在 code_item 中的出现顺序**排列。

本机条目数与数据量：

| dex | quickening 条目（=有改动的 code_item 数） |
|---|---|
| classes.dex | 36,804 |
| classes2.dex | 18,842 |
| classes3.dex | 23,123 |
| classes4.dex | 19,221 |
| **合计** | **97,990** |

### 还原规则

| quickened opcode | 原名 | 还原为 | 消耗值 | 写回方式 |
|---|---|---|---|---|
| `0xE3` | iget-quick | `0x52` iget | 1（字段索引） | `unit[1] = index`，保留 `vA` |
| `0xE4` | iget-wide-quick | `0x53` iget-wide | 1 | 同上 |
| `0xE5` | iget-object-quick | `0x54` iget-object | 1 | 同上 |
| `0xEF` | iget-boolean-quick | `0x55` | 1 | 同上 |
| `0xF0` | iget-byte-quick | `0x56` | 1 | 同上 |
| `0xF1` | iget-char-quick | `0x57` | 1 | 同上 |
| `0xF2` | iget-short-quick | `0x58` | 1 | 同上 |
| `0xE6` | iput-quick | `0x59` | 1 | 同上 |
| `0xE7` | iput-wide-quick | `0x5A` | 1 | 同上 |
| `0xE8` | iput-object-quick | `0x5B` | 1 | 同上 |
| `0xEB` | iput-boolean-quick | `0x5C` | 1 | 同上 |
| `0xEC` | iput-byte-quick | `0x5D` | 1 | 同上 |
| `0xED` | iput-char-quick | `0x5E` | 1 | 同上 |
| `0xEE` | iput-short-quick | `0x5F` | 1 | 同上 |
| `0xE9` | invoke-virtual-quick | `0x6E` invoke-virtual | 1（方法索引） | `unit[1] = index`，保留寄存器列表 |
| `0xEA` | invoke-virtual/range-quick | `0x74` | 1 | 同上 |
| `0x73` | return-void-no-barrier | `0x0E` return-void | 0 | 只改 opcode |

覆盖率是判定还原是否正确的关键指标：**97,990 个条目中有 97,368 个（99.4%）的"消耗值个数"与指令流里实际遇到的 quickened 指令数完全相等**，这证明上面这套映射对绝大多数方法成立。

---

## 5. 算法（核心 40 行，Python 实现见 `_analysis/vdex_dequicken.py`）

```python
# 1) 定位各段
n, dex_size, deps, quick = unpack('<IIII', hdr, 8)
dex_start   = 24 + 4*n
quick_start = dex_start + dex_size + deps
indices     = [u32(quick_start + quick - 4*n + 4*i) for i in range(n)]

# 2) 每个 dex：按条目表逐 code_item 还原
for e in range((end - start) // 8):
    code_off = u32(quick_start + start + e*8)
    data_off = u32(quick_start + start + e*8 + 4)
    vals     = u16[quick_start + data_off + 4 : ... ][:u32(quick_start+data_off)//2]
    # 3) 遍历 code_item 的 insns（宽度表来自 dex_instruction_list.h 的 format→width）
    insns_size = u32(dex, code_off + 12)
    i = 0; vi = 0
    while i < insns_size:
        unit = u16(dex, code_off + 16 + 2*i); op = unit & 0xFF
        if op == 0 and unit in (0x0100, 0x0200, 0x0300):   # switch/array payload，按长度跳过
            i += payload_width; continue
        if op == 0:            vi += 1; i += 1; continue    # 被转为 nop 的 check-cast（见 §6）
        if op == 0x73:         opcode = 0x0E; i += 1; continue
        if op in FIELD_MAP:    unit[1] = vals[vi]; vi += 1; opcode = FIELD_MAP[op]; i += 2; continue
        if op in INVOKE_MAP:   unit[1] = vals[vi]; vi += 1; opcode = INVOKE_MAP[op]; i += 3; continue
        i += WIDTH[op]

# 4) 修校验和与签名
struct.pack_into('<I', dex, 8, zlib.adler32(dex[12:]) & 0xFFFFFFFF)
dex[12:32] = sha1(dex[32:])
```

要点：

1. **指令宽度表**必须准（22c=2、35c/3rc=3、31t/31i=3、51l=5、45cc/4rcc=4 …），否则一条宽度错就整段错位；宽度表直接从 `dex_instruction_list.h` 的 `format` 字段解析得到。
2. **payload 伪指令**（`0x0100` packed-switch / `0x0200` sparse-switch / `0x0300` array-data）不是指令，必须按其长度整段跳过，否则会把它当成 nop 消费掉 quickening 值。
3. **条目表的 data 是"按指令出现顺序"排列的一维数组**，不是 `(偏移, 值)` 对。

---

## 6. 已知精度损失（必须知道）

### 6.1 check-cast 无法还原（13,022 处）

quickening 把 `check-cast vA, type@T`（2 个 code unit）换成了 `nop`（实测全部是 `0x0000`，vA 也没有保留在高字节），**原始寄存器与类型索引没有以可逆形式保存在 quickening 数据里**。

验证过程（四种候选模型，逐条目比对"消耗值个数 == 实际 quickened 指令数"）：

| 模型 | 完全匹配 | 有剩余值 | 说明 |
|---|---|---|---|
| nop 不消耗 | 92,872 | 5,118 | 差 |
| nop 消耗 1（采用） | **97,368** | 622 | 最佳 |
| nop 消耗 1 + 按 2 unit 走 | 92,991 | 4,787（另有 212 越界） | 差 |
| nop 消耗 2 | 95,855 | 2,135 | 差 |

又对 242 个"nop + 非 0xFFFF 值"的样本做相关性检验：假设"紧随其后的 unit 就是类型索引"，命中只有 22 个（9%），远低于随机期望，故判定不可逆。

**结果**：13,022 处原本的 `check-cast` 在 smali 里显示为 `nop`。
影响：方法的控制流、字段/方法调用、字符串、异常表全部正确，只是少了这一句类型检查（Java 层的强制转换语义丢失），不影响阅读与接口复刻。

统计到的还原量：

| 项目 | 数量 |
|---|---|
| `iget*/iput*` 还原 | 226,197 |
| `invoke-virtual(_range)` 还原 | 251,004 |
| `return-void-no-barrier → return-void` | 50,064 |
| 判定为"普通 nop"（值为 0xFFFF） | 498 |
| 判定为"被 nop 化的 check-cast"（值 ≠ 0xFFFF） | **13,022（降级）** |

### 6.2 622 个 code_item 数据对不齐

97,990 个条目中有 **622 个**的 quickening 数据与指令流无法完全对齐（多为 `类初始化 / filled-new-array` 生成代码，指令流出现异常对位）。处理方式：对这些条目，把其中仍残留的 quickened 指令整段清零为 nop（宽度不变，dex 依然合法），因此这些方法会少 1~2 条指令。

分布：

| dex | 完全还原 | 降级（清零） |
|---|---|---|
| classes.dex | 36,517 | 287 |
| classes2.dex | 18,727 | 115 |
| classes3.dex | 22,955 | 168 |
| classes4.dex | 19,169 | 52 |
| **合计** | **97,368 (99.4%)** | **622 (0.6%)** |

### 6.3 结论

- 这份 smali 适合**阅读、检索、复刻接口与业务逻辑**（`com/yunos/tv/alitvasr/IAliTVASR.smali` 等 AIDL 完全干净）；
- **不适合**直接 `apktool b` 重打包回设备当等价 dex：13,022 处 check-cast 缺失会让校验器（verifier）在部分方法上报错，且签名早已不是原厂。

---

## 7. 合成 APK 与反汇编

apktool 只认 APK 里的 `classes*.dex`，所以把还原后的 dex 塞进原 APK 的副本：

```powershell
Copy-Item smartapp.apk work\smartapp_code.apk
# 用 System.IO.Compression 以 Update 模式写入 4 个 entries：
#   classes.dex / classes2.dex / classes3.dex / classes4.dex
apktool.cmd d -f -o work\decoded work\smartapp_code.apk
```

然后只取 `smali*` 四个目录，连同 `dex/` 一起并入本目录（`res/`、`assets/` 沿用第一次 `--no-src` 解包的结果，避免重复）。

最终规模：

| 指标 | 值 |
|---|---|
| smali 文件 | **22,874** |
| smali 目录 | 4（`smali`、`smali_classes2..4`） |
| baksmali 报错 | **0**（4 个 dex 全部成功） |
| 本目录总大小 | 235.2 MB |

---

## 8. 复现步骤

```powershell
# 1) 还原 dex（输出到 _analysis\vdex-dex）
python D:\tgz02\OS\_analysis\vdex_dequicken.py

# 2) 合成带 dex 的临时 APK
#    见上节；或用 zip 工具把 4 个 dex 以 store 方式加入 smartapp.apk 的副本

# 3) 反汇编
D:\apk\rea-mcp-proxy\tools\apktool.cmd d -f -o <out> <smartapp_code.apk>

# 4) 把 smali* 与 dex/ 拷入本目录
```

校验 adler32（应等于本目录 `dex/` 里的文件头值，因为已重算）：

```python
python -c "import zlib,sys;d=open(sys.argv[1],'rb').read();print(hex(zlib.adler32(d[12:])&0xffffffff))" dex/classes.dex
```

---

## 9. 验证清单

| 验证项 | 方法 | 结果 |
|---|---|---|
| 4 个 dex 头合法 | magic `dex\n035\0`、header_size `0x70`、endian `0x12345678` | 通过 |
| dex 能被 baksmali 完整解析 | apktool 3.0.2 反汇编 | 4/4 成功，0 报错 |
| AIDL 是否正确 | 检查 `smali_classes4/com/yunos/tv/alitvasr/IAliTVASR.smali` | 方法签名 `clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;` 等齐全 |
| 类数量是否合理 | 与 vdex 中 class_defs 计数对照 | 一致 |
| 资源是否受影响 | `res/`、`assets/`、`AndroidManifest.xml` 未改动 | 与第一次解包一致 |

---

## 10. 术语速查

| 术语 | 含义 |
|---|---|
| vdex | ART 在 O/P 上把 dex 与"校验依赖 + quickening 信息"打包成的文件，随 oat 一起预置 |
| quickening | dex2oat 把 `iget/iput/invoke-virtual/check-cast` 的操作数替换成运行时偏移（vtable/field offset）的优化 |
| quickening info | vdex 尾部的一张表，记录每个 code_item 被替换前的原始操作数 |
| code_item | dex 中一个方法的字节码块（寄存器数、insns 数组、try/catch） |
| location checksum | vdex 头部每个 dex 一个 `u32`，用于 ART 判断 oat 与 dex 是否配套；**与 dex 头 adler32 无关** |
