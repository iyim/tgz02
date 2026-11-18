.class public Lcom/taobao/uc/service/GpuProcessService0;
.super Lcom/uc/sandboxExport/SandboxedProcessService;
.source "GpuProcessService0.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/uc/sandboxExport/SandboxedProcessService;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/uc/sandboxExport/SandboxedProcessService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 14
    invoke-super {p0}, Lcom/uc/sandboxExport/SandboxedProcessService;->onCreate()V

    const-string v0, "GPU_PROCESS"

    const-string v1, "start gpu process"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/uc/sandboxExport/SandboxedProcessService;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
