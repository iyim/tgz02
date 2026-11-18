.class public Lcom/alibaba/ailabs/genie/adv/service/AdvService;
.super Ljava/lang/Object;
.source "AdvService.java"

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

.field public static METHOD_GET_TAOBAOKE_ADV_DATA:I = 0x0

.field public static PROP_BUILD_VERSION:Ljava/lang/String; = "ro.build.version.release"

.field public static PROP_MODEL:Ljava/lang/String; = "ro.product.model"

.field public static final TAG:Ljava/lang/String; = "AdvService"

.field private static mInstance:Lcom/alibaba/ailabs/genie/adv/service/AdvService;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "text/x-markdown; charset=utf-8"

    .line 33
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/adv/service/AdvService;->MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

    const/16 v0, 0x2712

    .line 38
    sput v0, Lcom/alibaba/ailabs/genie/adv/service/AdvService;->METHOD_GET_TAOBAOKE_ADV_DATA:I

    .line 39
    new-instance v0, Lcom/alibaba/ailabs/genie/adv/service/AdvService;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/adv/service/AdvService;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/adv/service/AdvService;->mInstance:Lcom/alibaba/ailabs/genie/adv/service/AdvService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/adv/service/AdvService;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/adv/service/AdvService;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/adv/service/AdvService;->mInstance:Lcom/alibaba/ailabs/genie/adv/service/AdvService;
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
.method public getAdvertise(Ljava/lang/String;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 4

    .line 68
    new-instance v0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;-><init>()V

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->setId(Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v3, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;-><init>()V

    .line 74
    invoke-virtual {v3, p1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$Imp;->setId(Ljava/lang/String;)V

    .line 75
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->setImpList(Ljava/util/List;)V

    .line 78
    new-instance p1, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;-><init>()V

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/AdvApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;->setPackage_name(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/AdvApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;->setApp_version(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->setAppInfo(Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$AppInfo;)V

    .line 83
    new-instance p1, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;-><init>()V

    const-string v1, "Mozilla/5.0 (Linux; Android 8.1; TmallGenie Build/LMY48B; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/43.0.2357.65 Mobile Safari/537.36"

    .line 84
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->setUa(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/AdvApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/adv/utils/Utils;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->setIp(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/utils/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->setMac(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 87
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->setConnectiontype(I)V

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->setDevicetype(I)V

    const-string v3, "Android"

    .line 89
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->setOs(Ljava/lang/String;)V

    .line 90
    sget-object v3, Lcom/alibaba/ailabs/genie/adv/service/AdvService;->PROP_BUILD_VERSION:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->setOsv(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;->setUuid(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->setDeviceInfo(Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$DeviceInfo;)V

    .line 94
    new-instance p1, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;-><init>()V

    .line 95
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;->setId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->setUserInfo(Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;)V

    .line 98
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.t.commonPay.createOrder"

    .line 99
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 100
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 102
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 104
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;-><init>(Lcom/alibaba/ailabs/genie/adv/service/AdvService;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 172
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public method(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "pid"

    const-string v1, ""

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get taobaoke adv data, req param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdvService"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/ailabs/genie/adv/service/AdvService;->getAdvertise(Ljava/lang/String;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V

    :cond_0
    return-void
.end method
