.class public Landroid/taobao/windvane/ha/WVHAManager;
.super Ljava/lang/Object;
.source "WVHAManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVHAManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    :try_start_0
    new-instance v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;

    invoke-direct {v0}, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;-><init>()V

    .line 24
    sget-object v1, Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;->CONTENT:Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;

    iput-object v1, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->aggregationType:Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;

    .line 25
    iput-object p0, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->businessType:Ljava/lang/String;

    .line 27
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionDetail:Ljava/lang/String;

    .line 37
    iput-object p1, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionCode:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionArg1:Ljava/lang/String;

    .line 39
    iput-object p3, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionArg2:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/alibaba/ha/bizerrorreporter/BizErrorReporter;->getInstance()Lcom/alibaba/ha/bizerrorreporter/BizErrorReporter;

    move-result-object p0

    sget-object p1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ha/bizerrorreporter/BizErrorReporter;->send(Landroid/content/Context;Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "WVHAManager"

    const-string p2, "commitData: \u65e0\u6cd5\u4e0a\u62a5\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5bfc\u5165bizerrorreporter\u4ee5\u53catbrest!"

    .line 43
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static reportJSError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    :try_start_0
    new-instance v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;

    invoke-direct {v0}, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;-><init>()V

    .line 53
    sget-object v1, Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;->CONTENT:Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;

    iput-object v1, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->aggregationType:Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;

    .line 55
    iput-object p1, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionCode:Ljava/lang/String;

    .line 56
    iput-object p0, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->businessType:Ljava/lang/String;

    .line 57
    iput-object p2, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionDetail:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p0, "Script error"

    .line 59
    iput-object p0, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionArg1:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_0
    iput-object p3, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionArg1:Ljava/lang/String;

    .line 63
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "line: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionArg2:Ljava/lang/String;

    .line 64
    iput-object p5, v0, Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;->exceptionArg3:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/alibaba/ha/bizerrorreporter/BizErrorReporter;->getInstance()Lcom/alibaba/ha/bizerrorreporter/BizErrorReporter;

    move-result-object p0

    sget-object p1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ha/bizerrorreporter/BizErrorReporter;->send(Landroid/content/Context;Lcom/alibaba/ha/bizerrorreporter/module/BizErrorModule;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "WVHAManager"

    const-string p2, "commitData: \u65e0\u6cd5\u4e0a\u62a5\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5bfc\u5165bizerrorreporter\u4ee5\u53catbrest!"

    .line 68
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static toString(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "}"

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "H5HA"

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static uploadApmError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "H5"

    const/4 v1, 0x1

    .line 76
    new-array v1, v1, [Ljava/util/Map;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p0, p1, v1}, Lcom/taobao/monitor/terminator/ApmGodEye;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/util/Map;)V

    .line 77
    invoke-static {p2}, Landroid/taobao/windvane/ha/WVHAManager;->toString(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static uploadApmStage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "H5"

    const/4 v1, 0x1

    .line 82
    new-array v1, v1, [Ljava/util/Map;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/taobao/monitor/terminator/ApmGodEye;->onStage(Ljava/lang/String;Ljava/lang/String;[Ljava/util/Map;)V

    .line 83
    invoke-static {p1}, Landroid/taobao/windvane/ha/WVHAManager;->toString(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
