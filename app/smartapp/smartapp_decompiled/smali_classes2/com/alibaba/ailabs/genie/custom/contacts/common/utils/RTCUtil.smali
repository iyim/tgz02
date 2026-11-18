.class public Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;
.super Ljava/lang/Object;
.source "RTCUtil.java"


# static fields
.field private static final ACTION_CALL_PSTN:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.custom.rtc/page/call_pstn"

.field private static final ACTION_CALL_VOIP:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.custom.rtc/page/call_voip"

.field private static final CONTACTS_AVATAR_BG_POOL:[I

.field private static final RTC_PKG:Ljava/lang/String; = "com.alibaba.ailabs.genie.custom.rtc"

.field private static final TAG:Ljava/lang/String; = "contacts_RTCUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 24
    new-array v0, v0, [I

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->con_bg_round_309cf6_to_327bf6:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->con_bg_round_26d4d1_to_1ab2ec:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->con_bg_round_83bf0a_to_6ab351:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->con_bg_round_3a71fc_to_2c4cff:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->con_bg_round_e4b119_to_ff9d54:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->con_bg_round_ff8341_to_c65a19:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->con_bg_round_444aca_to_392cff:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->con_bg_round_87a3ba_to_5b6772:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->CONTACTS_AVATAR_BG_POOL:[I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static callCuVOIP(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Ljava/lang/String;)V
    .locals 3

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.custom.rtc"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genie://com.alibaba.ailabs.genie.custom.rtc/page/call_voip"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "callFrom"

    const-string v2, "OUT"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "callType"

    .line 49
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getContactType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "targetType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string p2, "target"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.custom.rtc"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genie://com.alibaba.ailabs.genie.custom.rtc/page/call_voip"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "callFrom"

    const-string v2, "OUT"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string p2, "VIDEO"

    goto :goto_0

    :cond_1
    const-string p2, "AUDIO"

    :goto_0
    const-string v1, "callType"

    .line 37
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "targetType"

    const-string v1, "CONTACTS"

    .line 38
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string p2, "target"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 40
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static getContactsAvatarBg(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    int-to-long v1, p1

    .line 66
    sget-object p1, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->CONTACTS_AVATAR_BG_POOL:[I

    array-length p1, p1

    int-to-long v3, p1

    rem-long/2addr v1, v3

    long-to-int p1, v1

    if-gez p1, :cond_1

    return-object v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 73
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->CONTACTS_AVATAR_BG_POOL:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static showDetailActivity(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V
    .locals 2

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isUniComCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-class v1, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 81
    :cond_0
    const-class v1, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const-string v1, "contacts"

    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
