.class public Landroid/taobao/windvane/extra/performance2/WVPageTrackerAPI;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVPageTrackerAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    const-string/jumbo v0, "reportPerformanceInfo"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/extra/performance2/WVPageTrackerAPI;->reportPerformanceInfo(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reportPerformanceInfo(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 8

    .line 26
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 27
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTrackerAPI;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    const-string v2, "msg"

    const-string v3, "HY_FAILED"

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    const-string p1, "performance object does not exist"

    .line 29
    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 34
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTrackerAPI;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    const-string v4, "firstScreenPaint"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Landroid/taobao/windvane/extra/performance2/IPerformance;->receiveJSMessageForCustomizedFSP(J)V

    const-string p1, "otherPerformanceStage"

    .line 39
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 46
    iget-object v7, p0, Landroid/taobao/windvane/extra/performance2/WVPageTrackerAPI;->performance:Landroid/taobao/windvane/extra/performance2/IPerformance;

    invoke-interface {v7, v5, v6, v4}, Landroid/taobao/windvane/extra/performance2/IPerformance;->receiveJSMessageForCustomizedStage(JLjava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_1
    return-void
.end method
