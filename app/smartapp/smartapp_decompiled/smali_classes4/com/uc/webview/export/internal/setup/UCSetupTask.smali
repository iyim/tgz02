.class public abstract Lcom/uc/webview/export/internal/setup/UCSetupTask;
.super Lcom/uc/webview/export/internal/setup/BaseSetupTask;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Lcom/uc/webview/export/internal/setup/UCSetupTask<",
        "TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;CA",
        "LLBACK_TYPE:Lcom/uc/webview/export/internal/setup/UCSetupTask<",
        "TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;>",
        "Lcom/uc/webview/export/internal/setup/BaseSetupTask<",
        "TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

.field private static d:Lcom/uc/webview/export/internal/setup/UCSetupTask;

.field private static e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

.field private static f:I

.field private static g:Z

.field private static h:Z

.field protected static final sTotalSetupTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/UCSetupTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

.field private c:Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    const/4 v0, 0x1

    .line 50
    sput-boolean v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->g:Z

    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->h:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;-><init>()V

    .line 1479
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    monitor-enter v0

    .line 1480
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->classLoader:Ljava/lang/ClassLoader;

    :goto_0
    if-nez v0, :cond_1

    .line 113
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    .line 115
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 1

    .line 492
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->d:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-object v0
.end method

.method public static declared-synchronized getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 4

    const-class v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/uc/webview/export/internal/setup/bv;

    sget v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-boolean v3, Lcom/uc/webview/export/internal/setup/UCSetupTask;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bv;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    const-string v2, "start"

    new-instance v3, Lcom/uc/webview/export/internal/setup/bu;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/bu;-><init>()V

    .line 84
    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bv;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    const-string v2, "die"

    new-instance v3, Lcom/uc/webview/export/internal/setup/bt;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/bt;-><init>()V

    .line 89
    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 97
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
    .locals 1

    .line 105
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    return-object v0
.end method

.method public static isSetupThread()Z
    .locals 1

    .line 119
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->inThread()Z

    move-result v0

    return v0
.end method

.method public static resumeAll()V
    .locals 3

    .line 123
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 124
    :goto_0
    :try_start_0
    sget-object v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 125
    sget-object v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->resume()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected static setEnableRootTaskCreateThread(Ljava/lang/Boolean;)V
    .locals 0

    .line 488
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->g:Z

    return-void
.end method

.method protected static setRootTaskPriority(I)V
    .locals 0

    .line 485
    sput p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->f:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected final getCrashCode()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ah$a;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object v0

    .line 1118
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ah;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    return-object v0
.end method

.method public final getRepairInfo()Lcom/uc/webview/export/internal/setup/UCMRepairInfo;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->c:Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

    return-object v0
.end method

.method protected getSetupCrashImprover(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;
    .locals 1

    .line 56
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    .line 60
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/ah$a;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object p1

    return-object p1
.end method

.method protected resetCrashFlag()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ah$a;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/ah;->a()V

    :cond_0
    return-void
.end method

.method protected setDefault(Lcom/uc/webview/export/internal/setup/UCSetupTask;)V
    .locals 0

    .line 496
    sput-object p1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->d:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected final setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    return-void
.end method

.method protected final setRepairInfo(Lcom/uc/webview/export/internal/setup/UCMRepairInfo;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->c:Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

    return-void
.end method

.method protected final setTotalLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 0

    .line 101
    sput-object p1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected setupGlobalOnce()V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "UCSetupTask"

    const-string v2, "setupGlobalOnce"

    .line 446
    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x124

    .line 448
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 449
    sget-boolean v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->h:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 451
    sput-boolean v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->h:Z

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 2195
    invoke-static {v3}, Lcom/uc/webview/export/internal/SDKFactory;->e(Landroid/content/Context;)V

    const-string v4, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    .line 2197
    invoke-virtual {v0, v4}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2199
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "0"

    :cond_1
    const-string v5, "process_private_data_dir_suffix"

    .line 2198
    invoke-static {v5, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2201
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, "sdk_international_env"

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2203
    invoke-static {v5, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2206
    :cond_2
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "WEBVIEW_POLICY"

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 2208
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2207
    invoke-static {v6, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2210
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "sdk_setup"

    invoke-static {v4, v7}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2212
    invoke-static {v7, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2215
    :cond_4
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v8, "MULTI_CORE_TYPE"

    invoke-static {v4, v8}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2217
    invoke-static {v8, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2220
    :cond_5
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v9, "AC"

    invoke-static {v4, v9}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2222
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2225
    :cond_6
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v10, "VIDEO_AC"

    invoke-static {v4, v10}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2227
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2230
    :cond_7
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v11, "grant_all_builds"

    invoke-static {v4, v11}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2231
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v12, "com.ucsdk.cts"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_a

    .line 2233
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2236
    :cond_a
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "conn_to"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_b

    .line 2238
    invoke-static {v4, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2241
    :cond_b
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v13, "read_to"

    invoke-virtual {v3, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    .line 2243
    invoke-static {v13, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2246
    :cond_c
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v14, "exact_old"

    invoke-static {v3, v14}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2248
    invoke-static {v14, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2251
    :cond_d
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v15, "exact_mod"

    invoke-static {v3, v15}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 2253
    invoke-static {v15, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2256
    :cond_e
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "wait_fallback_sys"

    invoke-virtual {v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_f

    const-string v12, "wait_fallback_sys"

    .line 2258
    invoke-static {v12, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2261
    :cond_f
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "ucPlayerRoot"

    invoke-virtual {v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 2263
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "ucPlayerRoot"

    invoke-static {v12, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2266
    :cond_10
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "ucPlayer"

    invoke-virtual {v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    goto :goto_3

    .line 2267
    :cond_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_3
    const-string v2, "ucPlayer"

    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2269
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "webview_multi_process"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_12

    .line 2271
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_4

    :cond_12
    const/4 v12, 0x0

    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "webview_multi_process"

    .line 2270
    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2273
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "webview_multi_process_fallback_timeout"

    .line 2274
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_13

    .line 2276
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_5

    :cond_13
    const/4 v12, 0x0

    :goto_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "webview_multi_process_fallback_timeout"

    .line 2275
    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2278
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "webview_multi_process_enable_service_speedup"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    goto :goto_6

    :cond_14
    const/4 v2, 0x0

    .line 2280
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v2, v3

    :goto_6
    const-string v3, "webview_multi_process_enable_service_speedup"

    .line 2279
    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2282
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "ucm_multi_process_enable_seccomp"

    .line 2283
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ucm_multi_process_enable_seccomp"

    .line 2282
    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2285
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "gpu_process_mode"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_15

    .line 2287
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_7

    :cond_15
    const/4 v12, 0x0

    :goto_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gpu_process_mode"

    .line 2286
    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v2, "startup_policy"

    .line 2290
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 2292
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v15

    const-string v15, "use DynamicSetting startup_policy="

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    move-object/from16 v16, v15

    .line 2294
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_17

    const/16 v3, 0x10

    .line 2296
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2299
    :cond_17
    :goto_8
    iget-object v12, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v3, "twd_watch_list"

    .line 2304
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2305
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 2306
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "use DynamicSetting twd_watch_list="

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v12, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v15, "twd_watch_list"

    invoke-virtual {v12, v15, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string v3, "twd_alarm_duration"

    .line 2309
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2310
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 2311
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "use DynamicSetting twd_alarm_duration="

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    iget-object v12, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v15, "twd_alarm_duration"

    invoke-virtual {v12, v15, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v3, "twd_dump_rate"

    .line 2314
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2315
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1a

    .line 2316
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "use DynamicSetting twd_dump_rate="

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    iget-object v12, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v15, "twd_dump_rate"

    invoke-virtual {v12, v15, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v3, "app_st_t"

    .line 2322
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_1b

    .line 2324
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v12, "st_el_b_uc_and_app"

    .line 2325
    invoke-static {v12, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1b
    const-string v3, "app_st_o"

    .line 2328
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1c

    const/4 v12, 0x0

    goto :goto_9

    .line 2330
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v12, "app_st_o"

    .line 2329
    invoke-static {v12, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2332
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getInitType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2333
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getInitType()Ljava/lang/String;

    move-result-object v3

    const-string v12, "bo_init_type"

    invoke-static {v12, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2336
    :cond_1d
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "VERIFY_POLICY"

    invoke-virtual {v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1e

    const-string v12, "VERIFY_POLICY"

    .line 2338
    invoke-static {v12, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 3181
    :cond_1e
    new-instance v3, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 3183
    invoke-static {}, Lcom/uc/webview/export/internal/utility/Log;->enableUCLogger()Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "log_conf"

    invoke-virtual {v0, v12}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1f

    const-string v12, "log_conf"

    .line 3184
    invoke-virtual {v0, v12}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    .line 4174
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v2

    const-string v2, "setPrintLogBaseOnConfig "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_20

    .line 4175
    array-length v2, v12

    const/4 v15, 0x5

    if-ne v2, v15, :cond_20

    const/4 v2, 0x0

    .line 4176
    aget-object v15, v12, v2

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2, v12}, Lcom/uc/webview/export/internal/utility/Log;->setPrintLog(Z[Ljava/lang/Object;)V

    goto :goto_a

    :cond_1f
    move-object/from16 v17, v2

    .line 3188
    :cond_20
    :goto_a
    invoke-static {}, Lcom/uc/webview/export/internal/utility/Log;->enableUCLogger()Z

    move-result v2

    sput-boolean v2, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    const/16 v2, 0xe2

    move-object v12, v14

    .line 3190
    invoke-virtual {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v14

    invoke-static {v2, v14, v15}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    const-string v2, "d"

    .line 2350
    invoke-static {v2, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 2354
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "log_conf"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 2355
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "setupGlobalOnce: log_conf="

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_21

    const-string v2, "null"

    goto :goto_b

    .line 2356
    :cond_21
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v14, v3, [Ljava/lang/Throwable;

    .line 2355
    invoke-virtual {v1, v2, v14}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2358
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "setupGlobalOnce: PRIVATE_DATA_DIRECTORY_SUFFIX="

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2359
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v14

    const-string v15, "process_private_data_dir_suffix"

    invoke-virtual {v14, v15}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v14, v3, [Ljava/lang/Throwable;

    .line 2358
    invoke-virtual {v1, v2, v14}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2361
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "setupGlobalOnce: sdk_international_env="

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2362
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2361
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2364
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "setupGlobalOnce: WEBVIEW_POLICY="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2365
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2364
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2367
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "setupGlobalOnce: sdk_setup="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2368
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2367
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "setupGlobalOnce: MULTI_CORE_TYPE="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2371
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2370
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2373
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "setupGlobalOnce: AC="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2374
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2373
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2376
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "setupGlobalOnce: VIDEO_AC="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2377
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2376
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2379
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "setupGlobalOnce: grant_all_builds="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2380
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2379
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2382
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "setupGlobalOnce: conn_to="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2383
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2382
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2385
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: read_to="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2386
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2385
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2388
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: exact_old="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2389
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2388
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2391
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: exact_mod="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2392
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    move-object/from16 v5, v16

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2391
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2394
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: wait_fallback_sys="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2395
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v5, "wait_fallback_sys"

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2394
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2397
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: ucPlayerRoot="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2398
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v5, "ucPlayerRoot"

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2397
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2400
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: ucPlayer="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2401
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v5, "ucPlayer"

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2400
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2403
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: webview_multi_process="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2404
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v5, "webview_multi_process"

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2403
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2406
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: webview_multi_process_fallback_timeout="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2407
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v5, "webview_multi_process_fallback_timeout"

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2406
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2409
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: webview_multi_process_enable_service_speedup="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2410
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v5, "webview_multi_process_enable_service_speedup"

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2409
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2412
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: ucm_multi_process_enable_seccomp="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2413
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v5, "ucm_multi_process_enable_seccomp"

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2412
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2415
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: gpu_process_mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2416
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v5, "gpu_process_mode"

    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2415
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2418
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: ucbs version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/uc/webview/export/Build$Version;->BUILD_SERIAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2419
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: preheat init type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getInitType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2421
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: appStartupOpportunity: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "app_st_o"

    .line 2422
    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2421
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2424
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: appStartupTime: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "st_el_b_uc_and_app"

    .line 2425
    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2424
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2427
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v2

    const-string v3, "VERIFY_POLICY"

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_22

    .line 2429
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: VERIFY_POLICY="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2429
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2433
    :cond_22
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_23

    .line 2435
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: startup_policy="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2436
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 2435
    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_23
    const/16 v1, 0x125

    .line 456
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void
.end method

.method public bridge synthetic start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized start()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getParent()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0x148

    .line 148
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 149
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "setup_priority"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setRootTaskPriority(I)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "setup_create_thread"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 154
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "ucmUpdUrl"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 157
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 160
    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setEnableRootTaskCreateThread(Ljava/lang/Boolean;)V

    :cond_2
    const/16 v0, 0x149

    .line 162
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 163
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/16 v1, 0x14a

    .line 165
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 166
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 167
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-object v1

    .line 170
    :cond_3
    :try_start_1
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
