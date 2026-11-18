.class public Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;
.super Ljava/lang/Object;
.source "RecordsRepository.java"


# static fields
.field public static final LIMIT_INDEX:I = 0xc8

.field public static final ONE_PAGE_SIZE:I = 0x4

.field public static final RECORD_LIMIT:I = 0xa

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallRecords:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final mLocalRecords:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RecordsRepository"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->mLocalRecords:Landroid/arch/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->mCallRecords:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->parseCallRecordSimple(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static deleteRecords([ILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/repository/response/DeleteRecordResponse;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.cmCallLog.deleteAggregatedCallLogs"

    .line 44
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 45
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 48
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "authInfo"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ids"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 52
    new-instance p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 54
    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method private parseCallRecordSimple(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 112
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 113
    new-instance v2, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    invoke-direct {v2, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getRecordsByOffset(I)V
    .locals 9

    .line 58
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 59
    new-instance v6, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-direct {v6}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;-><init>()V

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isUniComCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mtop.alibaba.aicloud.t.openContact.queryAggregatedCallLogInfo"

    .line 61
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "mtop.alibaba.aicloud.t.cm.queryChinaMobileAggregatedCallLog"

    .line 63
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    :goto_0
    const-string v1, "1.0"

    .line 65
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 68
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "offset"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "limit"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 73
    new-instance v8, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v8, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 75
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;JILcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;)V

    invoke-virtual {v8, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 107
    invoke-virtual {v8, v7}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public updateCallsViewedTime()V
    .locals 4

    .line 119
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isUniComCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mtop.alibaba.aicloud.t.openContact.updateMissedCallsQueryTime"

    .line 121
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "mtop.alibaba.aicloud.t.chinaMobile.updateDeviceMissedCalls"

    .line 123
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    :goto_0
    const-string v1, "1.0"

    .line 125
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 127
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 128
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 129
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 131
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 132
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository$2;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 143
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
