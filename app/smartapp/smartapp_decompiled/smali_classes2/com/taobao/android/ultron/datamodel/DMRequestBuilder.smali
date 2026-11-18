.class public Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
.super Ljava/lang/Object;
.source "DMRequestBuilder.java"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "trade_debug"


# instance fields
.field private isFromPurchase:Z

.field mApi:Ljava/lang/String;

.field mAsync:Z

.field mBizId:I

.field mBizName:Ljava/lang/String;

.field mChildBizName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

.field mDomain:Ljava/lang/String;

.field mGzip:Z

.field mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNeedEcode:Z

.field mNeedSession:Z

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

.field mPreference:Landroid/content/SharedPreferences;

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

.field mVersion:Ljava/lang/String;

.field private pData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mNeedSession:Z

    .line 32
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mNeedEcode:Z

    .line 36
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mPostMethod:Z

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mUseWua:Z

    const-string v2, "default"

    .line 40
    iput-object v2, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mBizName:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mAsync:Z

    .line 44
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mSubmit:Z

    .line 47
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mGzip:Z

    .line 59
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isFromPurchase:Z

    .line 60
    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->pData:Z

    .line 152
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mContext:Landroid/content/Context;

    .line 153
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "trade_debug"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mPreference:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method private checkParams()Z
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mApi:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public api(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mApi:Ljava/lang/String;

    return-object p0
.end method

.method public bizId(I)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 195
    iput p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mBizId:I

    return-object p0
.end method

.method public bizName(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mBizName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/taobao/android/ultron/datamodel/IDMRequester;
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->checkParams()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-direct {v0, p0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;-><init>(Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;)V

    return-object v0
.end method

.method public buildAdjust(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/datamodel/IDMContext;)Lcom/taobao/android/ultron/datamodel/IDMRequester;
    .locals 2

    .line 367
    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->checkParams()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    return-object v1

    .line 374
    :cond_1
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mTriggerComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mAsync:Z

    .line 376
    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    .line 377
    new-instance p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-direct {p1, p0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;-><init>(Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;)V

    return-object p1
.end method

.method public buildPage(Lcom/taobao/android/ultron/datamodel/IDMContext;)Lcom/taobao/android/ultron/datamodel/IDMRequester;
    .locals 2

    .line 345
    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->checkParams()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 351
    :cond_1
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    .line 353
    new-instance p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-direct {p1, p0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;-><init>(Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;)V

    return-object p1
.end method

.method public buildSubmit(Ljava/lang/Class;Lcom/taobao/android/ultron/datamodel/IDMContext;)Lcom/taobao/android/ultron/datamodel/IDMRequester;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/taobao/android/ultron/datamodel/IDMContext;",
            ")",
            "Lcom/taobao/android/ultron/datamodel/IDMRequester;"
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->checkParams()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mSubmit:Z

    .line 399
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mResponseClazz:Ljava/lang/Class;

    .line 400
    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    .line 402
    new-instance p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-direct {p1, p0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;-><init>(Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;)V

    return-object p1
.end method

.method public childBizName(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mChildBizName:Ljava/lang/String;

    return-object p0
.end method

.method public domain(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public fromPurchase(Z)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 306
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isFromPurchase:Z

    return-object p0
.end method

.method public getApi()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mApi:Ljava/lang/String;

    invoke-interface {v0, v1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mApi:Ljava/lang/String;

    return-object v0
.end method

.method public getBizId()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mBizId:I

    return v0
.end method

.method public getBizName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getChildBizName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mChildBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDMContext()Lcom/taobao/android/ultron/datamodel/IDMContext;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mResponseClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getTriggerComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mTriggerComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0
.end method

.method public getUnitStrategy()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mUnitStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mPreference:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mApi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isAsync()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mAsync:Z

    return v0
.end method

.method public isFromPurchase()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->isFromPurchase:Z

    return v0
.end method

.method public isGzip()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mGzip:Z

    return v0
.end method

.method public isNeedEcode()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mNeedEcode:Z

    return v0
.end method

.method public isNeedSession()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mNeedSession:Z

    return v0
.end method

.method public isPostMethod()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mPostMethod:Z

    return v0
.end method

.method public isSubmit()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mSubmit:Z

    return v0
.end method

.method public isUseWua()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mUseWua:Z

    return v0
.end method

.method public needEcode(Z)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mNeedEcode:Z

    return-object p0
.end method

.method public needSession(Z)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mNeedSession:Z

    return-object p0
.end method

.method public pData(Z)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->pData:Z

    return-object p0
.end method

.method public pData()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->pData:Z

    return v0
.end method

.method public params(Ljava/util/Map;)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mParams:Ljava/util/Map;

    return-object p0
.end method

.method public postMethod(Z)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mPostMethod:Z

    return-object p0
.end method

.method public requestHeaders(Ljava/util/Map;)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setGzip(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mGzip:Z

    return-void
.end method

.method public unitStrategy(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mUnitStrategy:Ljava/lang/String;

    return-object p0
.end method

.method public useWua(Z)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mUseWua:Z

    return-object p0
.end method

.method public version(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/DMRequestBuilder;->mVersion:Ljava/lang/String;

    return-object p0
.end method
