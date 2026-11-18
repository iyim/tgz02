.class public Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;
.super Ljava/lang/Object;
.source "BaseIniter.java"


# static fields
.field private static volatile baseIniter:Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter; = null

.field public static volatile inited:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;
    .locals 2

    .line 28
    sget-object v0, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->baseIniter:Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->baseIniter:Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;

    return-object v0

    .line 31
    :cond_0
    const-class v0, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->baseIniter:Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;

    if-nez v1, :cond_1

    .line 33
    new-instance v1, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;

    invoke-direct {v1}, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;-><init>()V

    sput-object v1, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->baseIniter:Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;

    .line 35
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->baseIniter:Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;

    return-object v0

    :catchall_0
    move-exception v1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 40
    :try_start_0
    sget-boolean v0, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->inited:Z

    if-eqz v0, :cond_0

    const-string v0, "UtSystem: -"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524dUT\u5df2\u7ecf\u521d\u59cb\u5316 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->inited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/ut/base/UtContextUtils;->get()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-string v1, "UtSystem: -"

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524dUT\u5f00\u59cb\u521d\u59cb\u5316 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->inited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    new-instance v2, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter$1;

    invoke-direct {v2, p0}, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter$1;-><init>(Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;)V

    invoke-virtual {v1, v0, v2}, Lcom/ut/mini/UTAnalytics;->setAppApplicationInstance(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V

    .line 104
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/ut/base/UTRealTimeUtil;->turnOnRealTimeDebugIfNeed()V

    const/4 v0, 0x1

    .line 105
    sput-boolean v0, Lcom/alibaba/genie/waft/gcs/ut/base/BaseIniter;->inited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
