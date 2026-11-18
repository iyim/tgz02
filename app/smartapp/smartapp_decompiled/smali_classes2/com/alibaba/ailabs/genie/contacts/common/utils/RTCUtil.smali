.class public Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;
.super Ljava/lang/Object;
.source "RTCUtil.java"


# static fields
.field private static final ACTION_CALL_PSTN:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.rtc/page/call_pstn"

.field private static final ACTION_CALL_VOIP:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.rtc/page/call_voip"

.field private static final ACTION_CM_CALL_PSTN:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.cmrtc/page/call_pstn"

.field private static final ACTION_LEAVE_MESSAGE:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.rtc/page/leave_message"

.field private static final ACTION_REGISTER:Ljava/lang/String; = "com.alibaba.ailabs.genie.rtc.ACTION_REGISTER"

.field public static final CM_RTC_PKG:Ljava/lang/String; = "com.alibaba.ailabs.genie.CmRTC"

.field private static final RTC_PKG:Ljava/lang/String; = "com.alibaba.ailabs.genie.rtc"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RTCUtil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static callHusky(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.rtc"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genie://com.alibaba.ailabs.genie.rtc/page/call_pstn"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "callType"

    const-string v2, "AUDIO"

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "targetType"

    const-string v2, "HUSKY"

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "target"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 130
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result v0

    .line 88
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_1

    .line 89
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->CM_RTC_PKG:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->RTC_PKG:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 90
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->ACTION_CM_CALL_PSTN:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->ACTION_CALL_PSTN:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v0, "callFrom"

    const-string v2, "OUT"

    .line 92
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v0, "callType"

    const-string v2, "AUDIO"

    .line 94
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "targetType"

    const-string v2, "CONTACTS"

    .line 95
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "target"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 97
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result v0

    .line 107
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_1

    .line 108
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->CM_RTC_PKG:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->RTC_PKG:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 109
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->ACTION_CM_CALL_PSTN:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->ACTION_CALL_PSTN:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v0, "callFrom"

    const-string v2, "OUT"

    .line 111
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v0, "callType"

    const-string v2, "AUDIO"

    .line 113
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "targetType"

    const-string v2, "DEVICE"

    .line 114
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "target"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 116
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static callPstn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result v0

    .line 141
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V

    .line 142
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 143
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setGenieUserFlag(Z)V

    .line 144
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFriend(Z)V

    .line 146
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_1

    .line 147
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->CM_RTC_PKG:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->RTC_PKG:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 148
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->ACTION_CM_CALL_PSTN:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->ACTION_CALL_PSTN:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v0, "callFrom"

    const-string v2, "OUT"

    .line 150
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v0, "callType"

    const-string v2, "AUDIO"

    .line 152
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "targetType"

    const-string v2, "CONTACTS"

    .line 153
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->toJson()Ljava/lang/String;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 155
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.rtc"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genie://com.alibaba.ailabs.genie.rtc/page/call_voip"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string p2, "VIDEO"

    goto :goto_0

    :cond_1
    const-string p2, "AUDIO"

    :goto_0
    const-string v1, "callType"

    .line 62
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "targetType"

    const-string v1, "CONTACTS"

    .line 63
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string p2, "target"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 65
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.rtc"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genie://com.alibaba.ailabs.genie.rtc/page/call_voip"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string p2, "VIDEO"

    goto :goto_0

    :cond_1
    const-string p2, "AUDIO"

    :goto_0
    const-string v1, "callType"

    .line 76
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "targetType"

    const-string v1, "DEVICE"

    .line 77
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string p2, "target"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 79
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static getAuthInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;
    .locals 3

    .line 187
    new-instance v0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;-><init>()V

    .line 188
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->setUserId(Ljava/lang/String;)V

    .line 189
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->setUuid(Ljava/lang/String;)V

    .line 190
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->setToken(Ljava/lang/String;)V

    .line 191
    sget-object p0, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###authInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 196
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 197
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###authInfoStr ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getMtopToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 211
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 202
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 206
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasInstallCmRtc()Z
    .locals 4

    const/4 v0, 0x0

    .line 220
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.alibaba.ailabs.genie.CmRTC"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 223
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->TAG:Ljava/lang/String;

    const-string v2, "not install rtc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static leaveMessage(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 3

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.rtc"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genie://com.alibaba.ailabs.genie.rtc/page/leave_message"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "relationship"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    const-string v2, "avatar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getOutUserId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "targetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "clickEnter"

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 168
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static leaveMessage(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V
    .locals 4

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.rtc"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genie://com.alibaba.ailabs.genie.rtc/page/leave_message"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "isDevice"

    .line 176
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceNameAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nickName"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getPosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "relationship"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceIcon()Ljava/lang/String;

    move-result-object v2

    const-string v3, "avatar"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "targetId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "clickEnter"

    .line 181
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 182
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static tryRegister(Landroid/content/Context;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->TAG:Ljava/lang/String;

    const-string v1, "tryRegister"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.rtc"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.rtc.ACTION_REGISTER"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
