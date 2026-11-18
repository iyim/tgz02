.class public Lcom/uc/webview/export/internal/setup/o;
.super Lcom/uc/webview/export/utility/SetupTask;
.source "U4Source"


# static fields
.field private static a:Lcom/uc/webview/export/internal/setup/o;

.field private static b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/uc/webview/export/internal/setup/UCSetupTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/uc/webview/export/internal/setup/l;

.field private d:Lcom/uc/webview/export/internal/setup/l;

.field private e:Lcom/uc/webview/export/internal/setup/l;

.field private f:Lcom/uc/webview/export/internal/setup/l;

.field private g:Landroid/content/Context;

.field private h:Lcom/uc/webview/export/cyclone/UCElapseTime;

.field private i:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field private j:Lcom/uc/webview/export/internal/setup/UCSetupTask;

.field private k:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/av;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private final o:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Object;

.field private u:Lcom/uc/webview/export/internal/setup/az;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/o;->b:Ljava/util/Stack;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/uc/webview/export/utility/SetupTask;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/o;->n:Z

    .line 83
    new-instance v0, Lcom/uc/webview/export/internal/setup/p;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/p;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->o:Landroid/webkit/ValueCallback;

    .line 113
    new-instance v0, Lcom/uc/webview/export/internal/setup/u;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/u;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->p:Landroid/webkit/ValueCallback;

    .line 170
    new-instance v0, Lcom/uc/webview/export/internal/setup/v;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/v;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->q:Landroid/webkit/ValueCallback;

    .line 205
    new-instance v0, Lcom/uc/webview/export/internal/setup/w;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/w;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->r:Landroid/webkit/ValueCallback;

    .line 641
    new-instance v0, Lcom/uc/webview/export/internal/setup/ad;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ad;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->s:Landroid/webkit/ValueCallback;

    .line 1139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->t:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1140
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCSetupException;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCSetupTask;)Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->j:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;
    .locals 3

    .line 516
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "dexFilePath"

    .line 517
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "soFilePath"

    .line 518
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "resFilePath"

    .line 519
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmZipFile"

    .line 520
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmLibDir"

    .line 521
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmKrlDir"

    .line 522
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmCfgFile"

    .line 523
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 524
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/uc/webview/export/internal/setup/l;->getSetupCrashImprover(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object p2

    .line 526
    iget-object v0, p2, Lcom/uc/webview/export/internal/setup/ah;->b:Landroid/webkit/ValueCallback;

    const-string v2, "start"

    invoke-virtual {p1, v2, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object p2, p2, Lcom/uc/webview/export/internal/setup/ah;->c:Landroid/webkit/ValueCallback;

    const-string v2, "die"

    .line 527
    invoke-virtual {v0, v2, p2}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p2

    check-cast p2, Lcom/uc/webview/export/internal/setup/l;

    const-string v0, "crash_none"

    .line 528
    invoke-virtual {p2, v0, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p2

    check-cast p2, Lcom/uc/webview/export/internal/setup/l;

    const-string v0, "crash_seen"

    .line 529
    invoke-virtual {p2, v0, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p2

    check-cast p2, Lcom/uc/webview/export/internal/setup/l;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->q:Landroid/webkit/ValueCallback;

    const-string v1, "crash_repeat"

    .line 530
    invoke-virtual {p2, v1, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    :cond_0
    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/l;Z)Lcom/uc/webview/export/internal/setup/l;
    .locals 11

    const-string v0, "SdkSetupTask"

    const-string v1, "ucmUpdUrl"

    .line 603
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 604
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 608
    :cond_0
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/uc/webview/export/internal/setup/o;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    const-string v3, "updates"

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 613
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_8

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    .line 1591
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1592
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 1593
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hashcode: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, v6, v9

    .line 1595
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v8, :cond_3

    return-object v4

    :cond_3
    const-string v5, "csc_nupt"

    .line 617
    invoke-static {v5}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 618
    iput-boolean v3, p0, Lcom/uc/webview/export/internal/setup/o;->n:Z

    if-eqz p1, :cond_4

    .line 620
    sget-object v5, Lcom/uc/webview/export/internal/setup/o;->b:Ljava/util/Stack;

    invoke-virtual {v5, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_5

    .line 623
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-le p2, v3, :cond_6

    .line 624
    :cond_5
    new-instance p1, Ljava/io/File;

    .line 625
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 628
    :cond_6
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {p2}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    goto :goto_2

    :cond_7
    new-instance p2, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {p2}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    .line 627
    :goto_2
    invoke-direct {p0, p2, p1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object p2

    const-string v1, "chkDecFinish"

    .line 629
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p2

    check-cast p2, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "ucmKrlDir"

    .line 630
    invoke-virtual {p2, v1, p1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 635
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "UCMPackageInfo.getUpdateRoot exception: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v4
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/uc/webview/export/internal/setup/o;
    .locals 2

    const-class v0, Lcom/uc/webview/export/internal/setup/o;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/o;->a:Lcom/uc/webview/export/internal/setup/o;

    if-nez v1, :cond_0

    const/16 v1, 0x147

    .line 75
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 76
    new-instance v1, Lcom/uc/webview/export/internal/setup/o;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/o;-><init>()V

    sput-object v1, Lcom/uc/webview/export/internal/setup/o;->a:Lcom/uc/webview/export/internal/setup/o;

    const/16 v1, 0x14b

    .line 77
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 80
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/o;->a:Lcom/uc/webview/export/internal/setup/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/l;)V
    .locals 2

    const-string v0, "csc_ftt"

    .line 1345
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    const-string v0, "sc_bakkrldir"

    .line 1347
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sc_bakzipfp"

    .line 1348
    invoke-static {v1}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1353
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/an;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/an;-><init>()V

    const-string v1, "ShareCoreFaultToleranceTask"

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 362
    sget-object v1, Lcom/uc/webview/export/internal/setup/o;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v0, Lcom/uc/webview/export/internal/setup/z;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/z;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    const-string v1, "e_delay_search_core_file"

    .line 365
    invoke-virtual {p1, v1, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 1

    .line 3664
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/o;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    .line 3665
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/o;->setTotalLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    .line 3666
    iget p0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->loadType:I

    sput p0, Lcom/uc/webview/export/internal/SDKFactory;->h:I

    .line 3667
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initLoadUcm sLoadType: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->h:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isShareCore:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdkSetupTask"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    iget-boolean p0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz p0, :cond_0

    const-string p0, "csc_sdss"

    .line 3670
    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 3672
    :cond_0
    iget-boolean p0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz p0, :cond_1

    const-string p0, "csc_okss"

    .line 3673
    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 3675
    :cond_1
    iget-boolean p0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isFirstTimeOdex:Z

    if-eqz p0, :cond_2

    const-string p0, "csc_fkss"

    .line 3676
    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object p0
.end method

.method private b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;
    .locals 3

    .line 501
    invoke-virtual {p1, p0}, Lcom/uc/webview/export/internal/setup/l;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 502
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    const-string v2, "setup"

    .line 503
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    const-string v2, "load"

    .line 504
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    const-string v2, "init"

    .line 505
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    const-string v2, "switch"

    .line 506
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->k:Landroid/webkit/ValueCallback;

    const-string v2, "stat"

    .line 507
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->o:Landroid/webkit/ValueCallback;

    const-string v2, "success"

    .line 508
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->p:Landroid/webkit/ValueCallback;

    const-string v2, "exception"

    .line 509
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    return-object p1
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->e:Lcom/uc/webview/export/internal/setup/l;

    return-object p1
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "bo_dex_old_dex_dir"

    const-string v4, "stat"

    const-string v5, "sdk_ucm_old"

    const-string v6, "SdkSetupTask"

    const-string v7, "T"

    const-string v8, "F"

    const-string v9, "0"

    const-string v10, "1"

    const-string v0, "csc_ssctp"

    .line 3858
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "d"

    .line 3860
    invoke-static {v0, v6}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v11, :cond_1

    const-string v0, "mSuccessCB: dataDir is [%s] core type: [%d] isShareCore{%b}."

    const/4 v15, 0x3

    .line 3862
    new-array v15, v15, [Ljava/lang/Object;

    .line 3863
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v12, v12, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    aput-object v12, v15, v14

    .line 3864
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v12

    iget v12, v12, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v15, v13

    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v12

    iget-boolean v12, v12, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/16 v16, 0x2

    aput-object v12, v15, v16

    .line 3862
    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v12, v14, [Ljava/lang/Throwable;

    invoke-virtual {v11, v0, v12}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3867
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3868
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v0, :cond_2

    .line 3869
    iget-object v12, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    if-eqz v12, :cond_2

    .line 3870
    iget-object v12, v1, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v12}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 3872
    iget-object v12, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    .line 3873
    invoke-static {v12}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 3872
    invoke-static {v0, v12}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/setup/br;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_12

    :cond_2
    :try_start_1
    const-string v0, "csc_sscip"

    .line 3879
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 3880
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/o;->callbackFinishStat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3882
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_12

    :goto_1
    :try_start_3
    const-string v0, "ucmUpdUrl"

    .line 3887
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 3893
    iget-object v12, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    const-string v15, "flags"

    .line 3895
    invoke-static {v12, v15}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const-string v15, "uc_upd"

    .line 3894
    invoke-static {v12, v15}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 3898
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_frun"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3899
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3900
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    .line 3901
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    .line 3903
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "createNewFile firstTimeRunFlagFile failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3906
    :cond_4
    :goto_2
    iget v13, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const-wide/16 v17, 0x0

    const/4 v14, 0x2

    if-eq v13, v14, :cond_9

    .line 3908
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_ucrun"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3909
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3910
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_6

    .line 3911
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_3

    .line 3913
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "createNewFile ucrunFlagFile failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3916
    :cond_6
    :goto_3
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    sub-long v13, v13, v19

    .line 3919
    iget-boolean v2, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-nez v2, :cond_a

    .line 3920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_curucrun"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3921
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3922
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3923
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 3925
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "createNewFile currentUcRunFlagFile failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3928
    :cond_8
    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v21

    sub-long v19, v19, v21

    goto :goto_5

    .line 3931
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    sub-long v12, v12, v19

    move-wide v13, v12

    :cond_a
    move-wide/from16 v19, v17

    :goto_5
    cmp-long v0, v19, v17

    if-nez v0, :cond_b

    .line 3935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    sub-long v19, v17, v19

    :cond_b
    const-string v0, "stp_uc_hour"

    const-wide/32 v17, 0x36ee80

    .line 3938
    div-long v13, v13, v17

    long-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stp_curuc_hour"

    .line 3939
    div-long v12, v19, v17

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 3942
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_12

    .line 3946
    :cond_c
    :goto_6
    :try_start_5
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v0, :cond_d

    move-object v0, v10

    goto :goto_7

    :cond_d
    move-object v0, v9

    :goto_7
    invoke-static {v5, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 3948
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_12

    .line 3958
    :goto_8
    :try_start_7
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    :goto_9
    const-string v2, ""

    if-eqz v0, :cond_f

    .line 3961
    :try_start_8
    iget-object v12, v1, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v12}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 3963
    :try_start_9
    iget-object v13, v1, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v13}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_a

    :catch_3
    move-object v13, v2

    .line 3967
    :goto_a
    :try_start_a
    iget-object v14, v1, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v14}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-static {v14}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 3970
    :catch_4
    :try_start_b
    iget-object v14, v1, Lcom/uc/webview/export/internal/setup/o;->j:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v14}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getCrashCode()Ljava/lang/String;

    move-result-object v14

    .line 3971
    iget-object v15, v1, Lcom/uc/webview/export/internal/setup/o;->j:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v7

    move-object/from16 v23, v12

    move-object v12, v2

    move-object/from16 v2, v23

    goto :goto_b

    :cond_f
    move-object v12, v2

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v7

    :goto_b
    const-string v7, "setup_priority"

    .line 3979
    invoke-virtual {v1, v7}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    move-object/from16 v17, v8

    :try_start_c
    const-string v8, "dlChecker"

    .line 3983
    invoke-virtual {v1, v8}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Callable;

    if-nez v8, :cond_10

    const-string v8, "N"

    goto :goto_c

    .line 3984
    :cond_10
    invoke-interface {v8}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    if-eqz v8, :cond_11

    move-object/from16 v8, v16

    goto :goto_c

    :cond_11
    move-object/from16 v8, v17

    goto :goto_c

    :catch_5
    :try_start_d
    const-string v8, "E"

    :goto_c
    move-object/from16 v18, v9

    .line 3989
    new-instance v9, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v9}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    move-object/from16 v19, v3

    :try_start_e
    const-string v3, "cnt"

    .line 3990
    invoke-virtual {v9, v3, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v9, "code"

    move-object/from16 v20, v10

    .line 3991
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v10

    iget v10, v10, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v9, "dir"

    .line 3992
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-nez v10, :cond_12

    const-string v10, "null"

    move-object/from16 v21, v6

    goto :goto_d

    :cond_12
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    move-object/from16 v21, v6

    :try_start_f
    iget-object v6, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    invoke-virtual {v10, v6}, Lcom/uc/webview/export/internal/setup/br;->getDirAlias(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    :goto_d
    invoke-virtual {v3, v9, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "old"

    .line 3993
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v9, :cond_13

    move-object/from16 v9, v16

    goto :goto_e

    :cond_13
    move-object/from16 v9, v17

    :goto_e
    invoke-virtual {v3, v6, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "frun"

    .line 3994
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isFirstTimeOdex:Z

    if-eqz v9, :cond_14

    move-object/from16 v9, v16

    goto :goto_f

    :cond_14
    move-object/from16 v9, v17

    :goto_f
    invoke-virtual {v3, v6, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "cpu_cnt"

    .line 3995
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "cpu_freq"

    .line 3996
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "cost_cpu"

    iget-object v9, v1, Lcom/uc/webview/export/internal/setup/o;->h:Lcom/uc/webview/export/cyclone/UCElapseTime;

    .line 3997
    invoke-virtual {v9}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "cost"

    iget-object v9, v1, Lcom/uc/webview/export/internal/setup/o;->h:Lcom/uc/webview/export/cyclone/UCElapseTime;

    .line 3998
    invoke-virtual {v9}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "pri"

    if-nez v7, :cond_15

    const-string v7, "n"

    goto :goto_10

    .line 3999
    :cond_15
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_10
    invoke-virtual {v3, v6, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "wifi"

    .line 4000
    invoke-virtual {v3, v6, v8}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "csc_tsu"

    .line 4001
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz v7, :cond_16

    const-string v7, "csc_tis"

    goto :goto_11

    :cond_16
    const-string v7, "csc_tns"

    :goto_11
    invoke-virtual {v3, v6, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v6, "qinit"

    .line 4003
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->b()Z

    move-result v7

    if-eqz v7, :cond_17

    move-object/from16 v7, v20

    goto :goto_12

    :cond_17
    move-object/from16 v7, v18

    :goto_12
    invoke-virtual {v3, v6, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    .line 4005
    new-instance v6, Landroid/util/Pair;

    const-string v7, "sdk_stp_suc"

    if-eqz v0, :cond_19

    const-string v8, "multi_core"

    .line 4007
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v9

    const-string v10, "MULTI_CORE_TYPE"

    invoke-virtual {v9, v10}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    move-object/from16 v9, v20

    goto :goto_13

    :cond_18
    move-object/from16 v9, v18

    .line 4006
    :goto_13
    invoke-virtual {v3, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v8, "err"

    .line 4008
    invoke-virtual {v3, v8, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string v3, "cls"

    .line 4009
    invoke-virtual {v2, v3, v13}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string v3, "msg"

    .line 4010
    invoke-virtual {v2, v3, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string v3, "crash"

    .line 4011
    invoke-virtual {v2, v3, v14}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string v3, "task"

    .line 4012
    invoke-virtual {v2, v3, v15}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string v3, "csc_tsu"

    const-string v8, "csc_tfi"

    .line 4013
    invoke-virtual {v2, v3, v8}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    :cond_19
    invoke-direct {v6, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4005
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/internal/setup/o;->callbackStat(Landroid/util/Pair;)V

    .line 4016
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v2, :cond_1a

    move-object/from16 v2, v20

    goto :goto_14

    :cond_1a
    move-object/from16 v2, v18

    :goto_14
    invoke-static {v5, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_1b

    const-string v0, "csc_nsifp"

    .line 4019
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_17

    :cond_1b
    const-string v0, "csc_nsisp"

    .line 4021
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_16

    :catch_7
    move-exception v0

    goto :goto_15

    :catch_8
    move-exception v0

    move-object/from16 v19, v3

    :goto_15
    move-object/from16 v21, v6

    .line 4025
    :goto_16
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4028
    :cond_1c
    :goto_17
    invoke-direct/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/o;->f()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_12

    .line 4032
    :try_start_11
    new-instance v0, Lcom/uc/webview/export/internal/setup/n;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/n;-><init>()V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->statCallback:Landroid/webkit/ValueCallback;

    nop

    nop

    .line 4033
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/n;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/n;

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v2, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    .line 4034
    invoke-virtual {v0, v4, v2}, Lcom/uc/webview/export/internal/setup/n;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/n;

    .line 4035
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/n;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_18

    :catch_9
    move-exception v0

    .line 4037
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    :goto_18
    :try_start_13
    const-string v0, "vmsize_saving"

    .line 4041
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    .line 4042
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_19

    :cond_1d
    const/4 v0, 0x0

    .line 4044
    :goto_19
    new-instance v2, Lcom/uc/webview/export/internal/setup/s;

    invoke-direct {v2, v1, v0}, Lcom/uc/webview/export/internal/setup/s;-><init>(Lcom/uc/webview/export/internal/setup/o;Z)V

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/Map;)V

    if-eqz v11, :cond_1f

    .line 4051
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSuccessCB: vmsize_saving_enable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1e

    const-string v3, "true"

    goto :goto_1a

    :cond_1e
    const-string v3, "false"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Throwable;

    invoke-virtual {v11, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1f
    if-eqz v0, :cond_20

    .line 4054
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v2, Lcom/uc/webview/export/cyclone/UCVmsize;

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/cyclone/UCVmsize;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    .line 4055
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    .line 4056
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_1b

    :catch_a
    move-exception v0

    .line 4059
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "successCallbackImpl "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_12

    .line 4064
    :cond_20
    :goto_1b
    :try_start_15
    new-instance v0, Lcom/uc/webview/export/internal/setup/f;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/f;-><init>()V

    .line 4065
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/f;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    const-string v2, "CONTEXT"

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    .line 4066
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/f;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    const-string v2, "del_dec_fil"

    const/4 v3, 0x1

    .line 4067
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/uc/webview/export/internal/setup/f;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    const-string v2, "del_upd_fil"

    const/4 v3, 0x0

    .line 4068
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/f;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    move-object/from16 v2, v19

    .line 4069
    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/f;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    const-string v2, "die"

    new-instance v3, Lcom/uc/webview/export/internal/setup/t;

    invoke-direct {v3, v1}, Lcom/uc/webview/export/internal/setup/t;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    .line 4070
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/f;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    .line 4081
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/f;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_1c

    :catch_b
    move-exception v0

    .line 4083
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_12

    .line 4088
    :goto_1c
    :try_start_17
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    if-eqz v0, :cond_21

    .line 4089
    new-instance v0, Lcom/uc/webview/export/internal/setup/e;

    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/e;-><init>(Ljava/util/List;)V

    .line 4090
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/e;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/e;

    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4091
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/e;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/e;

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v2, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    .line 4092
    invoke-virtual {v0, v4, v2}, Lcom/uc/webview/export/internal/setup/e;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/e;

    .line 4093
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/e;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_21
    const/4 v2, 0x0

    .line 4098
    :goto_1d
    :try_start_18
    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_12

    goto :goto_1e

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_23

    :catch_c
    move-exception v0

    const/4 v2, 0x0

    .line 4096
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_1d

    .line 4291
    :goto_1e
    :try_start_1a
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->f:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v0, :cond_22

    .line 4292
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->f:Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "chkMultiCore"

    const/4 v3, 0x1

    .line 4293
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "success"

    const/4 v3, 0x0

    .line 4294
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "exception"

    .line 4295
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "switch"

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/o;->s:Landroid/webkit/ValueCallback;

    .line 4296
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 4297
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    const/4 v2, 0x0

    .line 4298
    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->f:Lcom/uc/webview/export/internal/setup/l;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    goto :goto_1f

    :catch_d
    move-exception v0

    .line 4301
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_12

    :cond_22
    :goto_1f
    :try_start_1c
    const-string v0, "sc_ustwm"

    .line 4307
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4310
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4311
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->e:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v0, :cond_23

    const-string v0, "csc_ddspv"

    .line 4312
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 4313
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->e:Lcom/uc/webview/export/internal/setup/l;

    const-wide/16 v2, 0x7d0

    .line 4314
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/4 v2, 0x0

    .line 4315
    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->e:Lcom/uc/webview/export/internal/setup/l;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    goto :goto_20

    :catch_e
    move-exception v0

    .line 4319
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_12

    .line 5257
    :cond_23
    :goto_20
    :try_start_1e
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    goto :goto_21

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 5285
    :try_start_1f
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_12

    .line 4109
    :goto_21
    :try_start_20
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v0, :cond_24

    .line 4110
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/4 v2, 0x0

    .line 4111
    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    goto :goto_22

    :catch_10
    move-exception v0

    .line 4118
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4121
    :cond_24
    :goto_22
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "distinguish_js_error"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_12

    if-eqz v0, :cond_26

    .line 4124
    :try_start_22
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v2

    if-eqz v2, :cond_25

    const-string v3, "DistinguishJSError"

    .line 4126
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v3, v0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    :cond_25
    return-void

    :catch_11
    move-exception v0

    .line 4129
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_26
    return-void

    :catchall_1
    move-exception v0

    .line 4098
    :goto_23
    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    throw v0
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    :catch_12
    move-exception v0

    .line 4133
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfa4

    invoke-direct {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/o;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    return-void
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    return-object p0
.end method

.method static synthetic c()Ljava/util/Stack;
    .locals 1

    .line 44
    sget-object v0, Lcom/uc/webview/export/internal/setup/o;->b:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic d(Lcom/uc/webview/export/internal/setup/o;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->p:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic e(Lcom/uc/webview/export/internal/setup/o;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->o:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private e()Lcom/uc/webview/export/internal/setup/l;
    .locals 3

    const-string v0, "csc_nsct"

    .line 335
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 337
    new-instance v0, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ao;-><init>()V

    const-string v1, "ShareCoreSdcardSetupTask"

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v0

    const/4 v1, 0x1

    .line 339
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "scst_flag"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    return-object v0
.end method

.method static synthetic f(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    return-object v0
.end method

.method private f()V
    .locals 2

    .line 683
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 684
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 693
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    const-string v1, "loadPolicy"

    .line 694
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 693
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Lcom/uc/webview/export/internal/setup/br;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 696
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_2
    const-string v0, "load_share_core_host"

    .line 701
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/f;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 703
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic g(Lcom/uc/webview/export/internal/setup/o;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->s:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic h(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/o;->e()Lcom/uc/webview/export/internal/setup/l;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;
    .locals 2

    const-string v0, "csc_cdscfp"

    .line 5325
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 5327
    new-instance v0, Lcom/uc/webview/export/internal/setup/ap;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ap;-><init>()V

    const-string v1, "ShareCoreSearchCoreFileTask"

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object p0

    .line 5329
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/l;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-object p0
.end method

.method static synthetic j(Lcom/uc/webview/export/internal/setup/o;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/o;->f()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 537
    new-instance v0, Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bw;-><init>()V

    .line 538
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bw;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 539
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const/4 v1, 0x0

    const-string v2, "ucmZipDir"

    .line 540
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmZipFile"

    .line 541
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const/4 v1, 0x1

    .line 542
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "sdk_setup"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "chkMultiCore"

    .line 543
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->k:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    :goto_0
    const-string v2, "stat"

    .line 544
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->s:Landroid/webkit/ValueCallback;

    const-string v2, "switch"

    .line 545
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v1, Lcom/uc/webview/export/internal/setup/ac;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/setup/ac;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    const-string v2, "downloadException"

    .line 546
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v1, Lcom/uc/webview/export/internal/setup/ab;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/internal/setup/ab;-><init>(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)V

    const-string v2, "downloadFileDelete"

    .line 557
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v1, Lcom/uc/webview/export/internal/setup/aa;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/setup/aa;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    const-string v2, "updateProgress"

    .line 568
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    if-eqz p2, :cond_1

    .line 579
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "dlChecker"

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 580
    :cond_1
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 581
    iget-object p2, p0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    const-string v0, "ucmUpdUrl"

    invoke-virtual {p2, v0, p1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    :cond_2
    const-string p1, "sc_ldpl"

    .line 583
    invoke-static {p1}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sc_lshco"

    .line 584
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 585
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    iget-object p2, p0, Lcom/uc/webview/export/internal/setup/o;->r:Landroid/webkit/ValueCallback;

    const-string v0, "shareCoreEvt"

    invoke-virtual {p1, v0, p2}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    :cond_3
    return-void
.end method

.method public final b()Lcom/uc/webview/export/internal/setup/az;
    .locals 2

    .line 1142
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    if-nez v0, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    if-nez v1, :cond_0

    .line 1145
    new-instance v1, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    .line 1147
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    return-object v0
.end method

.method public run()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x5

    .line 778
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 779
    new-instance v1, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    iput-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->h:Lcom/uc/webview/export/cyclone/UCElapseTime;

    const/4 v1, 0x0

    const-string v2, "ucmZipDir"

    .line 1710
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/utility/SetupTask;

    const/4 v3, 0x1

    .line 1711
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "sdk_setup"

    invoke-virtual {v2, v5, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/o;->setupGlobalOnce()V

    const-string v2, "stat"

    .line 1720
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/o;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v4

    .line 1721
    new-instance v5, Lcom/uc/webview/export/internal/setup/r;

    invoke-direct {v5, v0, v4}, Lcom/uc/webview/export/internal/setup/r;-><init>(Lcom/uc/webview/export/internal/setup/o;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v2, v5}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1763
    new-instance v2, Landroid/util/Pair;

    const-string v4, "sdk_stp"

    invoke-direct {v2, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/o;->callbackStat(Landroid/util/Pair;)V

    .line 1767
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "SYSTEM_WEBVIEW"

    invoke-static {v2, v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 1768
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1771
    sget-object v2, Lcom/uc/webview/export/internal/setup/o;->b:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v2, 0x11f

    .line 783
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const-string v2, "CONTEXT"

    .line 785
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    .line 786
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;

    invoke-direct {v2, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    iput-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    .line 787
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v2, v0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    iput-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->k:Landroid/webkit/ValueCallback;

    .line 789
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 791
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 792
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Boolean;)Z

    move-result v2

    const-string v4, "SdkSetupTask"

    if-nez v2, :cond_1

    const-string v1, "force to use system webview"

    .line 793
    invoke-static {v4, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    new-instance v1, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ay;-><init>()V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto/16 :goto_5

    .line 796
    :cond_1
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v2

    const-string v5, "first_use_sw"

    const-string v6, "1"

    const/16 v7, 0x1f4

    const-string v8, "ucmZipFile"

    const-string v9, "resFilePath"

    const-string v10, "soFilePath"

    const-string v11, "ucmKrlDir"

    if-eqz v2, :cond_a

    const-string v2, "isThickSDK"

    .line 797
    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13a

    .line 2453
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2457
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2458
    iget-object v12, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2459
    iget-object v13, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2460
    iget-object v14, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2461
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v12

    goto :goto_0

    :cond_2
    move-object v15, v2

    .line 2463
    :goto_0
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/i;->b(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2465
    invoke-static {}, Lcom/uc/webview/export/internal/utility/i;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v1

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    const/16 v2, 0x1fd

    .line 2466
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2467
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/o;->b()Lcom/uc/webview/export/internal/setup/az;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    const/16 v2, 0x1fe

    .line 2468
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2469
    invoke-static {}, Lcom/uc/webview/export/internal/utility/i;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setUCM(Lcom/uc/webview/export/internal/setup/br;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 2471
    invoke-static {v7, v6}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 2472
    :cond_3
    invoke-static {v15}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2473
    new-instance v1, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    invoke-static {v15}, Lcom/uc/webview/export/internal/setup/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    .line 2474
    invoke-virtual {v1, v10, v12}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 2475
    invoke-virtual {v1, v9, v13}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 2476
    invoke-virtual {v1, v11, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    goto :goto_1

    .line 2477
    :cond_4
    invoke-static {v14}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2478
    new-instance v1, Lcom/uc/webview/export/internal/setup/b;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/b;-><init>()V

    invoke-direct {v0, v1, v14}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    .line 2479
    invoke-virtual {v1, v8, v14}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 2480
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "first use system webview for unzip in thick"

    .line 2481
    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    iput-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->f:Lcom/uc/webview/export/internal/setup/l;

    .line 2483
    new-instance v1, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ay;-><init>()V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 2487
    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    .line 2488
    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Z)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object v1, v2

    :cond_7
    const/16 v2, 0x13b

    .line 2494
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    if-eqz v1, :cond_8

    const/16 v2, 0x123

    .line 801
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 802
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_2

    .line 803
    :cond_8
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v1, :cond_9

    const/16 v1, 0x123

    .line 804
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 805
    new-instance v1, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    :goto_2
    const-string v1, "Thick SDK"

    .line 810
    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 807
    :cond_9
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbc9

    const-string v3, "At least 1 of OPTION_SO_FILE_PATH |OPTION_UCM_KRL_DIR |OPTION_UCM_UPD_URL  should be given."

    invoke-direct {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_a
    const/16 v1, 0x120

    .line 812
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const/16 v1, 0x8d

    .line 3380
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const-string v1, "csc_ndft"

    .line 3382
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 3386
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "dexFilePath"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3387
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    iget-object v12, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v12}, Lcom/uc/webview/export/internal/utility/i;->b(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3388
    new-instance v1, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    .line 3389
    invoke-static {}, Lcom/uc/webview/export/internal/utility/i;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/bf;->setUCM(Lcom/uc/webview/export/internal/setup/br;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 3390
    invoke-static {}, Lcom/uc/webview/export/internal/utility/i;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v2

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 3388
    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    .line 3391
    invoke-static {v7, v6}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 3392
    :cond_b
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 3393
    new-instance v3, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    invoke-direct {v0, v3, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v3

    .line 3394
    invoke-virtual {v3, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 3395
    invoke-virtual {v0, v10}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 3396
    invoke-virtual {v0, v9}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    goto/16 :goto_3

    .line 3398
    :cond_c
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3399
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 3400
    new-instance v2, Lcom/uc/webview/export/internal/setup/b;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/b;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    .line 3401
    invoke-virtual {v2, v8, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 3402
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "first use system webview for unzip"

    .line 3403
    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    iput-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->f:Lcom/uc/webview/export/internal/setup/l;

    .line 3405
    new-instance v1, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ay;-><init>()V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    goto :goto_3

    .line 3408
    :cond_d
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "ucmLibDir"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3409
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 3410
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, "forbid_repair"

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3417
    new-instance v3, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    invoke-direct {v0, v3, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v3

    .line 3418
    invoke-virtual {v3, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    goto :goto_3

    .line 3420
    :cond_e
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3421
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 3422
    new-instance v2, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    .line 3423
    invoke-virtual {v2, v11, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    goto :goto_3

    .line 3425
    :cond_f
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "ucmCfgFile"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3426
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 3427
    new-instance v2, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    const-string v3, "ucmCfgFile"

    .line 3428
    invoke-virtual {v2, v3, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    goto :goto_3

    :cond_10
    const/4 v1, 0x0

    .line 3435
    :cond_11
    :goto_3
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "skip_old_extra_kernel"

    .line 3437
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/Boolean;)Z

    move-result v2

    .line 3436
    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Z)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    if-eqz v2, :cond_12

    move-object v1, v2

    :cond_12
    const/16 v2, 0x8e

    .line 3443
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const-string v2, "sc_ldpl"

    .line 815
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sc_lshco"

    .line 816
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/o;->e()Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    goto :goto_4

    :cond_13
    const/4 v2, 0x0

    .line 819
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "mUpdateTask: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " shareCoreTask: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x121

    .line 820
    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const/16 v3, 0x122

    if-eqz v1, :cond_15

    .line 823
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v4, :cond_14

    if-eqz v2, :cond_14

    .line 825
    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;)V

    .line 826
    sget-object v4, Lcom/uc/webview/export/internal/setup/o;->b:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_14
    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 829
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_5

    .line 830
    :cond_15
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->c:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v1, :cond_16

    .line 831
    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 832
    new-instance v1, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_5

    :cond_16
    if-eqz v2, :cond_17

    .line 834
    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;)V

    .line 835
    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 836
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    :goto_5
    const/4 v1, 0x6

    .line 846
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void

    .line 838
    :cond_17
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbc9

    const-string v3, "At least 1 of OPTION_DEX_FILE_PATH|OPTION_UCM_LIB_DIR|OPTION_UCM_KRL_DIR|OPTION_UCM_CFG_FILE|OPTION_UCM_UPD_URL and CD_KEY_SHARE_CORE_CLIENT_LOAD_POLICY should be given."

    invoke-direct {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
