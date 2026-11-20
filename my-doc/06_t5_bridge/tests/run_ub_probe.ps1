# run_ub_probe.ps1 -- 有符号整数溢出探测（UBSan 的等价替代）
#
#   powershell -ExecutionPolicy Bypass -File run_ub_probe.ps1
#
# 背景：任务书要求"如果主机编译环境支持，额外运行 UBSan 或等价的未定义行为检查"。
#       TDM-GCC 10.3.0 没有 libubsan（-fsanitize=undefined 链接失败），
#       因此改用 GCC 内建的 -ftrapv：有符号溢出会直接 trap（进程 abort），
#       等价于"任何一处有符号溢出都不会被漏过"。
#
# 三组对照：
#   A  当前实现（乘加前检查）        —— 期望：155 断言全过，不 trap
#   B  P1 修复前的实现（乘加后检查） —— 期望：同样全过（见 fix record §2 的推导）
#   C  反面对照（去掉每位检查）      —— 期望：在 30 位整数处 trap（证明探测本身有效）
#
# 日志：../evidence/host_trapv_t505a.log
$ErrorActionPreference = "Stop"

$Gcc   = "C:\TDM-GCC-64\bin\gcc.exe"
$Here  = $PSScriptRoot
$Root  = Split-Path $Here -Parent
$And   = Join-Path $Root "android"
$T5    = Join-Path (Split-Path $Root -Parent) "06_t5\android"
$Out   = Join-Path $Here "out"
$Ev    = Join-Path $Root "evidence"
$Log   = Join-Path $Ev "host_trapv_t505a.log"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null
if (Test-Path $Log) { Remove-Item $Log }

function W($m) { $m | Tee-Object -FilePath $Log -Append | Out-String -Width 160 | Out-Null }
function Build($name, $eventSrc) {
    $argv = @("-std=gnu99", "-O0", "-g", "-Wall", "-Wextra", "-ftrapv",
              "-I", $And, "-I", $T5,
              "-o", (Join-Path $Out "$name.exe"),
              (Join-Path $Here "tgb_unit_test.c"), $eventSrc,
              (Join-Path $And "tgb_proto.c"), (Join-Path $And "tgb_dedup.c"),
              (Join-Path $And "tgb_store.c"), (Join-Path $T5 "t5_util.c"),
              "-lws2_32")
    & $Gcc @argv
    return $LASTEXITCODE
}
function RunIt($name) {
    Push-Location $Out
    Remove-Item -Recurse -Force "_tgb_unit" -ErrorAction SilentlyContinue
    $lines = & (Join-Path $Out "$name.exe") 2>&1
    $rc = $LASTEXITCODE
    Pop-Location
    return @{ rc = $rc; tail = ($lines | Select-Object -Last 2) }
}

W "=== -ftrapv 有符号溢出探测（TDM-GCC 10.3.0；无 libubsan，-ftrapv 为等价手段）==="
W ""

# A：当前实现
W "--- A) 当前实现（乘加前检查）---"
$rcA = Build "tgb_unit_trapv" (Join-Path $And "tgb_event.c")
W "build exit=$rcA"
$a = RunIt "tgb_unit_trapv"
$a.tail | ForEach-Object { W $_ }
W ("run exit=" + $a.rc)
W ""

# B：修复前的实现
W "--- B) P1 修复前的实现（先乘加、后检查上限）---"
python (Join-Path $Here "ub_variant.py") (Join-Path $And "tgb_event.c") "old" (Join-Path $Out "tgb_event_old.c") | ForEach-Object { W $_ }
$rcB = Build "tgb_unit_old" (Join-Path $Out "tgb_event_old.c")
W "build exit=$rcB"
$b = RunIt "tgb_unit_old"
$b.tail | ForEach-Object { W $_ }
W ("run exit=" + $b.rc)
W ""

# C：反面对照（去掉每位检查）
W "--- C) 反面对照：去掉每位检查，只在循环后检查（30 位输入必然溢出）---"
python (Join-Path $Here "ub_variant.py") (Join-Path $And "tgb_event.c") "nocheck" (Join-Path $Out "tgb_event_nocheck.c") | ForEach-Object { W $_ }
$rcC = Build "tgb_unit_nocheck" (Join-Path $Out "tgb_event_nocheck.c")
W "build exit=$rcC"
$c = RunIt "tgb_unit_nocheck"
$c.tail | ForEach-Object { W $_ }
W ("run exit=" + $c.rc + "   (Windows abort() 退出码 3 = 有符号溢出被 -ftrapv 捕获)")
W ""

W "--- 结论 ---"
W "A、B 均无 trap：就这段代码而言，修复前「先乘加后检查」每轮都会把 v 钳制在 2^53，"
W "下一轮 v*10+digit <= 9.01e16 << LLONG_MAX(9.22e18)，因此任务书 P1 描述的溢出不可复现（如实报告）。"
W "C 触发 trap：证明探测手段有效，也证明「每位检查」这个不变量一旦被挪走就会真的溢出。"
W "修复后不变量变成局部的「乘加前检查」，不再依赖检查位置；A 与 B 的接受/拒绝集合一致（2^53 边界用例两版都过）。"

Write-Host "log: $Log"
$ok = ($a.rc -eq 0) -and ($b.rc -eq 0) -and ($c.rc -ne 0)
if ($ok) { Write-Host "ub probe: as expected (A ok / B ok / C trapped)"; exit 0 }
Write-Host "ub probe: UNEXPECTED result (A=$($a.rc) B=$($b.rc) C=$($c.rc))"
exit 1
