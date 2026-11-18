.class Lcom/alibaba/android/umbrella/link/LinkLogManager;
.super Ljava/lang/Object;
.source "LinkLogManager.java"


# static fields
.field private static final TAG_VERSION_UMBRELLA_2_0:Ljava/lang/String; = "umbrella2"


# instance fields
.field private final linkLogCache:Lcom/alibaba/android/umbrella/link/LinkLogCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/umbrella/link/LinkLogCache<",
            "Lcom/alibaba/android/umbrella/link/LinkLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final linkLogSwitcher:Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final linkLogWorker:Lcom/alibaba/android/umbrella/link/LinkLogWorker;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogSwitcher:Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    .line 31
    new-instance v0, Lcom/alibaba/android/umbrella/link/LinkLogWorker;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/link/LinkLogWorker;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogWorker:Lcom/alibaba/android/umbrella/link/LinkLogWorker;

    .line 32
    new-instance v0, Lcom/alibaba/android/umbrella/link/LinkLogCache;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/link/LinkLogCache;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogCache:Lcom/alibaba/android/umbrella/link/LinkLogCache;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/umbrella/link/LinkLogManager;)Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogSwitcher:Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/umbrella/link/LinkLogManager;)Lcom/alibaba/android/umbrella/link/LinkLogCache;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogCache:Lcom/alibaba/android/umbrella/link/LinkLogCache;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/android/umbrella/link/LinkLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->replaceTagVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/alibaba/android/umbrella/link/LinkLogExtData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/LinkLogExtData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/LinkLogEntity;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;-><init>()V

    .line 62
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setBizName(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p3}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setFeatureType(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 64
    invoke-static {p6}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setLogLevel(I)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p5}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setLogStage(I)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p6, p7}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setErrorCode(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p8}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setDimMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p9}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setExtData(Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    if-nez p4, :cond_0

    new-instance p4, Lcom/alibaba/android/umbrella/link/UMRefContext;

    const-string p2, ""

    .line 69
    invoke-static {p2}, Lcom/alibaba/android/umbrella/link/util/UMLaunchId;->createLinkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lcom/alibaba/android/umbrella/link/UMRefContext;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p4}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setRefContext(Lcom/alibaba/android/umbrella/link/UMRefContext;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 70
    invoke-static {}, Lcom/alibaba/android/umbrella/link/util/UMLaunchId;->getLaunchId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setLaunchId(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 71
    invoke-static {}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->getPageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setPageName(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 72
    invoke-static {}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->getThreadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->setThreadId(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    return-object p1
.end method

.method private replaceTagVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogSwitcher:Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isNeedDoubleCheckCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "umbrella2"

    return-object p1

    :cond_0
    return-object p4
.end method

.method private triggerLogEntity(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getRefContext()Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogWorker:Lcom/alibaba/android/umbrella/link/LinkLogWorker;

    new-instance v1, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;-><init>(Lcom/alibaba/android/umbrella/link/LinkLogManager;Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/link/LinkLogWorker;->runNonBlocking(Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;)V

    return-void
.end method


# virtual methods
.method createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/alibaba/android/umbrella/link/LinkLogExtData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/LinkLogExtData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .line 50
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->triggerLogEntity(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getRefContext()Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object p1

    return-object p1
.end method

.method getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogSwitcher:Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    return-object v0
.end method

.method triggerCommitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    .line 136
    iget-object v11, v10, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogWorker:Lcom/alibaba/android/umbrella/link/LinkLogWorker;

    new-instance v12, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, p1

    move-object/from16 v5, p7

    move-object/from16 v6, p3

    move-object v7, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;-><init>(Lcom/alibaba/android/umbrella/link/LinkLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/alibaba/android/umbrella/link/LinkLogWorker;->runNonBlocking(Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;)V

    return-void
.end method

.method triggerCommitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    .line 113
    iget-object v9, v8, Lcom/alibaba/android/umbrella/link/LinkLogManager;->linkLogWorker:Lcom/alibaba/android/umbrella/link/LinkLogWorker;

    new-instance v10, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;-><init>(Lcom/alibaba/android/umbrella/link/LinkLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v9, v10}, Lcom/alibaba/android/umbrella/link/LinkLogWorker;->runNonBlocking(Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;)V

    return-void
.end method
