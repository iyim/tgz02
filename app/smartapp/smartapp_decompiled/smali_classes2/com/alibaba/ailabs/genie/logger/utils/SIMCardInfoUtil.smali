.class public Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;
.super Ljava/lang/Object;
.source "SIMCardInfoUtil.java"


# static fields
.field private static phoneNum:Ljava/lang/String;

.field private static providersName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getNativePhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 37
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->phoneNum:Ljava/lang/String;

    .line 39
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->phoneNum:Ljava/lang/String;

    return-object p0
.end method

.method public static getProvidersName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->providersName:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "phone"

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 57
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "46000"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "46002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "46001"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "China Union"

    .line 62
    sput-object p0, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->providersName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "46003"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "China Telecom"

    .line 64
    sput-object p0, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->providersName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "China Mobile"

    .line 60
    sput-object p0, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->providersName:Ljava/lang/String;

    .line 67
    :cond_3
    :goto_1
    sget-object p0, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->providersName:Ljava/lang/String;

    return-object p0
.end method

.method public static getSN(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 93
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSimExist(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 78
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSimWorking(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 85
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
