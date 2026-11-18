.class public Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;
.super Ljava/lang/Object;
.source "DeviceTokenClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;
    }
.end annotation


# static fields
.field private static deviceTokenClientInstance:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->context:Landroid/content/Context;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DeviceTokenClient initialization error: context is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;)Landroid/content/Context;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;
    .locals 2

    .line 27
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->deviceTokenClientInstance:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->deviceTokenClientInstance:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->deviceTokenClientInstance:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->deviceTokenClientInstance:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

    return-object p0
.end method


# virtual methods
.method public initToken(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;)V
    .locals 4

    .line 42
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    .line 44
    invoke-interface {p3, v1, p1}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;->onResult(Ljava/lang/String;I)V

    :cond_0
    return-void

    .line 49
    :cond_1
    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    const/4 p1, 0x3

    .line 51
    invoke-interface {p3, v1, p1}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;->onResult(Ljava/lang/String;I)V

    :cond_2
    return-void

    .line 57
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/otherid/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utdid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tid"

    .line 59
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    .line 60
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appName"

    .line 61
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appKeyClient"

    .line 62
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "rpcVersion"

    const-string v1, "3"

    .line 63
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "appchannel"

    const-string v1, "openapi"

    .line 64
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->getInstance()Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    move-result-object p2

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;

    invoke-direct {v1, p0, v0, p3, p1}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;-><init>(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
