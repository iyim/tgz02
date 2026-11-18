.class public Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;
.super Ljava/lang/Object;
.source "ContactRepository.java"


# static fields
.field public static final PAGE_LIMIT:I = 0x8

.field public static final TAG:Ljava/lang/String; = "contacts_contacts"


# instance fields
.field public final contactDetail:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field public final mContacts:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private retryTimes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->mContacts:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->contactDetail:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->retryTimes:I

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->handler:Landroid/os/Handler;

    return-void
.end method

.method private checkInit()Z
    .locals 2

    const-string v0, "persist.sys.unicom.voip.ready"

    const-string v1, "0"

    .line 181
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->getSettingProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private genCmccParams(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 201
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "offset"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x8

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "limit"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "authInfo"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private genUnicomParams(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "offset"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x8

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "limit"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "authInfo"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getSettingProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 187
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    .line 188
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 189
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string v3, "unknown"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "contacts_contacts"

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSettingProperty key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",value = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 192
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    return-object p1
.end method


# virtual methods
.method public fetchContactDetail(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V
    .locals 5

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchContactDetail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_contacts"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "1.0"

    .line 67
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 70
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    const-string v2, "mtop.alibaba.aicloud.t.openContact.getContactDetail"

    .line 71
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "authInfo"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getRealContactType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contactType"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getContactExtUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contactExtUserId"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getContactProductKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "productKey"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getContactDeviceName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "deviceName"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 79
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;)V

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 97
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public fetchData(IZLandroid/content/Context;)V
    .locals 4

    .line 101
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isUniComCustom()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "contacts_contacts"

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->checkInit()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "sendBroadcast com.alibaba.ailabs.genie.rtc.open.REGISTER"

    .line 103
    invoke-static {v2, p2}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.alibaba.ailabs.genie.rtc.open.REGISTER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.alibaba.ailabs.genie.custom.rtc"

    .line 105
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p3, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const-string p2, "fetchData: context is null "

    .line 109
    invoke-static {v2, p2}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    :goto_0
    iget p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->retryTimes:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->retryTimes:I

    const-string p2, "VOIP HAS NOT INITED"

    .line 113
    invoke-static {v2, p2}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->retryTimes:I

    const/16 p3, 0x1e

    if-ge p2, p3, :cond_2

    .line 115
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$2;

    invoke-direct {p3, p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$2;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 122
    :cond_2
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;-><init>()V

    const-string p2, "-10000"

    .line 123
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->setErrCode(Ljava/lang/String;)V

    const-string p2, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 124
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->setErrmsg(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->mContacts:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_3
    const/4 p2, 0x0

    .line 129
    iput p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->retryTimes:I

    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fetchData = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance p3, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 132
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;-><init>()V

    const-string v2, "1.0"

    .line 133
    invoke-virtual {p3, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 135
    invoke-virtual {p3, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 136
    new-instance p2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p2, p3}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 137
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isUniComCustom()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "mtop.alibaba.aicloud.t.openContact.queryContactInfoList"

    .line 138
    invoke-virtual {p3, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->genUnicomParams(I)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    goto :goto_2

    :cond_4
    const-string v2, "mtop.alibaba.aicloud.t.chinaMobile.queryChinaMobileContactByPage"

    .line 141
    invoke-virtual {p3, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->genCmccParams(I)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 144
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 145
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;

    invoke-direct {p1, p0, v2, v3, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;JLcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;)V

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 177
    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public mockData()V
    .locals 3

    .line 55
    const-class v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    const-string v1, "{\n\t\"contactType\": \"USER\",\n\t\"contactExtUserId\": \"01MLnDVSANVwCRaIMp2cfryQ==\",\n\t\"contactProductKey\": \"a1WpixsCBGg\",\n\t\"contactDeviceName\": \"aoxia\",\n\t\"contactPhoneNum\": \"18463100997\",\n\t\"contactNickname\": \"\u9ccc\u867e\u54c8\u54c8\u54c8\",\n\t\"contactImg\": null,\n\t\"supportVoIPAudioCall\": \"true\",\n\t\"supportVoipVideoCall\": \"true\",\n\t\"supportPSTNCall\": \"true\"\n}"

    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    .line 56
    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;-><init>()V

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->setList(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 60
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->setDataChange(Z)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->mContacts:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
