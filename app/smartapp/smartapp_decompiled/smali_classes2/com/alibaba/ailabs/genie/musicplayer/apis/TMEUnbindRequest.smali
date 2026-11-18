.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest;
.super Ljava/lang/Object;
.source "TMEUnbindRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.ybClientSearch.unbind"

.field private static final API_NE_NAME:Ljava/lang/String; = "mtop.alibaba.ai.UserTokenService.invalidNew"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "UnbindRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public unbind(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;)V
    .locals 4

    .line 39
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestData;-><init>()V

    .line 40
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestData;->authInfo:Ljava/lang/String;

    .line 42
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "NE"

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "mtop.alibaba.ai.UserTokenService.invalidNew"

    .line 44
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v2, 0x29fb

    if-nez p1, :cond_1

    .line 46
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "linkId"

    .line 47
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-wide/16 v2, 0x0

    .line 51
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 55
    :goto_0
    iput-wide v2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestData;->accountLinkId:J

    goto :goto_1

    .line 57
    :cond_0
    iput-wide v2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestData;->accountLinkId:J

    goto :goto_1

    .line 60
    :cond_1
    iput-wide v2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestData;->accountLinkId:J

    goto :goto_1

    :cond_2
    const-string p2, "mtop.alibaba.aicloud.t.ybClientSearch.unbind"

    .line 63
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 64
    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestData;->sp:Ljava/lang/String;

    :goto_1
    const-string p1, "1.0"

    .line 66
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    const-string p1, "UnbindRequest"

    const-string p2, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.unbind"

    .line 68
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$1;

    invoke-direct {p2, p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;)V

    .line 71
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 86
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
