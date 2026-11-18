.class public Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;
.super Ljava/lang/Object;
.source "RegisterReqeust.java"


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "24993770"

.field private static final TAG:Ljava/lang/String;

.field public static final UTDID_KEY:Ljava/lang/String; = "utdId_key"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RegisterReqeust"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static agreeRTCProtocol()V
    .locals 5

    .line 48
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->isProtocolAgreed(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 52
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    const-string v2, "do agreeRTCProtocol..."

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.t.call.agreeServiceProtocol"

    .line 55
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 56
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 58
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 59
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 60
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "authInfo"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "agree"

    const-string v4, "true"

    .line 61
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 63
    new-instance v2, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$1;

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$1;-><init>(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)V

    .line 76
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method private static getRtcContentData()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "getUtdId"

    const-string v2, "content://com.tld.rtcProvider"

    .line 163
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 166
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 168
    :try_start_1
    sget-object v1, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    const-string v3, "failed to find com.tld.rtcProvider"

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0

    .line 171
    :cond_0
    :try_start_2
    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "utdId"

    .line 173
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0

    :cond_1
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 177
    :goto_0
    :try_start_3
    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_3

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "Unknown URI"

    .line 179
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 181
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 184
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0

    :goto_2
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0
.end method

.method public static getRtcUtdId()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v0

    const-string v1, "utdId_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    sget-object v2, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "utdId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->getRtcContentData()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getUtdid()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    sget-object v2, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KvStorage save  utdId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->commit()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    :cond_1
    return-object v0
.end method

.method public static tryRegister(Z)V
    .locals 2

    .line 42
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    const-string v1, "tryRegister..."

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->updateRTCDeviceInfo(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static updateRTCDeviceInfo(Z)V
    .locals 6

    .line 84
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->isAuthInfoUpdated(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 87
    sget-object p0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    const-string v0, "KillSelf isAuthInfoUpdated"

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void

    .line 92
    :cond_1
    sget-object v1, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    const-string v2, "do updateRTCDeviceInfo..."

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.t.call.updateDeviceCallParam"

    .line 95
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 96
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 98
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 100
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "authInfo"

    .line 101
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "utdId"

    .line 102
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->getRtcUtdId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appkey"

    const-string v4, "24993770"

    .line 103
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v3, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v3, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "utdId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->getRtcUtdId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v3, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

    const-string v4, "rtcAppkey = 24993770"

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 111
    new-instance v2, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$2;

    invoke-direct {v2, v0, p0}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$2;-><init>(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;Z)V

    .line 129
    new-instance p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->TAG:Ljava/lang/String;

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
