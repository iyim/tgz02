.class public Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;
.super Ljava/lang/Object;
.source "GetPhoneUtdidByGenieUserIdService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;


# static fields
.field public static final AD_APP_NAME:Ljava/lang/String; = "tianmaojingling-ilfow"

.field public static final AD_HEIGHT:Ljava/lang/String; = "600"

.field public static final AD_WIDTH:Ljava/lang/String; = "1024"

.field public static final ERR_CODE_FAILED:I = -0x1

.field public static final ERR_CODE_MTOP_NOT_SUCCESS:I = -0x4

.field public static final ERR_CODE_RESPONSE_DATA_IS_NULL:I = -0x3

.field public static final ERR_CODE_RESPONSE_IS_NULL:I = -0x2

.field public static final ERR_CODE_RESPONSE_MODEL_IS_NULL:I = -0x5

.field public static final ERR_CODE_RESPONSE_MSG_CODE:I = -0x6

.field public static final HUICHUAN_URL:Ljava/lang/String; = "https://huichuan.sm.cn/nativead"

.field public static final MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

.field public static METHOD_GET_PHONE_UTDID_DATA:I = 0x0

.field public static PROP_BUILD_VERSION:Ljava/lang/String; = "ro.build.version.release"

.field public static PROP_MODEL:Ljava/lang/String; = "ro.product.model"

.field public static final TAG:Ljava/lang/String; = "AdvService"

.field private static mInstance:Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "text/x-markdown; charset=utf-8"

    .line 41
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;->MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

    const/16 v0, 0x2713

    .line 45
    sput v0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;->METHOD_GET_PHONE_UTDID_DATA:I

    .line 46
    new-instance v0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;->mInstance:Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;->mInstance:Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getPhoneUtdid(Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 5

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uid"

    .line 80
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v2, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v4, "mtop.alibaba.aicloud.t.advertise.getUtdIdByUid"

    .line 83
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v4, "1.0"

    .line 84
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 85
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 86
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 89
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    new-instance v2, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService$1;-><init>(Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    .line 125
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "type"

    const-string v2, "request"

    .line 126
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "genie_userid"

    .line 128
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "spm-cnt"

    const-string v1, "a2i1i.b90837451"

    .line 129
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "getPhoneUtdidByGenieUserId"

    const/4 v1, 0x0

    .line 130
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/adv/ut/UTNotify;->onPageHitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public method(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "pid"

    const-string v1, ""

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get phone utdid, req param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdvService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;->getPhoneUtdid(Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V

    :cond_0
    return-void
.end method
