.class public Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;
.super Ljava/lang/Object;
.source "UpaasConfig.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "genielogger"

.field private static final ENV_PRE:I = 0x2

.field private static final ENV_PROD:I = 0x3

.field private static final ENV_TEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UpaasConfig"

.field private static mInstance:Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;

.field private static mUuid:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mInstance:Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addUrlQueryStrings(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 231
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ds"

    sget-object v2, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "nw"

    const-string v2, "WIFI"

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ve"

    const-string v2, "1.0"

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sv"

    const-string v2, "24"

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UpaasConfig"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method private configUnet(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "crjz_ucdc_appid"

    const-string v1, "genielogger"

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UBIUtdId"

    .line 90
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    const-string v0, "UBIMiGi"

    .line 91
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UBISiPlatform"

    const-string v1, "android"

    .line 92
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UBISiVersion"

    const-string v1, "1.0"

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UBISiSubVersion"

    const-string v1, "24"

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "106.11.19.105,203.119.245.68"

    const-string v2, "https://ucdc-upaas.uc.cn/ucdc"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    move-object p2, p1

    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    goto :goto_1

    :cond_0
    const-string p2, "https://ucdc-upaas.uc.cn/wl"

    move-object v0, p2

    move-object p2, p1

    goto :goto_1

    :cond_1
    const-string p2, "pre-userver-upaas.uc.cn"

    goto :goto_0

    :cond_2
    const-string p2, "http://ucdc-tengine1.test.uae-2.uctest.local/ucdc"

    const-string/jumbo v0, "test-userver-upaas.uc.cn"

    const-string v1, "11.3.157.232"

    move-object v2, p2

    move-object p2, v0

    :goto_0
    move-object v0, p1

    :goto_1
    const-string v3, "crjz_ucdc_su"

    .line 119
    invoke-direct {p0, v3, v2}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "crjz_ucdc_sip"

    .line 120
    invoke-direct {p0, v2, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "crjz_ucdc_hl"

    .line 123
    invoke-direct {p0, v1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    const-string p2, "crjz_upaas_wlist_url"

    .line 126
    invoke-direct {p0, p2, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p2, "crjz_ec_retry"

    const-string v0, "-355|-15|-101|-102|-324|-105|-109|-7|"

    .line 130
    invoke-direct {p0, p2, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "crjz_upaas_mhs"

    .line 132
    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "crjz_upaas_ss"

    const-string p2, "100"

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "crjz_upaas_wden"

    const-string p2, "0"

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "UBICc"

    const-string p2, "CN"

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    const-string p2, "crjz_upaas_spen"

    .line 139
    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "crjz_ucdc_en"

    .line 142
    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;
    .locals 1

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mInstance:Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;

    return-object v0
.end method

.method private getUnetManager()Lcom/alibaba/mbg/unet/UnetManager;
    .locals 1

    .line 202
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object v0

    return-object v0
.end method

.method private initUnet(Landroid/content/Context;)V
    .locals 6

    .line 76
    invoke-static {p1}, Lcom/uc/base/net/unet/UNetContext;->initializeUNetContext(Landroid/content/Context;)V

    .line 77
    sget-object v2, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mUuid:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->getAuthCode()Ljava/lang/String;

    move-result-object v5

    const-string v1, "genielogger"

    const-string/jumbo v3, "utdid"

    const-string v4, "11466"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/uc/base/net/unet/UNetContext;->initializeUPaasManager(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mUuid:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->configUnet(Ljava/lang/String;I)V

    .line 80
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setProxy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private inituPaas(Landroid/content/Context;)V
    .locals 8

    const-string v0, "UpaasConfig"

    const-string v1, "inituPaas"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v2

    sget-object v6, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mUuid:Ljava/lang/String;

    new-instance v7, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig$1;

    invoke-direct {v7, p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig$1;-><init>(Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;Landroid/content/Context;)V

    const-string v4, "genielogger"

    const-string/jumbo v5, "utdid"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/uc/rmbsdk/export/RmbManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbInterface;)V

    return-void
.end method

.method private setProxy()V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->getUnetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig$2;-><init>(Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;)V

    invoke-interface {v0, v1}, Lcom/alibaba/mbg/unet/UnetManager;->setProxyInfoDelegate(Lcom/alibaba/mbg/unet/IProxyDelegate;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setUNetArgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 223
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/mbg/unet/UnetManager;->setStringValueSetting(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getUpaasState()I
    .locals 1

    .line 85
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "ro.genie.uuid"

    .line 53
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mUuid:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpaasConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->initUnet(Landroid/content/Context;)V

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->inituPaas(Landroid/content/Context;)V

    return-void
.end method
