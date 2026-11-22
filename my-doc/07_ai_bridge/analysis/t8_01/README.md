# analysis/t8_01 — libsmartbox.so 静态分析工作区（T8-01）

这里放的是**工具**，不放大文件。`libsmartbox.so`、`dynsym.txt`、`dis_full.txt` 都是可再生的，
不入库（合计约 40 MB）。

## 再生步骤（全部只读，不需要 root 写入设备）

```powershell
# 1) 从设备拉一份（只读）
adb -s 192.168.1.9:5555 shell "su -c 'sha256sum /system/app/smartapp/lib/arm/libsmartbox.so'"
adb -s 192.168.1.9:5555 pull /system/app/smartapp/lib/arm/libsmartbox.so libsmartbox.so
# 期望 sha256 = f6e3c3543ff6da5b59bf60b884b6ce4332897c75aa6b89b8dccc0c266df80940

# 2) 符号与整库反汇编（NDK 自带 binutils）
$b = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin"
& "$b\arm-linux-androideabi-readelf.exe" -sW libsmartbox.so | Out-File -Encoding utf8 dynsym.txt
& "$b\llvm-objdump.exe" -d --demangle libsmartbox.so > dis_full.txt

# 3) 证据摘录（关键符号 + 8 个函数的被调用 + 4 条反向调用者）
powershell -ExecutionPolicy Bypass -File make_evidence.ps1
```

## 两个脚本的原理

`.so` 已被 strip，只剩 `.dynsym`（5653 条，全是导出符号）。所有内部调用都走 PLT，
`objdump` 只能显示成 `<.plt+0xNNNN>`，没有名字。于是：

- `.rel.plt` 的顺序 = PLT 桩的顺序；`PLT0` 在 `0x8d39c`，桩从 `0x8d3b0` 开始，每桩 12 字节；
- 桩 k ↔ `.rel.plt[k]`，把 `bl` 的目标地址换算回桩序号即可拿到真实符号名。

- `plt_calls.ps1 -Start 0x… -Stop 0x…`：给定函数范围，按顺序列出**被调用**的真实符号；
- `who_calls.ps1 -Symbol <mangled>`：反向查**谁调用了**这个符号（扫 `dis_full.txt`，
  并回溯到所属函数头）。

## 已验证的对照点（防止映射出错）

- `SessionManager::onStream` @ `0x11353c`，19 条被调用里第一条就是
  `SessionProxy::onStream(int, const char*, u_char, u_char)`，与 T6 Hook 的实测行为一致；
- `SessionDispatch::onNlpResult` 的调用者只有 `SessionManager::exitTalk` 与
  `SessionProxy::onHandler` —— 正是文档里写的两条入口。

如果这两个对照点对不上，说明 `.rel.plt` 顺序假设失效，结论必须重做，不许直接引用。
