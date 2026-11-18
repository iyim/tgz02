.class public Lcom/uc/webview/export/internal/setup/ap;
.super Lcom/uc/webview/export/internal/setup/bf;
.source "U4Source"


# static fields
.field private static b:Ljava/lang/String; = "ap"

.field private static c:J = 0x1L

.field private static d:J = 0x2L

.field private static e:J = 0x4L

.field private static f:J = 0x8L

.field private static g:J = 0x10L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/uc/webview/export/internal/setup/ap;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "VERIFY_POLICY"

    const-string v1, ".run stat: "

    .line 27
    sget-wide v2, Lcom/uc/webview/export/internal/setup/ap;->d:J

    :try_start_0
    const-string v4, "csc_scftc"

    .line 29
    invoke-static {v4}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    const-string v4, "0"

    const-string v5, "process_private_data_dir_suffix"

    .line 32
    invoke-static {v5}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    sget-wide v2, Lcom/uc/webview/export/internal/setup/ap;->g:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    sget-object v0, Lcom/uc/webview/export/internal/setup/ap;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    const-string v4, "success"

    .line 36
    new-instance v5, Lcom/uc/webview/export/internal/setup/at;

    invoke-direct {v5, p0}, Lcom/uc/webview/export/internal/setup/at;-><init>(Lcom/uc/webview/export/internal/setup/ap;)V

    invoke-virtual {p0, v4, v5}, Lcom/uc/webview/export/internal/setup/ap;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "exception"

    new-instance v6, Lcom/uc/webview/export/internal/setup/as;

    invoke-direct {v6, p0}, Lcom/uc/webview/export/internal/setup/as;-><init>(Lcom/uc/webview/export/internal/setup/ap;)V

    .line 43
    invoke-virtual {v4, v5, v6}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "setup"

    new-instance v6, Lcom/uc/webview/export/internal/setup/ar;

    invoke-direct {v6, p0}, Lcom/uc/webview/export/internal/setup/ar;-><init>(Lcom/uc/webview/export/internal/setup/ap;)V

    .line 55
    invoke-virtual {v4, v5, v6}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "switch"

    new-instance v6, Lcom/uc/webview/export/internal/setup/aq;

    invoke-direct {v6, p0}, Lcom/uc/webview/export/internal/setup/aq;-><init>(Lcom/uc/webview/export/internal/setup/ap;)V

    .line 64
    invoke-virtual {v4, v5, v6}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 71
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ap;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 72
    sget-object v5, Lcom/uc/webview/export/internal/setup/ap;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".run sdCoreDecFilePath: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 77
    sget-wide v2, Lcom/uc/webview/export/internal/setup/ap;->e:J

    .line 79
    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/ap;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "sc_vrfplc"

    .line 80
    invoke-static {v6}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sc_vrfaha"

    .line 81
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v8, -0x3fffff81    # -2.0000303f

    if-eqz v7, :cond_1

    .line 82
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v7, "sc_vrfahs"

    .line 83
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    :goto_1
    const-string v6, "csc_scfd"

    .line 87
    invoke-static {v6}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 88
    new-instance v6, Lcom/uc/webview/export/internal/setup/b;

    invoke-direct {v6}, Lcom/uc/webview/export/internal/setup/b;-><init>()V

    .line 89
    invoke-virtual {v6, p0}, Lcom/uc/webview/export/internal/setup/b;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/internal/setup/l;

    iget-object v7, p0, Lcom/uc/webview/export/internal/setup/ap;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    invoke-virtual {v6, v7}, Lcom/uc/webview/export/internal/setup/l;->setCallbacks(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/internal/setup/l;

    iget-object v7, p0, Lcom/uc/webview/export/internal/setup/ap;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    invoke-virtual {v6, v7}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/internal/setup/l;

    .line 92
    invoke-virtual {v6, v0, v5}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "dexFilePath"

    const/4 v6, 0x0

    .line 93
    invoke-virtual {v0, v5, v6}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "soFilePath"

    .line 94
    invoke-virtual {v0, v5, v6}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "resFilePath"

    .line 95
    invoke-virtual {v0, v5, v6}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "ucmCfgFile"

    .line 96
    invoke-virtual {v0, v5, v6}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "ucmKrlDir"

    .line 97
    invoke-virtual {v0, v5, v6}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "ucmZipFile"

    .line 98
    invoke-virtual {v0, v5, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v4, "scst_flag"

    const/4 v5, 0x1

    .line 99
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v4, "bo_enable_load_class"

    const/4 v5, 0x0

    .line 100
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 103
    iput-object v6, p0, Lcom/uc/webview/export/internal/setup/ap;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ap;->resetCrashFlag()V

    .line 106
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    sget-object v0, Lcom/uc/webview/export/internal/setup/ap;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_3
    :try_start_2
    sget-wide v2, Lcom/uc/webview/export/internal/setup/ap;->f:J

    const-string v0, "csc_scfe"

    .line 111
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v4, 0xbdc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uc/webview/export/internal/setup/ap;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found uc core"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 116
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    sget-object v0, Lcom/uc/webview/export/internal/setup/ap;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_2
    sget-object v4, Lcom/uc/webview/export/internal/setup/ap;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
