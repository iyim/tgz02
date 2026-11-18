.class public Landroid/taobao/windvane/extra/performance2/WVPageTracker;
.super Ljava/lang/Object;
.source "WVPageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;,
        Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;,
        Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;
    }
.end annotation


# static fields
.field public static final WVZCacheStateHitZCache:I = 0x2

.field public static final WVZCacheStateNotHitZCache:I = 0x1

.field public static final WVZCacheStateNotUseZCache:I = 0x0

.field public static final WVZNSRFail:I = 0x2

.field public static final WVZNSRSkip:I = 0x0

.field public static final WVZNSRSuccess:I = 0x1

.field private static customizedStageIndentifier:Ljava/lang/String; = "CSI"

.field private static pageIdentifier:I = 0x1

.field static pageStatusCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static webViewIdentifier:I


# instance fields
.field private apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

.field private events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private jsErrorTimes:I

.field private lock_event:Ljava/lang/Object;

.field private lock_resource:Ljava/lang/Object;

.field private performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

.field private redirectCounts:J

.field private redirectEntrance:J

.field private redirectExport:J

.field private resources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;",
            ">;"
        }
    .end annotation
.end field

.field private stages:[Ljava/lang/String;

.field private state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field private stateMachine:[[I

.field private tti:J

.field private url:Ljava/lang/String;

.field private webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    .line 120
    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iput-object v2, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stateMachine:[[I

    const-string v4, "initStart"

    const-string v5, "initEnd"

    const-string v6, "loadRequest"

    const-string v7, "interceptStart"

    const-string v8, "interceptEnd"

    const-string/jumbo v9, "startLoad"

    const-string v10, "navigationStart"

    const-string v11, "fetchStart"

    const-string/jumbo v12, "responseEnd"

    const-string v13, "domContentLoadedEventStart"

    const-string v14, "loadEventStart"

    const-string v15, "loadEventEnd"

    const-string v16, "finishLoad"

    const-string v17, "firstPaint"

    const-string v18, "firstScreenPaint"

    const-string/jumbo v19, "timeToInteractive"

    const-string v20, "T1"

    const-string v21, "T2"

    const-string v22, "dealloc"

    const-string v23, "creatActivity"

    const-string v24, "attachToWindow"

    const-string v25, "firstScreenPaintCustomize"

    .line 127
    filled-new-array/range {v4 .. v25}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    .line 152
    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    .line 164
    iput-wide v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    .line 176
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_event:Ljava/lang/Object;

    .line 177
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_resource:Ljava/lang/Object;

    .line 179
    new-instance v1, Landroid/taobao/windvane/extra/performance/WVAPMManager;

    const-string v2, "WindVane.H5"

    invoke-direct {v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    .line 182
    invoke-direct/range {p0 .. p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->updateWebViewIndentifier()V

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        -0x1
    .end array-data

    :array_4
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)[Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/extra/performance2/WVPageTracker;Ljava/lang/String;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private addEvent(I)V
    .locals 3

    .line 653
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_event:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addResource(Ljava/lang/String;Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_resource:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 526
    monitor-exit v0

    return-void

    .line 528
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private analyzeEvents()V
    .locals 4

    .line 663
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_event:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    .line 665
    :goto_0
    iget-object v3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "routingEvent"

    .line 668
    invoke-direct {p0, v2, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
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

.method private analyzeResources()V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v4, ""

    move-object v14, v4

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v17, 0x0

    .line 567
    :goto_0
    iget-object v15, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v1, v15, :cond_9

    .line 568
    iget-object v15, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    if-nez v15, :cond_0

    const-string v15, "WVPageTracker"

    move-object/from16 v16, v14

    const-string v14, " analyzeResources : resource\u4e3a\u7a7a\uff01"

    .line 570
    invoke-static {v15, v14}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v14, v1

    goto/16 :goto_4

    :cond_0
    move-object/from16 v16, v14

    move v14, v1

    .line 575
    iget-wide v0, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingStartTime:J

    move-wide/from16 v20, v8

    iget-wide v8, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingEndTime:J

    const-wide/16 v22, 0x1

    cmp-long v24, v0, v8

    if-gez v24, :cond_1

    .line 576
    iget-wide v0, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingEndTime:J

    iget-wide v8, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingStartTime:J

    sub-long/2addr v0, v8

    add-long/2addr v6, v0

    add-long v4, v4, v22

    .line 581
    :cond_1
    iget v0, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->statusCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-long v10, v10, v22

    goto :goto_2

    :cond_2
    const-string v1, "4"

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    add-long v12, v12, v22

    goto :goto_2

    :cond_3
    const-string v1, "5"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 591
    :cond_4
    :goto_2
    iget-boolean v0, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->isHTML:Z

    if-eqz v0, :cond_7

    .line 592
    iget v0, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheState:I

    .line 593
    iget-object v1, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheInfo:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 594
    iget-object v1, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheInfo:Ljava/lang/String;

    move/from16 v17, v0

    move-object/from16 v16, v1

    goto :goto_3

    :cond_5
    move/from16 v17, v0

    :cond_6
    :goto_3
    move-wide/from16 v8, v20

    goto :goto_4

    .line 597
    :cond_7
    iget v0, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    add-long v2, v2, v22

    goto :goto_3

    .line 599
    :cond_8
    iget v0, v15, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    add-long v2, v2, v22

    add-long v8, v20, v22

    :goto_4
    add-int/lit8 v1, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v14, v16

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v20, v8

    move-object/from16 v16, v14

    const-wide/16 v18, 0x0

    cmp-long v0, v4, v18

    if-lez v0, :cond_a

    .line 607
    div-long v0, v6, v4

    move-wide v4, v0

    move-object/from16 v0, p0

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v4, v18

    .line 610
    :goto_5
    iget-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v6, v1

    const-string/jumbo v1, "resourceTotalCount"

    invoke-direct {v0, v1, v6, v7}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "resourceSuccessfulCount"

    .line 611
    invoke-direct {v0, v1, v10, v11}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "resourceFailedCount"

    .line 612
    invoke-direct {v0, v1, v12, v13}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "resourceAverageTime"

    .line 613
    invoke-direct {v0, v1, v4, v5}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "zcacheUsageCount"

    .line 614
    invoke-direct {v0, v1, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    const-string/jumbo v1, "zcacheHitCount"

    move-wide/from16 v2, v20

    .line 615
    invoke-direct {v0, v1, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    .line 617
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htmlZCacheState"

    invoke-direct {v0, v2, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "htmlZCacheInfo"

    move-object/from16 v4, v16

    .line 618
    invoke-direct {v0, v1, v4}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    iget-object v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    const-string v2, "page-resources"

    invoke-static {v2, v1}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private analyzeStates()V
    .locals 9

    .line 647
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectCounts:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-string/jumbo v2, "redirectCounts"

    invoke-direct {p0, v2, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    .line 648
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectExport:J

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectEntrance:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    sub-long v6, v0, v2

    :cond_0
    const-string/jumbo v0, "redirectTime"

    invoke-direct {p0, v0, v6, v7}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    return-void
.end method

.method private checkoutHash(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 758
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 765
    :cond_1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private clearEvent()V
    .locals 2

    .line 658
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_event:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 660
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearResource()V
    .locals 2

    .line 541
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_resource:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 543
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 544
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private currentTime()J
    .locals 2

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private isPage(Ljava/lang/String;)Z
    .locals 1

    .line 550
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 701
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->recordProperties(Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    :cond_0
    invoke-static {p1, p2}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onApmAddedResidue()V
    .locals 4

    .line 719
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    invoke-direct {p0, v0, v2, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 722
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    aget-object v0, v0, v1

    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 724
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->analyzeResources()V

    .line 726
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->analyzeEvents()V

    .line 728
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onResidueRecovered()V

    return-void
.end method

.method private onApmAddedStatistic(Ljava/lang/String;J)V
    .locals 3

    .line 709
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    long-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addStatistic(Ljava/lang/String;D)V

    .line 711
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->recordStatistics(Ljava/lang/String;J)V

    .line 714
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onApmFinished()V
    .locals 1

    .line 686
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onEnd()V

    .line 688
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->end()V

    :cond_0
    return-void
.end method

.method private onApmStaged(Ljava/lang/String;J)V
    .locals 1

    .line 693
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 695
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->recordStage(Ljava/lang/String;J)V

    .line 698
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/extra/performance2/AtsTools;->sendAtsPerformanceLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onApmStarted()V
    .locals 4

    .line 679
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->apmManager:Landroid/taobao/windvane/extra/performance/WVAPMManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WV_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webViewIdentifier:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageIdentifier:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageIdentifier:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStart(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->start()V

    :cond_0
    return-void
.end method

.method private onPropertyRecovered()V
    .locals 2

    const/4 v0, 0x0

    .line 733
    iput v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->jsErrorTimes:I

    const-wide/16 v0, 0x0

    .line 734
    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectCounts:J

    .line 735
    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectEntrance:J

    return-void
.end method

.method private onResidueRecovered()V
    .locals 2

    .line 738
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onResourceRecovered()V

    .line 739
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->clearEvent()V

    const-wide/16 v0, 0x0

    .line 740
    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    return-void
.end method

.method private onResourceRecovered()V
    .locals 0

    .line 547
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->clearResource()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private onStateChanged(I)V
    .locals 4

    .line 626
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->addEvent(I)V

    .line 628
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne v0, v1, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateStartLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne v0, v1, :cond_1

    .line 632
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectCounts:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectCounts:J

    .line 635
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stateMachine:[[I

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->value()I

    move-result v1

    aget-object v0, v0, v1

    aget p1, v0, p1

    invoke-static {p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->valueOf(I)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 637
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 638
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "errorProcess"

    invoke-direct {p0, v0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private onStateRecovered()V
    .locals 2

    .line 642
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne v0, v1, :cond_0

    .line 643
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    iput-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    :cond_0
    return-void
.end method

.method private recordRedirectEntrance()V
    .locals 5

    .line 743
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectEntrance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 744
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectEntrance:J

    :cond_0
    return-void
.end method

.method private recordRedirectExport()V
    .locals 5

    .line 748
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectExport:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 749
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->redirectExport:J

    :cond_0
    return-void
.end method

.method public static registerH5LifeCallback(Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;)V
    .locals 1

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 62
    :cond_0
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    .line 65
    :cond_1
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static removeH5LifeCallback(Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 71
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 536
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->lock_resource:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->resourcesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 538
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateWebViewIndentifier()V
    .locals 1

    .line 674
    sget v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webViewIdentifier:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webViewIdentifier:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "#"

    .line 777
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 781
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private usable()Z
    .locals 1

    .line 787
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5_2()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public attachToWindow()V
    .locals 3

    .line 233
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public blockURLEnd()V
    .locals 3

    .line 217
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public blockURLStart()V
    .locals 3

    .line 210
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public creatActivity(J)V
    .locals 2

    .line 242
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 224
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedResidue()V

    .line 229
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 230
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmFinished()V

    return-void
.end method

.method public initEnd()V
    .locals 3

    .line 203
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public initStart(Landroid/taobao/windvane/extra/performance2/IPerformance;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    .line 196
    iput-object p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 198
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStarted()V

    .line 199
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 200
    sget-object p1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "processName"

    invoke-direct {p0, p2, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 251
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    .line 257
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->recordRedirectEntrance()V

    const/4 p1, 0x0

    .line 259
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    .line 260
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 262
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Triver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "triver"

    invoke-direct {p0, v0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 3

    .line 302
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;

    .line 308
    :try_start_0
    invoke-interface {v1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;->onPageFinish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 313
    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    .line 315
    invoke-direct {p0, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->checkoutHash(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 319
    :cond_2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->recordRedirectExport()V

    .line 321
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    .line 322
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "isFinished"

    invoke-direct {p0, v1, v0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "URL"

    .line 323
    invoke-direct {p0, v0, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    iget p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->jsErrorTimes:I

    int-to-long v0, p2

    const-string p2, "jsErrorTimes"

    invoke-direct {p0, p2, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedStatistic(Ljava/lang/String;J)V

    .line 326
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedPerformanceTiming(Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 328
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->analyzeStates()V

    .line 330
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateRecovered()V

    .line 331
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPropertyRecovered()V

    return-void
.end method

.method public onPageReceivedCustomizedFSP(J)V
    .locals 2

    .line 385
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedCustomizedStage(JLjava/lang/String;)V
    .locals 2

    .line 392
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->customizedStageIndentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedError(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;I)V
    .locals 0

    .line 334
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result p1

    if-nez p1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 p1, 0x4

    .line 338
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    .line 340
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    const-string p3, "errorCode"

    invoke-direct {p0, p3, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "errorMsg"

    .line 341
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageReceivedFP(J)V
    .locals 2

    .line 371
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedFSP(J)V
    .locals 2

    .line 378
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedJSError()V
    .locals 1

    .line 423
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iget v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->jsErrorTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->jsErrorTimes:I

    return-void
.end method

.method public onPageReceivedPerformanceTiming(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 2

    .line 347
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$1;-><init>(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)V

    const-string v1, "(function(performance){var timing=performance&&performance.timing;return timing&&JSON.stringify({ns:timing.navigationStart,fs:timing.fetchStart,re:timing.responseEnd,ds:timing.domContentLoadedEventStart,ls:timing.loadEventStart,le:timing.loadEventEnd})})(window.performance)"

    invoke-interface {p1, v1, v0}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageReceivedT1(J)V
    .locals 2

    .line 408
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onPageReceivedT2(J)V
    .locals 0

    .line 415
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageReceivedTTI(J)V
    .locals 5

    .line 399
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 404
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->tti:J

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 2

    .line 284
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object p2, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne p1, p2, :cond_1

    .line 290
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedResidue()V

    .line 291
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmFinished()V

    .line 292
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStarted()V

    .line 294
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->recordRedirectEntrance()V

    :cond_1
    const/4 p1, 0x2

    .line 297
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    .line 299
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->stages:[Ljava/lang/String;

    const/4 p2, 0x5

    aget-object p1, p1, p2

    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStaged(Ljava/lang/String;J)V

    return-void
.end method

.method public onResourceFinished(Ljava/lang/String;I)V
    .locals 3

    .line 502
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 511
    :cond_1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingEndTime:J

    .line 512
    iput p2, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->dataSize:I

    .line 514
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->onResourceFinished(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onResourceReceivedStatusCode(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 478
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x12e

    if-ne p3, v1, :cond_2

    .line 486
    iget-boolean v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->isHTML:Z

    if-eqz v1, :cond_2

    .line 487
    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->pageStatusCallbacks:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 488
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;

    .line 490
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$PageStatusCallback;->onRedirect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :cond_2
    iput p3, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->statusCode:I

    .line 497
    iget-object p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 498
    iget-object p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {p2}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->onResourceReceivedStatusCode(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onResourceReceivedZCacheInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 467
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 475
    :cond_1
    iput-object p2, p1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheInfo:Ljava/lang/String;

    return-void
.end method

.method public onResourceReceivedZCacheState(Ljava/lang/String;I)V
    .locals 1

    .line 456
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->takeResource(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 464
    :cond_1
    iput p2, p1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->zcacheState:I

    return-void
.end method

.method public onResourceStarted(Ljava/lang/String;)V
    .locals 3

    .line 439
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;-><init>(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)V

    .line 444
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->currentTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->loadingStartTime:J

    .line 445
    iput-object p1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->url:Ljava/lang/String;

    .line 446
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->isPage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 447
    iput-boolean v1, v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->isHTML:Z

    .line 449
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->addResource(Ljava/lang/String;Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;)V

    .line 451
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v0}, Landroid/taobao/windvane/extra/performance2/IPerformance;->getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/taobao/windvane/extra/performance2/WVPerformance;->onResourceStarted(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onWebViewNSREvent(I)V
    .locals 1

    .line 430
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result v0

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 434
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "nativeSideRendering"

    invoke-direct {p0, v0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public shouldOverrideUrlLoading(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->usable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    iput-object p2, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->url:Ljava/lang/String;

    .line 273
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object p2, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->state:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object p2, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    if-ne p1, p2, :cond_2

    .line 274
    :cond_1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmAddedResidue()V

    .line 275
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmFinished()V

    .line 276
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onApmStarted()V

    .line 278
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->recordRedirectEntrance()V

    :cond_2
    const/4 p1, 0x1

    .line 281
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onStateChanged(I)V

    return-void
.end method
