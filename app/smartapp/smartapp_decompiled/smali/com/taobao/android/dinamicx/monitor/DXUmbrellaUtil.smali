.class public Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;
.super Ljava/lang/Object;
.source "DXUmbrellaUtil.java"


# static fields
.field private static final FEATURE_END:Ljava/lang/String; = "_umbrella2"

.field private static umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->buildFeatureType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 23
    invoke-static {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->createArg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;
    .locals 1

    .line 23
    sget-object v0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->logError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->commitFail(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static buildFeatureType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_umbrella2"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildUmDimMap(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    .line 183
    sget-object v1, Lcom/taobao/android/dinamicx/monitor/DXUmDimKeyConstant;->UMB_21:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/taobao/android/dinamicx/monitor/DXUmDimKeyConstant;->UMB_22:Ljava/lang/String;

    iget-wide v2, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/taobao/android/dinamicx/monitor/DXUmDimKeyConstant;->UMB_23:Ljava/lang/String;

    iget-object p0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 188
    sget-object p0, Lcom/taobao/android/dinamicx/monitor/DXUmDimKeyConstant;->UMB_24:Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->serviceId:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static commitError(Lcom/taobao/android/dinamicx/DXError;Z)V
    .locals 1

    .line 79
    sget-object v0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 82
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;-><init>(Lcom/taobao/android/dinamicx/DXError;Z)V

    invoke-static {v0}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runForMonitor(Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static commitFail(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->featureType:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->buildFeatureType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    iget-object v3, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->serviceId:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 129
    iget-object v0, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->serviceId:Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->extraParams:Ljava/util/Map;

    invoke-static {p0, v2, v0, p1, v1}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->createArg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->code:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 131
    iget-object v9, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string p1, "errorMsg"

    .line 134
    invoke-interface {v7, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorCode"

    .line 135
    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    sget-object v1, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    const-string v5, "DinamicX"

    move-object v6, p0

    invoke-virtual/range {v1 .. v9}, Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static commitSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;D)V
    .locals 6
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

    .line 46
    sget-object p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 49
    :cond_0
    new-instance p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)V

    invoke-static {p0}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runForMonitor(Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static createArg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bizName"

    const-string v2, "DinamicX"

    .line 221
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "sceneName"

    .line 223
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string/jumbo v1, "serviceId"

    if-nez p0, :cond_1

    .line 228
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "DX_Default_Service_Id"

    .line 230
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "featureType"

    .line 233
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "version"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "samplingRate"

    const-string p1, "1.0"

    .line 237
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    .line 239
    iget-object p0, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 240
    iget-object p0, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    const-string/jumbo p1, "templateName"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
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

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object p0, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 244
    iget-object p0, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    const-string/jumbo p1, "templateUrl"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p4, :cond_6

    .line 247
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 248
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

    .line 249
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 250
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0"

    return-object v0
.end method

.method private static logError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->featureType:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->buildFeatureType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    iget-object v7, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 154
    invoke-static {p1, p2}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->buildUmDimMap(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)Ljava/util/Map;

    move-result-object v8

    .line 155
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget-object v0, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->serviceId:Ljava/lang/String;

    iget-object p2, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->extraParams:Ljava/util/Map;

    invoke-static {p0, v4, v0, p1, p2}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->createArg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "errorMsg"

    .line 159
    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "errorCode"

    .line 160
    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p2, "args"

    .line 163
    invoke-interface {v9, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    const-string v2, "DinamicX"

    move-object v3, p0

    invoke-virtual/range {v1 .. v9}, Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static setUmbrellaImpl(Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;)V
    .locals 0

    .line 29
    sput-object p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
