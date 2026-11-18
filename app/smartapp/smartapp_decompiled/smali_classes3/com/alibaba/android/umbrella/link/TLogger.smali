.class final Lcom/alibaba/android/umbrella/link/TLogger;
.super Ljava/lang/Object;
.source "TLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;
    }
.end annotation


# static fields
.field private static final MAX_TLOG_TEXT_LENGTH:I = 0x5000

.field private static final MODULE_UMBRELLA:Ljava/lang/String; = "umbrella"

.field private static final SEPARATOR_MESSAGE:Ljava/lang/String; = "\u2195\ufe0e"

.field private static volatile logService:Lcom/taobao/android/AliLogInterface;

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/alibaba/android/umbrella/link/TLogger;->random:Ljava/util/Random;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static buildLinkLogDO(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;
    .locals 2

    .line 71
    new-instance v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getMainBizName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb1:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getChildBizName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb2:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getLaunchId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb3:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getLinkId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb4:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getPageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb5:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getThreadId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb6:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getFeatureType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb7:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb8:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb9:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getLogLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb10:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getLogStage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb11:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb12:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getExtData()Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getExtData()Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->getExtMap()Ljava/util/Map;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb20:Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getDimMap()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 93
    :cond_1
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_1:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb21:Ljava/lang/String;

    .line 94
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_2:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb22:Ljava/lang/String;

    .line 95
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_3:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb23:Ljava/lang/String;

    .line 96
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_4:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb24:Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_5:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb25:Ljava/lang/String;

    .line 98
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_6:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb26:Ljava/lang/String;

    .line 99
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_7:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb27:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_8:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb28:Ljava/lang/String;

    .line 101
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_9:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb29:Ljava/lang/String;

    .line 102
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_10:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb30:Ljava/lang/String;

    .line 103
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_1:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb31:Ljava/lang/String;

    .line 104
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_2:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb32:Ljava/lang/String;

    .line 105
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_3:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb33:Ljava/lang/String;

    .line 106
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_4:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb34:Ljava/lang/String;

    .line 107
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_5:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb35:Ljava/lang/String;

    return-object v0
.end method

.method private static get()Lcom/taobao/android/AliLogInterface;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 113
    sget-object v0, Lcom/alibaba/android/umbrella/link/TLogger;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_1

    .line 114
    const-class v0, Lcom/alibaba/android/umbrella/link/TLogger;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/alibaba/android/umbrella/link/TLogger;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v1, :cond_0

    .line 116
    invoke-static {}, Lcom/taobao/android/AliLogServiceFetcher;->getLogService()Lcom/taobao/android/AliLogInterface;

    move-result-object v1

    sput-object v1, Lcom/alibaba/android/umbrella/link/TLogger;->logService:Lcom/taobao/android/AliLogInterface;

    .line 118
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 120
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/android/umbrella/link/TLogger;->logService:Lcom/taobao/android/AliLogInterface;

    return-object v0
.end method

.method static logTLog(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V
    .locals 8

    .line 33
    invoke-static {}, Lcom/alibaba/android/umbrella/link/TLogger;->get()Lcom/taobao/android/AliLogInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/alibaba/android/umbrella/link/TLogger;->buildLinkLogDO(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/alibaba/android/umbrella/link/TLogger;->random:Ljava/util/Random;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x5000

    if-ge v3, v4, :cond_1

    const-string v3, "-1"

    .line 46
    invoke-static {v0, p0, v1, v2, v3}, Lcom/alibaba/android/umbrella/link/TLogger;->writeTLogChunk(Lcom/taobao/android/AliLogInterface;Lcom/alibaba/android/umbrella/link/LinkLogEntity;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    add-int/lit16 v6, v4, 0x5000

    .line 51
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 52
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, p0, v4, v2, v7}, Lcom/alibaba/android/umbrella/link/TLogger;->writeTLogChunk(Lcom/taobao/android/AliLogInterface;Lcom/alibaba/android/umbrella/link/LinkLogEntity;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static writeTLogChunk(Lcom/taobao/android/AliLogInterface;Lcom/alibaba/android/umbrella/link/LinkLogEntity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0    # Lcom/taobao/android/AliLogInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getMainBizName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2195\ufe0e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getChildBizName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getFeatureType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "umbrella"

    .line 67
    invoke-interface {p0, p2, p2, p1}, Lcom/taobao/android/AliLogInterface;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
