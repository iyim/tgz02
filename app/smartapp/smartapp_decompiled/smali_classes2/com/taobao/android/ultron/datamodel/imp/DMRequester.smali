.class public Lcom/taobao/android/ultron/datamodel/imp/DMRequester;
.super Ljava/lang/Object;
.source "DMRequester.java"

# interfaces
.implements Lcom/taobao/android/ultron/datamodel/IDMRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/ultron/datamodel/imp/DMRequester$DelegateIRequestCallback;,
        Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;
    }
.end annotation


# static fields
.field private static final CACHE_REQUEST_TYPE:I = 0x2710

.field public static final HEADER_FEATURE_KEY:Ljava/lang/String; = "feature"

.field public static final HEADER_FEATURE_VAL:Ljava/lang/String; = "{\"gzip\":\"true\"}"

.field static final INVALID_BIZID:I = -0x1

.field public static final KEY_FEATURE_DATA_PARSE:Ljava/lang/String; = "dataProcess"

.field public static final KEY_FEATURE_REQUEST_ERROR:Ljava/lang/String; = "netRequest"

.field public static final KEY_FEATURE_VERSION:Ljava/lang/String; = "1.0"

.field public static final KEY_IS_CACHE_DATA:Ljava/lang/String; = "isCachaData"

.field public static final KEY_SP_FILE_NAME:Ljava/lang/String; = "ultornSdkSpName"

.field public static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "userName"

.field private static final TAG:Ljava/lang/String; = "DMRequester"

.field public static uploadUltronData:Z = false


# instance fields
.field bizName:Ljava/lang/String;

.field childBizName:Ljava/lang/String;

.field private isFromPurchase:Z

.field mAsync:Z

.field mBizId:I

.field mContext:Landroid/content/Context;

.field mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

.field mDomain:Ljava/lang/String;

.field mGzip:Z

.field mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPostMethod:Z

.field mRequest:Lmtopsdk/mtop/domain/MtopRequest;

.field mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResponseClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field mSubmit:Z

.field mTriggerComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field mUnitStrategy:Ljava/lang/String;

.field mUseWua:Z

.field private pData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mPostMethod:Z

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mAsync:Z

    .line 64
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mSubmit:Z

    .line 65
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mGzip:Z

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mBizId:I

    .line 70
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mUseWua:Z

    const-string v0, "default"

    .line 75
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->bizName:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->isFromPurchase:Z

    .line 87
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->pData:Z

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isGzip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mGzip:Z

    .line 99
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getDMContext()Lcom/taobao/android/ultron/datamodel/IDMContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getDMContext()Lcom/taobao/android/ultron/datamodel/IDMContext;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mGzip:Z

    invoke-direct {v0, v1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    .line 104
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequestHeaders:Ljava/util/Map;

    .line 105
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDomain:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getUnitStrategy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mUnitStrategy:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isAsync()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mAsync:Z

    .line 108
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isSubmit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mSubmit:Z

    .line 109
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isUseWua()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mUseWua:Z

    .line 110
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isPostMethod()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mPostMethod:Z

    .line 111
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getBizId()I

    move-result v0

    iput v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mBizId:I

    .line 112
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getTriggerComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mTriggerComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 113
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    .line 114
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getResponseClazz()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mResponseClazz:Ljava/lang/Class;

    .line 115
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getBizName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->bizName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getChildBizName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->childBizName:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->pData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->pData:Z

    .line 118
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isFromPurchase()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->isFromPurchase:Z

    .line 119
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 120
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isNeedSession()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 123
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isNeedEcode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 124
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mContext:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->bizName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/taobao/android/ultron/datamodel/IDMContext;->setBizName(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->childBizName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/taobao/android/ultron/datamodel/IDMContext;->setChildBizName(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    check-cast v0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->isFromPurchase:Z

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;Lcom/taobao/tao/remotebusiness/MtopBusiness;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->uploadDataForTest(Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->pData:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Ljava/util/Map;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->getBizParams()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private doExecute(Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;)Z
    .locals 8

    .line 559
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->bizName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getNullableInstance(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$2;

    invoke-direct {v0, p0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$2;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)V

    new-array v2, v1, [Ljava/lang/Void;

    .line 571
    invoke-virtual {v0, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    instance-of v2, v0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v2, :cond_10

    .line 576
    nop

    nop

    .line 582
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 583
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    .line 586
    :cond_1
    sget-boolean v2, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->uploadUltronData:Z

    const-string v3, "DMRequester"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 588
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->updateUltronUploadParams()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 590
    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doExecute ultron params error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v5}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 594
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mAsync:Z

    const-string v5, "{\"gzip\":\"true\"}"

    const-string v6, "feature"

    const-string v7, "params"

    if-eqz v2, :cond_4

    .line 596
    iget-boolean v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mGzip:Z

    if-eqz v2, :cond_3

    .line 597
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_3
    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    move-result-object v2

    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mTriggerComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-virtual {v2, v0, v5}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->asyncRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v2

    .line 602
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 604
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 605
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 607
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-direct {p0, v2, v5}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->setRequestDataParams(Lmtopsdk/mtop/domain/MtopRequest;Ljava/util/Map;)V

    goto :goto_1

    .line 609
    :cond_4
    iget-boolean v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mSubmit:Z

    if-eqz v2, :cond_6

    .line 610
    iget-boolean v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mGzip:Z

    if-eqz v2, :cond_5

    .line 611
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_5
    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->submitRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)Ljava/lang/String;

    move-result-object v2

    .line 616
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 618
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 619
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 620
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-direct {p0, v2, v5}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->setRequestDataParams(Lmtopsdk/mtop/domain/MtopRequest;Ljava/util/Map;)V

    goto :goto_1

    .line 623
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 624
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 625
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 626
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-direct {p0, v2, v5}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->setRequestDataParams(Lmtopsdk/mtop/domain/MtopRequest;Ljava/util/Map;)V

    .line 632
    :goto_1
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-static {v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v2

    .line 633
    iget-boolean v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mUseWua:Z

    if-eqz v5, :cond_7

    .line 634
    invoke-virtual {v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useWua()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 637
    :cond_7
    iget-boolean v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mPostMethod:Z

    if-eqz v5, :cond_8

    .line 638
    sget-object v5, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v2, v5}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 641
    :cond_8
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDomain:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 642
    invoke-virtual {v2, v5}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setCustomDomain(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_9
    const/4 v5, -0x1

    .line 644
    iget v6, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mBizId:I

    if-eq v5, v6, :cond_a

    .line 645
    invoke-virtual {v2, v6}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setBizId(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 648
    :cond_a
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mUnitStrategy:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 649
    invoke-virtual {v2, v5}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setUnitStrategy(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 652
    :cond_b
    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequestHeaders:Ljava/util/Map;

    if-eqz v5, :cond_c

    .line 653
    iget-object v5, v2, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v6, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {v5, v6}, Lmtopsdk/mtop/common/MtopNetworkProp;->setRequestHeaders(Ljava/util/Map;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 657
    invoke-virtual {v2, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqContext(Ljava/lang/Object;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 661
    :cond_d
    invoke-virtual {v2, v4}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setErrorNotifyAfterCache(Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 664
    new-instance p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;

    invoke-direct {p1, p0, p2, v0, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    .line 666
    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mResponseClazz:Ljava/lang/Class;

    if-nez p2, :cond_e

    .line 667
    invoke-virtual {v2, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest()V

    goto :goto_2

    .line 669
    :cond_e
    invoke-virtual {v2, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mResponseClazz:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest(Ljava/lang/Class;)V

    .line 671
    :goto_2
    new-array p1, v4, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "send request: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {v3, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DMRequester-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "begin request: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logMtopReq(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 675
    iget-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->isFromPurchase:Z

    if-eqz p1, :cond_f

    const-string p1, "beforeRequestTime"

    .line 676
    invoke-static {p1}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->endSection(Ljava/lang/String;)V

    const-string p1, "requestTime"

    .line 677
    invoke-static {p1}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->beginSection(Ljava/lang/String;)V

    :cond_f
    return v4

    :cond_10
    return v1
.end method

.method private doRealUpload(Lcom/taobao/tao/remotebusiness/MtopBusiness;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 147
    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getMtopContext()Lmtopsdk/framework/domain/MtopContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getMtopContext()Lmtopsdk/framework/domain/MtopContext;

    move-result-object v0

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 151
    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getMtopContext()Lmtopsdk/framework/domain/MtopContext;

    move-result-object v1

    iget-object v1, v1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 153
    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getMtopContext()Lmtopsdk/framework/domain/MtopContext;

    move-result-object v2

    iget-object v2, v2, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getMtopContext()Lmtopsdk/framework/domain/MtopContext;

    move-result-object p1

    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "default_ttid"

    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 160
    :cond_2
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 161
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 162
    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->getSpUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "userId"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->getSpUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "userNick"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "api"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v4, "request"

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "response"

    invoke-virtual {v3, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ttid"

    .line 167
    invoke-virtual {v3, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 169
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "responseHeaders"

    invoke-virtual {v3, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_3
    new-instance p1, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {p1}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    const-string v0, "mtop.taobao.ultron.upload"

    .line 173
    invoke-virtual {p1, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    const-string v0, "1.0"

    .line 174
    invoke-virtual {p1, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useWua()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$1;

    invoke-direct {v1, p0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$1;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)V

    invoke-virtual {v0, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 196
    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest()V

    :cond_4
    :goto_1
    return-void
.end method

.method private getBizParams()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 423
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "preBizName"

    .line 428
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 429
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 430
    aget-object v3, v1, v2

    .line 431
    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 432
    invoke-virtual {v4, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 434
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private getSpUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ultornSdkSpName"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "userId"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSpUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ultornSdkSpName"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "userName"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static modifyExParams(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exParams"

    .line 531
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 532
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 534
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :cond_0
    const-string v2, "ultron_data_record"

    const-string v3, "true"

    .line 536
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tradeProtocolFeatures"

    .line 539
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 540
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 543
    :try_start_0
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 546
    :catch_0
    sget-object v3, Lcom/taobao/android/ultron/datamodel/imp/ProtocolFeatures;->FEATURE_CONTAINER_CACHE:Ljava/math/BigInteger;

    invoke-static {v4, v3}, Lcom/taobao/android/ultron/datamodel/imp/ProtocolFeatures;->hasFeature(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    sget-object v3, Lcom/taobao/android/ultron/datamodel/imp/ProtocolFeatures;->FEATURE_CONTAINER_CACHE:Ljava/math/BigInteger;

    invoke-static {v4, v3}, Lcom/taobao/android/ultron/datamodel/imp/ProtocolFeatures;->removeFeature(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 549
    :cond_1
    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRequestDataParams(Lmtopsdk/mtop/domain/MtopRequest;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 686
    iput-object p2, p1, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static updateSpUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "ultornSdkSpName"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "userName"

    .line 212
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "userId"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUltronUploadParams()V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mParams:Ljava/util/Map;

    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->modifyExParams(Ljava/util/Map;)V

    return-void
.end method

.method private uploadDataForTest(Lcom/taobao/tao/remotebusiness/MtopBusiness;)V
    .locals 4

    .line 136
    sget-boolean v0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->uploadUltronData:Z

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->doRealUpload(Lcom/taobao/tao/remotebusiness/MtopBusiness;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 142
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadDataForTest exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "DMRequester"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;)Z
    .locals 1

    const/4 v0, 0x0

    .line 478
    invoke-direct {p0, v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->doExecute(Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;)Z

    move-result p1

    return p1
.end method

.method public execute(Lcom/taobao/android/ultron/datamodel/IRequestCallback;)Z
    .locals 1

    .line 488
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$DelegateIRequestCallback;

    invoke-direct {v0, p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$DelegateIRequestCallback;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;Lcom/taobao/android/ultron/datamodel/IRequestCallback;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->doExecute(Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;)Z
    .locals 0

    .line 483
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->doExecute(Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;)Z

    move-result p1

    return p1
.end method

.method public getAsyncData()Ljava/lang/String;
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    instance-of v1, v0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v1, :cond_0

    .line 501
    nop

    nop

    .line 502
    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mTriggerComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-virtual {v1, v0, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->asyncRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAsyncData(Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    instance-of v1, v0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v1, :cond_0

    .line 510
    nop

    nop

    .line 511
    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->asyncRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mGzip:Z

    if-eqz v0, :cond_0

    const-string v0, "{\"gzip\":\"true\"}"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSubmitData()Ljava/lang/String;
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    instance-of v1, v0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v1, :cond_0

    .line 519
    nop

    nop

    .line 520
    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->submitRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
