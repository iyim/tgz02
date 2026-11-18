.class public Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final a:Ljava/lang/String; = "DeviceInfo"

.field private static b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;
    .locals 2

    .line 16
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;-><init>()V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->b:Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    return-object v0
.end method


# virtual methods
.method public getMobileBrand()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileManufacturer()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileModel()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 54
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "com.ut.device.UTDevice"

    const-string v2, "getUtdid"

    invoke-static {p1, v2, v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 56
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtdid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 60
    :cond_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
