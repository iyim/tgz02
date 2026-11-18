.class public Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;
.super Ljava/lang/Object;
.source "ItemRepository.java"


# static fields
.field private static final READ_CACHE:I = 0x1

.field private static final READ_RECORD_CACHE:I = 0x2

.field public static final RECORD_CACHE:Ljava/lang/String; = "key.record_cache"

.field public static final RECORD_PAGING_LIMIT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "contacts_ItemRepository"


# instance fields
.field private mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field public final mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;",
            ">;"
        }
    .end annotation
.end field

.field public final mLivePstnCharge:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLivePstnMinutes:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;",
            ">;"
        }
    .end annotation
.end field

.field private needReadCacheData:Z

.field private needReadRecordCacheData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    .line 53
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    .line 54
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLivePstnMinutes:Landroid/arch/lifecycle/MutableLiveData;

    .line 55
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLivePstnCharge:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->needReadCacheData:Z

    .line 57
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->needReadRecordCacheData:Z

    .line 61
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->readRecordCacheData(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->needReadRecordCacheData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->readCacheData(Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->needReadCacheData:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$500(Ljava/util/List;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->saveRecords(Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->parseCallRecordItemData(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->parseContactsItemData(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getFeatures(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/ailabs/genie/contacts/model/Features;
    .locals 5

    .line 655
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    const-string v1, "video"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "voice"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "pstn"

    .line 656
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static getFinalMode(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)Ljava/lang/String;
    .locals 2

    .line 553
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSTN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "AUDIO"

    return-object p0
.end method

.method public static getPreRecordsByOffset()V
    .locals 5

    .line 178
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v0

    const-string v1, "key.record_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contacts_fragment"

    const-string v1, "has record cache..."

    .line 179
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.call.getCallRecordByOffsetAndLimit"

    .line 183
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 184
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 186
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 187
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 188
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "authInfo"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "offset"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "limit"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 192
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 194
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$4;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$4;-><init>(J)V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    const/4 v0, 0x1

    .line 206
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method static synthetic lambda$null$55(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const-string v0, "contacts_ItemRepository"

    const-string v1, "save contacts to db..."

    .line 661
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->recoverDevices(Ljava/util/List;)V

    .line 663
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->recoverFriends(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$null$57(Ljava/util/List;)V
    .locals 6

    const-string v0, "contacts_ItemRepository"

    :try_start_0
    const-string v1, "save Records..."

    .line 673
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v1

    const-string v2, "key.record_cache"

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/AESCipherUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->commit()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 676
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$saveContacts$56(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 660
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$ngRRoZT830c6ZNKzYmBUZA29ajU;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$ngRRoZT830c6ZNKzYmBUZA29ajU;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$saveRecords$58(Ljava/util/List;)V
    .locals 1

    .line 671
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$fAJpe96K6lNBi80XQgns-lUMzw8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$fAJpe96K6lNBi80XQgns-lUMzw8;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static parseCallRecordItemData(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;"
        }
    .end annotation

    .line 421
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    .line 423
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getFinalMode(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setFinalmode(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 425
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setOneUser(Z)V

    .line 426
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "PHONE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setMode(I)V

    .line 428
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerNickname()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 431
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    .line 433
    :goto_1
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setDeviceId(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceType()Ljava/lang/String;

    move-result-object v4

    const-string v8, "ALIGENIE_APP"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 437
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setMode(I)V

    .line 438
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 439
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 440
    :goto_2
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setDeviceId(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    goto/16 :goto_0

    .line 443
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 444
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setMode(I)V

    .line 445
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 446
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeNickname()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 448
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    .line 450
    :goto_3
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setDeviceId(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setFriend(Z)V

    .line 453
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    goto/16 :goto_0

    .line 454
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 455
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setMode(I)V

    .line 456
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 457
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 458
    :goto_4
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setDeviceId(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    goto/16 :goto_0

    .line 461
    :cond_7
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 462
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 463
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setMode(I)V

    .line 464
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeNickname()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 465
    :cond_8
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    .line 466
    :goto_5
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setFriend(Z)V

    .line 468
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    goto/16 :goto_0

    .line 470
    :cond_9
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setMode(I)V

    .line 471
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "\u7684"

    if-eqz v4, :cond_d

    .line 472
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDevicePosition()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 473
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto :goto_6

    .line 475
    :cond_a
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDevicePosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto :goto_6

    .line 477
    :cond_b
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeNickname()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 478
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto :goto_6

    .line 480
    :cond_c
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleePhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    .line 483
    :goto_6
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setDeviceId(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    goto/16 :goto_0

    .line 485
    :cond_d
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 486
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDevicePosition()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 487
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto :goto_7

    .line 489
    :cond_e
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDevicePosition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto :goto_7

    .line 491
    :cond_f
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerNickname()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 492
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto :goto_7

    .line 494
    :cond_10
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    .line 497
    :goto_7
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setDeviceId(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    goto/16 :goto_0

    .line 500
    :cond_11
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 501
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    goto :goto_8

    .line 503
    :cond_12
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    .line 505
    :goto_8
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDevicePosition()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 506
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto :goto_9

    .line 508
    :cond_13
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDevicePosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto :goto_9

    .line 510
    :cond_14
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerNickname()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 511
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto :goto_9

    .line 513
    :cond_15
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    .line 516
    :goto_9
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setDeviceId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_16
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setOneUser(Z)V

    const/4 v4, 0x2

    .line 521
    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setMode(I)V

    .line 522
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getOwnerUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 523
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 524
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setFriend(Z)V

    .line 525
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleePhoneNum()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 527
    :cond_17
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setFriend(Z)V

    .line 528
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    .line 530
    :goto_a
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setDeviceId(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleePhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setPhoneNumber(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    goto :goto_c

    .line 533
    :cond_18
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getOwnerUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 534
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 535
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setFriend(Z)V

    .line 536
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerPhoneNum()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 538
    :cond_19
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setFriend(Z)V

    .line 539
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v2

    .line 541
    :goto_b
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setDeviceId(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setPhoneNumber(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setCaller(Z)V

    .line 545
    :cond_1a
    :goto_c
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setPeerNickname(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->setNickName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    return-object p0
.end method

.method private parseContactsItemData(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 565
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 566
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 567
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "deviceList"

    .line 569
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    const/4 v7, 0x0

    .line 570
    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    const-string v9, "features"

    if-ge v7, v8, :cond_3

    .line 571
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 572
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v10

    const-string v11, "uuid"

    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    new-instance v10, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-direct {v10}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;-><init>()V

    const-string v11, "uuid"

    .line 576
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceId(Ljava/lang/String;)V

    const-string v11, "userId"

    .line 577
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setUserId(Ljava/lang/Long;)V

    const-string v11, "position"

    .line 578
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "position"

    .line 579
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setPosition(Ljava/lang/String;)V

    :cond_1
    const-string v11, "deviceName"

    .line 581
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceName(Ljava/lang/String;)V

    const-string v11, "deviceType"

    .line 582
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceType(Ljava/lang/String;)V

    const-string v11, "deviceIcon"

    .line 583
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceIcon(Ljava/lang/String;)V

    const-string v11, "appKey"

    .line 584
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setAppKey(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 586
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 587
    invoke-direct {v0, v8}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getFeatures(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    .line 589
    :cond_2
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v5, "mineInfo"

    .line 593
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 594
    new-instance v7, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v7}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V

    const-string v8, "newImportFlag"

    .line 595
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    .line 596
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v7, v10}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNewImportFlag(Z)V

    const-string v10, "contactNick"

    .line 597
    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    const-string v11, "ownerUserId"

    .line 598
    invoke-virtual {v5, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOwnerUserId(Ljava/lang/String;)V

    const-string v12, "relationCode"

    .line 599
    invoke-virtual {v5, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationCode(Ljava/lang/String;)V

    const-string v13, "relationName"

    .line 600
    invoke-virtual {v5, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationName(Ljava/lang/String;)V

    const-string v14, "icon"

    .line 601
    invoke-virtual {v5, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    const-string v15, "contactId"

    .line 602
    invoke-virtual {v5, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setUserId(Ljava/lang/String;)V

    const-string v6, "outUserId"

    move-object/from16 v17, v2

    .line 603
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOutUserId(Ljava/lang/String;)V

    const-string v2, "mobile"

    move-object/from16 v18, v3

    .line 604
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    const-string v3, "familyFlag"

    move-object/from16 v19, v2

    .line 605
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v20, v3

    .line 606
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFamilyMember(Z)V

    const-string v2, "preventCallFlag"

    .line 607
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v21, v2

    .line 608
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setInBlacklists(Z)V

    const-string v2, "genieUserFlag"

    .line 609
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v22, v2

    .line 610
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setGenieUserFlag(Z)V

    const-string v2, "selfFlag"

    .line 611
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v23, v2

    .line 612
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setSelfFlag(Z)V

    .line 613
    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 614
    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 615
    invoke-direct {v0, v2}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getFeatures(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    .line 617
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "contacts"

    .line 620
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 621
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 622
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 623
    new-instance v5, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v5}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V

    .line 624
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 p1, v1

    .line 625
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNewImportFlag(Z)V

    .line 626
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOwnerUserId(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationCode(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationName(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v3, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setUserId(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOutUserId(Ljava/lang/String;)V

    move-object/from16 v1, v19

    .line 633
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 634
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v16, v6

    .line 635
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFamilyMember(Z)V

    move-object/from16 v1, v21

    .line 636
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 637
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setInBlacklists(Z)V

    move-object/from16 v1, v22

    .line 638
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 639
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setGenieUserFlag(Z)V

    move-object/from16 v1, v23

    .line 640
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 641
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setSelfFlag(Z)V

    .line 642
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 643
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 644
    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getFeatures(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    .line 646
    :cond_5
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    move-object/from16 v20, v7

    move-object/from16 v6, v16

    goto/16 :goto_2

    :cond_6
    move-object/from16 v1, v17

    move-object/from16 v2, v18

    .line 648
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 649
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 650
    invoke-direct {v0, v4, v2}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->saveContacts(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method private readCacheData(Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V
    .locals 6

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 326
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getDeviceInfoList()Ljava/util/List;

    move-result-object v2

    .line 327
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 330
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getFriendInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->setList(Ljava/util/List;)V

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readContactsCacheData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->needReadCacheData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contacts_ItemRepository"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->needReadCacheData:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 336
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->setCacheData(Z)V

    .line 337
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->setDataChange(Z)V

    .line 338
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readContactsCacheData finish = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private readRecordCacheData(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V
    .locals 7

    const-string v0, "contacts_ItemRepository"

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 261
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v4

    const-string v5, "key.record_cache"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/common/utils/AESCipherUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 265
    :cond_0
    const-class v4, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 267
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readRecordCacheData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->needReadRecordCacheData:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->needReadRecordCacheData:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 271
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setCacheData(Z)V

    .line 272
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setDataChange(Z)V

    .line 273
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveRecords:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {v3, p1}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readRecordCacheData finish = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private saveContacts(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;",
            ">;)V"
        }
    .end annotation

    .line 660
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$UEMcR5E-IC1cy6cgv06pxiaFsWQ;

    invoke-direct {v0, p2, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$UEMcR5E-IC1cy6cgv06pxiaFsWQ;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static saveRecords(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;)V"
        }
    .end annotation

    .line 668
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 671
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$hZDrYrdzLeRiO23rWkBS2WrsCgY;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$hZDrYrdzLeRiO23rWkBS2WrsCgY;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getContacts()V
    .locals 6

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    .line 280
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 281
    new-instance v2, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;-><init>()V

    const-string v3, "mtop.alibaba.aicloud.t.contact.getContactList"

    .line 282
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v3, "1.0"

    .line 283
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 284
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 285
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 286
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 287
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "authInfo"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 289
    new-instance v3, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v3, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 291
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;JLcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 321
    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public getPstnCharge()V
    .locals 4

    .line 371
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.call.getRmainSumInfo"

    .line 372
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 373
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 374
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 375
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 376
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 377
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 379
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 380
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$8;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 392
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public getPstnMinutes()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.call.getCallInfo"

    .line 346
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 347
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 348
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 349
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 350
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 351
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 353
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 354
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$7;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$7;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 367
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public getRecords()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    .line 90
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 91
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.t.call.getCallRecord"

    .line 92
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 93
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 95
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 96
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contacts_ItemRepository"

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "authInfo"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 100
    new-instance v2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 102
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;

    invoke-direct {v0, p0, v3, v4, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;JLcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    const/4 v0, 0x1

    .line 140
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public getRecordsByOffset()V
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    .line 211
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 212
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.t.call.getCallRecordByOffsetAndLimit"

    .line 213
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 214
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 216
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 217
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 218
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "authInfo"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "offset"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x14

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "limit"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 222
    new-instance v2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 224
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;

    invoke-direct {v0, p0, v3, v4, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$5;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;JLcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    const/4 v0, 0x1

    .line 255
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public getRecordsByOffset(I)V
    .locals 5

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 145
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.t.call.getCallRecordByOffsetAndLimit"

    .line 146
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 147
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 149
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 150
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 151
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "authInfo"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "offset"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x14

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "limit"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 155
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$3;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;JLcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public updateCallsViewedTime()V
    .locals 4

    .line 396
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.call.updateMissedCallsQueryStartTime"

    .line 397
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 398
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 399
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 400
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 401
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 402
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 404
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 405
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$9;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$9;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 416
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
