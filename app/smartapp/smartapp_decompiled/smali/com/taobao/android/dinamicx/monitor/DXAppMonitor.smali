.class public Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;
.super Ljava/lang/Object;
.source "DXAppMonitor.java"


# static fields
.field private static dxAppMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

.field private static monitorLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;
    .locals 1

    .line 34
    sget-object v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->dxAppMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 34
    invoke-static {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->createArg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;J)V
    .locals 0

    .line 34
    invoke-static/range {p0 .. p8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p0, :cond_0

    .line 352
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, ","

    .line 355
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x2

    .line 357
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private static buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    if-eqz p2, :cond_0

    .line 279
    iget-object p1, p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    const-string/jumbo v1, "template"

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-wide p1, p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "version"

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 282
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 283
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "error"

    .line 288
    invoke-virtual {p0, p1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createArg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .line 313
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "bizName"

    const-string v2, "DinamicX"

    .line 314
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "sceneName"

    .line 316
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string/jumbo v1, "serviceId"

    if-nez p0, :cond_1

    .line 321
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "DX_Default_Service_Id"

    .line 323
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "featureType"

    .line 326
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_2
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "version"

    invoke-virtual {v0, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "samplingRate"

    const-string p1, "1.0"

    .line 330
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    .line 332
    iget-object p0, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 333
    iget-object p0, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    const-string/jumbo p1, "templateName"

    invoke-virtual {v0, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide p1, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "templateVersion"

    invoke-virtual {v0, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object p0, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 337
    iget-object p0, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    const-string/jumbo p1, "templateUrl"

    invoke-virtual {v0, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p4, :cond_6

    .line 340
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 341
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    if-eqz p1, :cond_5

    .line 342
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 343
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public static getFailSampleResult()Z
    .locals 5

    .line 388
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getFeatureType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 362
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 366
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 368
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getMonitorLevel()I
    .locals 1

    .line 378
    sget v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->monitorLevel:I

    return v0
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0"

    return-object v0
.end method

.method public static setDxAppMonitor(Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;)V
    .locals 0

    .line 40
    sput-object p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->dxAppMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setMonitorLevel(I)V
    .locals 0

    .line 49
    sput p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->monitorLevel:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static trackerAppMonitorError(Lcom/taobao/android/dinamicx/DXError;Z)V
    .locals 1
    .param p0    # Lcom/taobao/android/dinamicx/DXError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    :try_start_0
    sget-object v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->dxAppMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXError;->biztype:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;

    invoke-direct {v0, p0, p1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;-><init>(Lcom/taobao/android/dinamicx/DXError;Z)V

    .line 229
    invoke-static {v0}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runForMonitor(Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 232
    invoke-static {p0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static trackerAppMonitorPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;DZ)V"
        }
    .end annotation

    .line 83
    :try_start_0
    sget v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->monitorLevel:I

    move v1, p0

    if-eq v0, v1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 86
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;

    move-object v1, v0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p1

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;-><init>(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;DZ)V

    .line 120
    invoke-static {v0}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runForMonitor(Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static trackerAsyncRender(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    :try_start_0
    sget v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->monitorLevel:I

    if-eq v0, p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 133
    :cond_0
    new-instance p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    invoke-static {p0}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runForMonitor(Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    invoke-static {p0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static trackerError(Lcom/taobao/android/dinamicx/DXError;)V
    .locals 1
    .param p0    # Lcom/taobao/android/dinamicx/DXError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 172
    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static trackerError(Lcom/taobao/android/dinamicx/DXError;Z)V
    .locals 1
    .param p0    # Lcom/taobao/android/dinamicx/DXError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 182
    invoke-static {p0, p1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerAppMonitorError(Lcom/taobao/android/dinamicx/DXError;Z)V

    .line 183
    invoke-static {p0, p1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerUmbrellaError(Lcom/taobao/android/dinamicx/DXError;Z)V

    .line 184
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->getInstance()Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->collectErrorInfo(Lcom/taobao/android/dinamicx/DXError;Z)V

    return-void
.end method

.method public static trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 152
    :try_start_0
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    invoke-direct {v0, p0}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 153
    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 154
    new-instance p0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    invoke-direct {p0, p2, p3, p4}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    iput-object p5, p0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 156
    iget-object p1, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-static {p0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;J)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 251
    invoke-static {p0, p2, p3, p1, p4}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->createArg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 253
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    const-string/jumbo p8, "timeStamp"

    invoke-virtual {p2, p8, p7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    const-string p7, "errorMsg"

    .line 255
    invoke-virtual {p2, p7, p6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p7

    if-nez p7, :cond_1

    .line 259
    sget-object v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->dxAppMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, ""

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "Page_Umbrella_Govern"

    const-string v2, "DinamicX"

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;->alarm_commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "errorCode:"

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "_errorMsg:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p3, p1, p4, p2}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DinamicX"

    .line 262
    invoke-static {p1, p1, p0}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLoge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;DZ)V"
        }
    .end annotation

    .line 68
    invoke-static/range {p0 .. p8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerAppMonitorPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V

    .line 69
    invoke-static/range {p0 .. p7}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerUmSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;D)V

    .line 71
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->getInstance()Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->collectPerformanceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;D)V

    return-void
.end method

.method private static trackerUmSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;D)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    .line 77
    invoke-static/range {p0 .. p7}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->commitSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;D)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static trackerUmbrellaError(Lcom/taobao/android/dinamicx/DXError;Z)V
    .locals 0
    .param p0    # Lcom/taobao/android/dinamicx/DXError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 194
    invoke-static {p0, p1}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->commitError(Lcom/taobao/android/dinamicx/DXError;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
