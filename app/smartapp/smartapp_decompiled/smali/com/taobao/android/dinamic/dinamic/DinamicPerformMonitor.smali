.class public Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;
.super Ljava/lang/Object;
.source "DinamicPerformMonitor.java"


# static fields
.field private static final PAGE:Ljava/lang/String; = "Dinamic"

.field private static final TAG:Ljava/lang/String; = "Dinamic_2"


# instance fields
.field dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    return-void
.end method

.method private appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    if-nez p1, :cond_0

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, ","

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 70
    iget-object p2, p3, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    const-string/jumbo v1, "template"

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p2, p3, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    const-string/jumbo p3, "version"

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    const-string p2, "error"

    .line 74
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createArg(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    return-object p1

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "templateName="

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",templateVersion="

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public trackBindData(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;ZLcom/taobao/android/dinamic/view/DinamicError;D)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 92
    iget-object v3, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    if-nez v3, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-direct {v0, v2}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->createArg(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "module"

    .line 97
    invoke-direct {v0, v3, v4, v1}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trackBindData"

    const-string v5, "Dinamic_2"

    if-eqz p3, :cond_1

    .line 99
    iget-object v6, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Dinamic"

    const-string v9, "BindData"

    invoke-interface {v6, v8, v9, v7}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v10, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v11, "Dinamic"

    const-string v12, "BindData"

    move-wide/from16 v14, p5

    invoke-interface/range {v10 .. v15}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->counter_commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const/4 v3, 0x0

    .line 102
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v5, v5, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->remoteLogi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 105
    :cond_1
    iget-object v6, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v3, ""

    if-eqz p4, :cond_3

    .line 106
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getErrorMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    goto :goto_1

    :cond_3
    :goto_0
    move-object v10, v3

    :goto_1
    if-nez p4, :cond_4

    move-object v11, v3

    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getAllErrorDescription()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    :goto_2
    const-string v7, "Dinamic"

    const-string v8, "BindData"

    .line 105
    invoke-interface/range {v6 .. v11}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_5

    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getAllErrorDescription()Ljava/lang/String;

    move-result-object v3

    .line 110
    :goto_3
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v5, v5, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->remoteLoge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public trackCreateView(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;ZLcom/taobao/android/dinamic/view/DinamicError;D)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 35
    iget-object v3, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    if-nez v3, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-direct {v0, v2}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->createArg(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "module"

    .line 40
    invoke-direct {v0, v3, v4, v1}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trackCreateView"

    const-string v5, "Dinamic_2"

    if-eqz p3, :cond_1

    .line 42
    iget-object v6, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Dinamic"

    const-string v9, "CreateView"

    invoke-interface {v6, v8, v9, v7}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v10, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v11, "Dinamic"

    const-string v12, "CreateView"

    move-wide/from16 v14, p5

    invoke-interface/range {v10 .. v15}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->counter_commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const/4 v3, 0x0

    .line 45
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v5, v5, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->remoteLogi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 49
    :cond_1
    iget-object v6, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v3, ""

    if-eqz p4, :cond_3

    .line 50
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getErrorMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    goto :goto_1

    :cond_3
    :goto_0
    move-object v10, v3

    :goto_1
    if-nez p4, :cond_4

    move-object v11, v3

    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getAllErrorDescription()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    :goto_2
    const-string v7, "Dinamic"

    const-string v8, "CreateView"

    .line 49
    invoke-interface/range {v6 .. v11}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_5

    goto :goto_3

    .line 55
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getAllErrorDescription()Ljava/lang/String;

    move-result-object v3

    .line 54
    :goto_3
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v5, v5, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->remoteLoge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public trackDownloadTemplate(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;ZLcom/taobao/android/dinamic/view/DinamicError;D)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 209
    iget-object v3, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    if-nez v3, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-direct {v0, v2}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->createArg(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "module"

    .line 214
    invoke-direct {v0, v3, v4, v1}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trackDownloadTemplate"

    const-string v5, "Dinamic_2"

    if-eqz p3, :cond_1

    .line 216
    iget-object v6, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Dinamic"

    const-string v9, "DownloadTemplate"

    invoke-interface {v6, v8, v9, v7}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v10, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v11, "Dinamic"

    const-string v12, "DownloadTemplate"

    move-wide/from16 v14, p5

    invoke-interface/range {v10 .. v15}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->counter_commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const/4 v3, 0x0

    .line 220
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v5, v5, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->remoteLogi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 223
    :cond_1
    iget-object v6, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v3, ""

    if-eqz p4, :cond_3

    .line 224
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getErrorMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    goto :goto_1

    :cond_3
    :goto_0
    move-object v10, v3

    :goto_1
    if-nez p4, :cond_4

    goto :goto_2

    .line 226
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getAllErrorDescription()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v11, v3

    const-string v7, "Dinamic"

    const-string v8, "DownloadTemplate"

    .line 223
    invoke-interface/range {v6 .. v11}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "downloadError"

    .line 229
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v5, v5, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->remoteLoge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public trackFetchExactTemplate(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;D)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 164
    iget-object v3, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    if-nez v3, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-direct {v0, v2}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->createArg(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    iget-object v4, v1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    const-string v5, "originalTemplateVersion"

    invoke-direct {v0, v3, v5, v4}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "module"

    move-object/from16 v5, p1

    .line 170
    invoke-direct {v0, v3, v4, v5}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    sget-object v4, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->STRATEGY_DEFAULT:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "0"

    goto :goto_0

    :cond_1
    const-string v4, "1"

    :goto_0
    const-string v5, "cacheStrategy"

    invoke-direct {v0, v3, v5, v4}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->isPreset()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->isPreset()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v4, 0x0

    .line 181
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->isPreset()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v1, v1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    iget-object v2, v2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    if-eqz v5, :cond_5

    .line 187
    iget-object v1, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Dinamic"

    const-string v5, "FetchExactTemplate"

    invoke-interface {v1, v4, v5, v2}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 189
    :cond_5
    iget-object v6, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "Dinamic"

    const-string v8, "FetchExactTemplate"

    invoke-interface/range {v6 .. v11}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_2
    iget-object v12, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v13, "Dinamic"

    const-string v14, "FetchExactTemplate"

    move-wide/from16 v16, p5

    invoke-interface/range {v12 .. v17}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->counter_commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public trackHandleEvent(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7

    .line 142
    iget-object v0, p0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "identifier"

    .line 147
    invoke-direct {p0, v0, v1, p2}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "module"

    .line 148
    invoke-direct {p0, v0, p2, p1}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "Dinamic"

    const-string v3, "HandleEvent"

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->counter_commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public trackReadTemplate(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;ZLcom/taobao/android/dinamic/view/DinamicError;D)V
    .locals 7

    .line 283
    iget-object v0, p0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-direct {p0, p2}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->createArg(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "module"

    .line 288
    invoke-direct {p0, p2, v0, p1}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    .line 290
    iget-object p1, p0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Dinamic"

    const-string v0, "ReadTemplate"

    invoke-interface {p1, p4, v0, p3}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "Dinamic"

    const-string v3, "ReadTemplate"

    move-wide v5, p5

    invoke-interface/range {v1 .. v6}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->counter_commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_3

    .line 294
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p2, ""

    if-eqz p4, :cond_3

    .line 295
    invoke-virtual {p4}, Lcom/taobao/android/dinamic/view/DinamicError;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getErrorMap()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    move-object p6, p3

    goto :goto_1

    :cond_3
    :goto_0
    move-object p6, p2

    :goto_1
    if-nez p4, :cond_4

    goto :goto_2

    .line 297
    :cond_4
    invoke-virtual {p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getAllErrorDescription()Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v0, p2

    const-string p2, "Dinamic"

    const-string p3, "ReadTemplate"

    move-object p4, p5

    move-object p5, p6

    move-object p6, v0

    .line 294
    invoke-interface/range {p1 .. p6}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public trackWriteTemplate(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;ZLcom/taobao/android/dinamic/view/DinamicError;D)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 246
    iget-object v3, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    if-nez v3, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-direct {v0, v2}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->createArg(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "module"

    .line 251
    invoke-direct {v0, v3, v4, v1}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->appendStr(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trackWriteTemplate"

    const-string v5, "Dinamic_2"

    if-eqz p3, :cond_1

    .line 253
    iget-object v6, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Dinamic"

    const-string v9, "WriteTemplate"

    invoke-interface {v6, v8, v9, v7}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v10, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v11, "Dinamic"

    const-string v12, "WriteTemplate"

    move-wide/from16 v14, p5

    invoke-interface/range {v10 .. v15}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->counter_commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const/4 v3, 0x0

    .line 257
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v5, v5, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->remoteLogi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 260
    :cond_1
    iget-object v6, v0, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->dinamicAppMonitor:Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v3, ""

    if-eqz p4, :cond_3

    .line 261
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getErrorMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    goto :goto_1

    :cond_3
    :goto_0
    move-object v10, v3

    :goto_1
    if-nez p4, :cond_4

    goto :goto_2

    .line 263
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamic/view/DinamicError;->getAllErrorDescription()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v11, v3

    const-string v7, "Dinamic"

    const-string v8, "WriteTemplate"

    .line 260
    invoke-interface/range {v6 .. v11}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->alarm_commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "writeTemplateError"

    .line 265
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->buildRemoteLogContent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v5, v5, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->remoteLoge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
