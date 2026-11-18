.class public Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;
.super Ljava/lang/Object;
.source "OpenEventReport.java"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "ReportAppOpInfo"

.field private static final TAG:Ljava/lang/String; = "OpenEventReport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public report(Ljava/lang/String;)V
    .locals 5

    const-string v0, "OpenEventReport"

    const-string v1, "report"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->isChildModel()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "\u6210\u4eba\u6a21\u5f0f, return"

    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report, pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "pkgName"

    .line 30
    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "opType"

    const-string v2, "open"

    .line 31
    invoke-virtual {v1, p1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v1

    const-string v2, "AliGenie.AppStore"

    const-string v3, "ReportAppOpInfo"

    new-instance v4, Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport$1;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport$1;-><init>(Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;)V

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
