.class final Lcom/uc/sandboxExport/i;
.super Lcom/uc/sandboxExport/IChildProcessSetup$Stub;
.source "U4Source"


# instance fields
.field final synthetic a:Lcom/uc/sandboxExport/SandboxedProcessService;


# direct methods
.method constructor <init>(Lcom/uc/sandboxExport/SandboxedProcessService;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-direct {p0}, Lcom/uc/sandboxExport/IChildProcessSetup$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final preSetupConnection(Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 8

    .line 59
    iget-object v0, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->a(Lcom/uc/sandboxExport/SandboxedProcessService;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->b(Lcom/uc/sandboxExport/SandboxedProcessService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "preSetupConnection, mLastIntent has not extras"

    .line 1085
    invoke-static {v1, v0, v3, v2}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    iget-object v0, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->a(Lcom/uc/sandboxExport/SandboxedProcessService;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->c(Lcom/uc/sandboxExport/SandboxedProcessService;)V

    :cond_0
    const-string v0, "dex.fd"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    const-string v3, "lib.fd"

    .line 66
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    const-string v4, "crash.fd"

    .line 67
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 69
    iget-object v4, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-static {v4}, Lcom/uc/sandboxExport/SandboxedProcessService;->b(Lcom/uc/sandboxExport/SandboxedProcessService;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string v7, "preSetupConnection, dex fd: %s"

    invoke-static {v4, v7, v5}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    .line 73
    array-length v4, v3

    new-array v4, v4, [Landroid/os/ParcelFileDescriptor;

    .line 74
    array-length v5, v3

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 78
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-virtual {v3, v0, v4, p1}, Lcom/uc/sandboxExport/SandboxedProcessService;->init(Landroid/os/ParcelFileDescriptor;[Landroid/os/Parcelable;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    iget-object p1, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-static {p1}, Lcom/uc/sandboxExport/SandboxedProcessService;->b(Lcom/uc/sandboxExport/SandboxedProcessService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "preSetupConnection done."

    .line 2085
    invoke-static {v1, p1, v0, v2}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iget-object p1, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-static {p1}, Lcom/uc/sandboxExport/SandboxedProcessService;->d(Lcom/uc/sandboxExport/SandboxedProcessService;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 80
    iget-object v0, p0, Lcom/uc/sandboxExport/i;->a:Lcom/uc/sandboxExport/SandboxedProcessService;

    invoke-static {v0}, Lcom/uc/sandboxExport/SandboxedProcessService;->b(Lcom/uc/sandboxExport/SandboxedProcessService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preSetupConnection.init exception"

    invoke-static {v0, v1, p1}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    throw p1
.end method
