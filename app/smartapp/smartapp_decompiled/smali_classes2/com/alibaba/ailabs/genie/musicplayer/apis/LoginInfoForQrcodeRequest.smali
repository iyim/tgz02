.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;
.super Ljava/lang/Object;
.source "LoginInfoForQrcodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestDataWechat;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.ybClientSearch.getLoginInfoForQrcode"

.field private static final API_NAME_WECHAT:Ljava/lang/String; = "mtop.alibaba.ai.apishare.tme.TmeService.getQRCodeForWeChat"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "LoginInfoForQrcode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;->createThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private createThrowable(Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1

    .line 156
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLoginInfoForQrcode(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestData;-><init>()V

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestData;->authInfo:Ljava/lang/String;

    .line 37
    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestData;->source:Ljava/lang/String;

    .line 39
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.t.ybClientSearch.getLoginInfoForQrcode"

    .line 40
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 41
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 43
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.getLoginInfoForQrcode  , authInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestData;->authInfo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,source:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoginInfoForQrcode"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$LoginInfoForQrcodeRequest$-KC7oR7-NnJUhxJtPqfIDOHc_-I;

    invoke-direct {p1, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$LoginInfoForQrcodeRequest$-KC7oR7-NnJUhxJtPqfIDOHc_-I;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getLoginInfoForWechatQrcode(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestDataWechat;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestDataWechat;-><init>()V

    .line 108
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestDataWechat;->authInfo:Ljava/lang/String;

    .line 109
    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestDataWechat;->sp:Ljava/lang/String;

    const-string v1, "com.alibaba.daa.coin"

    .line 110
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestDataWechat;->packageName:Ljava/lang/String;

    .line 112
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.ai.apishare.tme.TmeService.getQRCodeForWeChat"

    .line 113
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 114
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 116
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 117
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apiName:mtop.alibaba.ai.apishare.tme.TmeService.getQRCodeForWeChat  , authInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$RequestDataWechat;->authInfo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,source:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoginInfoForQrcode"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$LoginInfoForQrcodeRequest$j0I7IIsv7BE4NoQGxf4Yw25svgo;

    invoke-direct {p1, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/-$$Lambda$LoginInfoForQrcodeRequest$j0I7IIsv7BE4NoQGxf4Yw25svgo;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLoginInfoForQrcode$159$LoginInfoForQrcodeRequest(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    .line 49
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public synthetic lambda$getLoginInfoForWechatQrcode$160$LoginInfoForQrcodeRequest(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$2;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    .line 122
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 149
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
