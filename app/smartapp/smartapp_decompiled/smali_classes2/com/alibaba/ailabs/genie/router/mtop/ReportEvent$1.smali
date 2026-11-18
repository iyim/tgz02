.class Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;
.super Ljava/lang/Object;
.source "ReportEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$router_open_appid:Ljava/lang/String;

.field final synthetic val$router_open_packagename:Ljava/lang/String;

.field final synthetic val$router_open_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;->this$0:Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;->val$router_open_type:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;->val$router_open_packagename:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;->val$router_open_appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 65
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "authInfo"

    .line 68
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 71
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v2, "eventType"

    .line 74
    sget-object v3, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$EVENT_TYPE;->EVENT_NORMAL:Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$EVENT_TYPE;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$EVENT_TYPE;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "eventName"

    .line 75
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;->val$eventName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "durationSeconds"

    const/4 v3, 0x0

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    const-string v1, "mtop.alibaba.aicloud.t.content.asyncEventUpload"

    .line 78
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1$1;-><init>(Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "router_open_type"

    .line 103
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;->val$router_open_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "router_open_packagename"

    .line 104
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;->val$router_open_packagename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "router_open_appid"

    .line 105
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;->val$router_open_appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "router_open_app"

    const-string v2, ""

    .line 107
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
