.class public Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;
.super Ljava/lang/Object;
.source "UmidSdkWrapper.java"


# static fields
.field private static volatile initUmidFinished:Z = false

.field private static volatile umidToken:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 16
    sput-boolean p0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->initUmidFinished:Z

    return p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    sput-object p0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->umidToken:Ljava/lang/String;

    return-object p0
.end method

.method public static getSecurityToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->umidToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    invoke-static {p0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->umidToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    :cond_0
    sget-object p0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->umidToken:Ljava/lang/String;

    return-object p0
.end method

.method public static startUmidTaskSync(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 48
    :try_start_0
    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->initUmidFinished:Z

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper$1;

    invoke-direct {v3}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper$1;-><init>()V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/taobao/dp/DeviceSecuritySDK;->initAsync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V

    const/16 p1, 0xbb8

    const/16 v0, 0xa

    .line 71
    :goto_0
    sget-boolean v1, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->initUmidFinished:Z

    if-nez v1, :cond_1

    if-lez p1, :cond_1

    int-to-long v1, v0

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 p1, p1, -0xa

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {p0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 79
    sput-object p0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->umidToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Umid request error."

    .line 84
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logMessage(Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logException(Ljava/lang/Throwable;)V

    .line 87
    :cond_2
    :goto_1
    sget-object p0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->umidToken:Ljava/lang/String;

    return-object p0
.end method
