.class public Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;
.super Ljava/lang/Object;
.source "OnlineHostConfig.java"


# static fields
.field private static instance:Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;


# instance fields
.field private currentEnvConfig:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->instance:Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->currentEnvConfig:I

    return-void
.end method

.method public static getInstance()Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;
    .locals 1

    .line 16
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->instance:Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    return-object v0
.end method


# virtual methods
.method public getEnvConfig()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->currentEnvConfig:I

    return v0
.end method

.method public getOnlineHostAdress()Ljava/lang/String;
    .locals 3

    .line 37
    invoke-static {}, Lcom/alipay/security/mobile/module/http/UploadFactory;->getZhiZhiGateway()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 44
    :cond_0
    iget v0, p0, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->currentEnvConfig:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const-string v2, "https://mobilegw.alipay.com/mgw.htm"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const-string v0, "http://mobilegw.aaa.alipay.net/mgw.htm"

    return-object v0

    :cond_2
    const-string v0, "http://mobilegw-1-64.test.alipay.net/mgw.htm"

    return-object v0

    :cond_3
    return-object v2

    :cond_4
    const-string v0, "http://mobilegw.stable.alipay.net/mgw.htm"

    return-object v0
.end method

.method public setEnvConfig(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->currentEnvConfig:I

    return-void
.end method
