.class public Lcom/uc/webview/export/internal/setup/ao;
.super Lcom/uc/webview/export/internal/setup/bf;
.source "U4Source"


# static fields
.field private static b:Ljava/lang/String; = "ao"

.field private static c:J = 0x1L

.field private static d:J = 0x2L

.field private static e:J = 0x4L

.field private static f:J = 0x8L

.field private static g:J = 0x10L

.field private static h:J = 0x20L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "VERIFY_POLICY"

    const-string v1, ".run stat: "

    .line 28
    sget-wide v2, Lcom/uc/webview/export/internal/setup/ao;->d:J

    :try_start_0
    const-string v4, "csc_ssrc"

    .line 30
    invoke-static {v4}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ao;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "csc_ssthi"

    .line 33
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    sget-object v0, Lcom/uc/webview/export/internal/setup/ao;->b:Ljava/lang/String;

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
    const-string v4, "o_local_dir"

    .line 43
    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/setup/ao;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ao;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 47
    :cond_1
    sget-object v5, Lcom/uc/webview/export/internal/setup/ao;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".run locationDecDir: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "ucmKrlDir"

    const-string v7, "ucmCfgFile"

    const-string v8, "resFilePath"

    const-string v9, "soFilePath"

    const-string v10, "dexFilePath"

    const/4 v11, 0x0

    if-nez v5, :cond_2

    .line 50
    :try_start_2
    sget-wide v2, Lcom/uc/webview/export/internal/setup/ao;->e:J

    const-string v0, "csc_ssld"

    .line 51
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v10, v11}, Lcom/uc/webview/export/internal/setup/ao;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 53
    invoke-virtual {v0, v9, v11}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 54
    invoke-virtual {v0, v8, v11}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "ucmLibDir"

    .line 55
    invoke-virtual {v0, v5, v11}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 56
    invoke-virtual {v0, v7, v11}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 57
    invoke-virtual {v0, v6, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 58
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/bf;->run()V

    goto/16 :goto_2

    :cond_2
    const-string v4, "e_delay_search_core_file"

    .line 60
    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/setup/ao;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v4

    .line 61
    sget-object v5, Lcom/uc/webview/export/internal/setup/ao;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ".run delaySeareCoreFileCB: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_7

    const-string v4, "o_dec_file"

    .line 70
    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/setup/ao;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 71
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ao;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 74
    :cond_3
    sget-object v5, Lcom/uc/webview/export/internal/setup/ao;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ".run sdCoreDecFilePath: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 79
    sget-wide v2, Lcom/uc/webview/export/internal/setup/ao;->f:J

    .line 81
    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/ao;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v12, "sc_vrfplc"

    .line 82
    invoke-static {v12}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "sc_vrfaha"

    .line 83
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const v14, -0x3fffff81    # -2.0000303f

    if-eqz v13, :cond_4

    .line 84
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v5, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_4
    const-string v13, "sc_vrfahs"

    .line 85
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 86
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v5, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v12, 0x7fffffff

    and-int/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_5
    :goto_1
    const-string v12, "csc_sssd"

    .line 89
    invoke-static {v12}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 90
    new-instance v12, Lcom/uc/webview/export/internal/setup/b;

    invoke-direct {v12}, Lcom/uc/webview/export/internal/setup/b;-><init>()V

    .line 91
    invoke-virtual {v12, p0}, Lcom/uc/webview/export/internal/setup/b;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v12

    check-cast v12, Lcom/uc/webview/export/internal/setup/l;

    iget-object v13, p0, Lcom/uc/webview/export/internal/setup/ao;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    invoke-virtual {v12, v13}, Lcom/uc/webview/export/internal/setup/l;->setCallbacks(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v12

    check-cast v12, Lcom/uc/webview/export/internal/setup/l;

    iget-object v13, p0, Lcom/uc/webview/export/internal/setup/ao;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    invoke-virtual {v12, v13}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v12

    check-cast v12, Lcom/uc/webview/export/internal/setup/l;

    .line 94
    invoke-virtual {v12, v0, v5}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 95
    invoke-virtual {v0, v10, v11}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 96
    invoke-virtual {v0, v9, v11}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 97
    invoke-virtual {v0, v8, v11}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 98
    invoke-virtual {v0, v7, v11}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 99
    invoke-virtual {v0, v6, v11}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "ucmZipFile"

    .line 100
    invoke-virtual {v0, v5, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 103
    iput-object v11, p0, Lcom/uc/webview/export/internal/setup/ao;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ao;->resetCrashFlag()V

    .line 106
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :goto_2
    sget-object v0, Lcom/uc/webview/export/internal/setup/ao;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_6
    :try_start_3
    sget-wide v2, Lcom/uc/webview/export/internal/setup/ao;->g:J

    const-string v0, "csc_ssse"

    .line 111
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v4, 0xbce

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uc/webview/export/internal/setup/ao;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found uc core"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 63
    :cond_7
    sget-wide v2, Lcom/uc/webview/export/internal/setup/ao;->h:J

    const-string v0, "csc_ssdscf"

    .line 64
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 65
    invoke-interface {v4, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 66
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v4, 0xbdb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uc/webview/export/internal/setup/ao;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " delay search sdcard core file."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 117
    sget-object v4, Lcom/uc/webview/export/internal/setup/ao;->b:Ljava/lang/String;

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
