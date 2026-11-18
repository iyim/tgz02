.class public final Lcom/uc/webview/export/internal/setup/ay;
.super Lcom/uc/webview/export/internal/setup/l;
.source "U4Source"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/l;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "SystemSetupTask"

    const-string v2, "<init>"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, "SystemSetupTask"

    const-string v1, "run"

    .line 26
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "CONTEXT"

    .line 30
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ay;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "setup"

    .line 35
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ay;->callback(Ljava/lang/String;)V

    const-string v0, "load"

    .line 36
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ay;->callback(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 38
    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->f(I)V

    .line 39
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ay;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;-><init>(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;ZZLcom/uc/webview/export/internal/interfaces/UCMobileWebKit;IZI)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ay;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    const-string v0, "init"

    .line 41
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ay;->callback(Ljava/lang/String;)V

    const-string v0, "switch"

    .line 42
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ay;->callback(Ljava/lang/String;)V

    const-string v0, "swv_spv"

    .line 44
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    return-void
.end method
