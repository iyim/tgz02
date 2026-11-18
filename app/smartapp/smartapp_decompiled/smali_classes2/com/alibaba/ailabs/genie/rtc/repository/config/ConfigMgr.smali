.class public Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;
.super Ljava/lang/Object;
.source "ConfigMgr.java"


# static fields
.field public static final KEY_PROTOCOL_AGREE_INFO:Ljava/lang/String; = "protocol_agree_info"

.field public static final KEY_UPDATED_DEVICE_INFO:Ljava/lang/String; = "updated_device_info"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ConfigMgr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clearRegisterInfo()V
    .locals 3

    .line 111
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v0

    const-string v1, ""

    const-string v2, "updated_device_info"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->commit()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    .line 112
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v0

    const-string v2, "protocol_agree_info"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->commit()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    return-void
.end method

.method public static isAuthInfoUpdated(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z
    .locals 4

    .line 81
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->isValidAuthInfo(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->getRtcUtdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "24993770"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "}"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p0

    const-string v1, "updated_device_info"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 93
    sget-object v1, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAuthInfoUpdated.current   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAuthInfoUpdated.saved     = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content provider exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isProtocolAgreed(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->isValidAuthInfo(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "}"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p0

    const-string v1, "protocol_agree_info"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isValidAuthInfo(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setAuthInfoUpdated(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)V
    .locals 3

    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->isValidAuthInfo(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAuthInfoUpdated.authInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->getRtcUtdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "24993770"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "}"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p0

    const-string v1, "updated_device_info"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->commit()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content provider exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setProtocolAgreed(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->isValidAuthInfo(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "}"

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocol_agree_info"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->commit()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    return-void
.end method
