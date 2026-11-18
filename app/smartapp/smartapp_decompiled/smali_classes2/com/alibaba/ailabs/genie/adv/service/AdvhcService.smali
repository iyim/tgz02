.class public Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;
.super Ljava/lang/Object;
.source "AdvhcService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;


# static fields
.field public static final AD_APP_NAME:Ljava/lang/String; = "tianmaojingling-ilfow"

.field public static final AD_HEIGHT:Ljava/lang/String; = "600"

.field public static final AD_WIDTH:Ljava/lang/String; = "1024"

.field public static final HUICHUAN_URL:Ljava/lang/String; = "https://huichuan.sm.cn/nativead"

.field public static final MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

.field public static METHOD_GET_HC_ADV_DATA:I = 0x0

.field public static PROP_BUILD_VERSION:Ljava/lang/String; = "ro.build.version.release"

.field public static PROP_MODEL:Ljava/lang/String; = "ro.product.model"

.field public static final TAG:Ljava/lang/String; = "AdvService"

.field private static mInstance:Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "text/x-markdown; charset=utf-8"

    .line 38
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

    const/16 v0, 0x2711

    .line 43
    sput v0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->METHOD_GET_HC_ADV_DATA:I

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->mInstance:Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->mInstance:Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;
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
.method public getAdvertise(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 5

    .line 69
    new-instance v0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;-><init>()V

    .line 73
    new-instance v1, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;-><init>()V

    .line 74
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setDevId(Ljava/lang/String;)V

    .line 75
    sget-object p2, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->PROP_MODEL:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p2, v2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setDevice(Ljava/lang/String;)V

    const-string p2, "android"

    .line 76
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setOs(Ljava/lang/String;)V

    .line 77
    sget-object v3, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->PROP_BUILD_VERSION:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setOsv(Ljava/lang/String;)V

    const-string v2, "1024"

    .line 78
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setSw(Ljava/lang/String;)V

    const-string v3, "600"

    .line 79
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setSh(Ljava/lang/String;)V

    const-string v4, "2"

    .line 80
    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setIs_jb(Ljava/lang/String;)V

    const-string v4, "Wi-Fi"

    .line 81
    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setAccess(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/utils/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setMac(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/AdvApplication;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/adv/utils/Utils;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;->setClient_ip(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->setAdDeviceInfo(Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdDeviceInfo;)V

    .line 86
    new-instance v1, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;-><init>()V

    .line 87
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->setFr(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->setUtdid(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/AdvApplication;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->setPkg_name(Ljava/lang/String;)V

    const-string p2, "tianmaojingling-ilfow"

    .line 91
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->setApp_name(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/AdvApplication;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->setPkg_ver(Ljava/lang/String;)V

    const-string p2, "Mozilla/5.0 (Linux; Android 8.1; TmallGenie Build/LMY48B; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/43.0.2357.65 Mobile Safari/537.36"

    .line 93
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;->setUa(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->setAdAppInfo(Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdAppInfo;)V

    .line 96
    new-instance p2, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;-><init>()V

    .line 97
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->setSlot_id(Ljava/lang/String;)V

    const-string p1, "1"

    .line 98
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->setReq_cnt(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->setAw(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2, v3}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->setAh(Ljava/lang/String;)V

    const-string p1, "0"

    .line 101
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->setSlot_type(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2, p4}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->setWid(Ljava/lang/String;)V

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->setAdPosInfoList(Ljava/util/List;)V

    .line 107
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdvService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 p2, 0x10

    .line 110
    new-array p2, p2, [B

    .line 111
    array-length p3, p2

    array-length p4, p1

    add-int/2addr p3, p4

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 112
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    const-string p2, "https://huichuan.sm.cn/nativead"

    .line 116
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object p2, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->MEDIA_TYPE_MARKDOWN:Lokhttp3/MediaType;

    .line 117
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService$1;

    invoke-direct {p2, p0, p5}, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService$1;-><init>(Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public method(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 8

    if-eqz p1, :cond_0

    const-string v0, ""

    const-string v1, "slotId"

    .line 58
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "uuid"

    .line 59
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "utdid"

    .line 60
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "wid"

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get huichuan adv data, req param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdvService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v7, p2

    .line 63
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->getAdvertise(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V

    :cond_0
    return-void
.end method
