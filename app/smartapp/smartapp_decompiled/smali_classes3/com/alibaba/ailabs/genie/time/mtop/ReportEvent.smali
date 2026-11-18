.class public Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;
.super Ljava/lang/Object;
.source "ReportEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;,
        Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.content.asyncEventUpload"

.field public static final EVENT_NAME_MARKET:Ljava/lang/String; = "turandot.child.page.card.click.childmarket"

.field public static final EVENT_NAME_VIDEO:Ljava/lang/String; = "turandot.child.video.view.time"

.field private static final SYNC_API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.content.syncEventUpload"

.field private static final TAG:Ljava/lang/String; = "ReportEvent"

.field private static mInstance:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;->mInstance:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;->mInstance:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;

    return-object v0
.end method


# virtual methods
.method public reportTime(JLcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;)V
    .locals 5

    .line 58
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "authInfo"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "userId"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v2, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;->EVENT_TIME:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$EVENT_TYPE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "eventType"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "eventName"

    const-string v4, "turandot.child.video.view.time"

    .line 63
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "durationSeconds"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    const-string p1, "mtop.alibaba.aicloud.t.content.asyncEventUpload"

    .line 66
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 68
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p2, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$1;

    invoke-direct {p2, p0, p3}, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$1;-><init>(Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
