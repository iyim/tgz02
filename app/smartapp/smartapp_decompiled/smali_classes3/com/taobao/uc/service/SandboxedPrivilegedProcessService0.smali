.class public Lcom/taobao/uc/service/SandboxedPrivilegedProcessService0;
.super Lcom/uc/sandboxExport/SandboxedProcessService;
.source "SandboxedPrivilegedProcessService0.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/uc/sandboxExport/SandboxedProcessService;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/uc/sandboxExport/SandboxedProcessService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 12
    invoke-super {p0}, Lcom/uc/sandboxExport/SandboxedProcessService;->onCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 0

    .line 26
    invoke-super {p0}, Lcom/uc/sandboxExport/SandboxedProcessService;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
