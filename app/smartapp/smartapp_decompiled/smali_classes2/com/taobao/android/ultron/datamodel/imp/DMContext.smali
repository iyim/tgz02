.class public Lcom/taobao/android/ultron/datamodel/imp/DMContext;
.super Ljava/lang/Object;
.source "DMContext.java"

# interfaces
.implements Lcom/taobao/android/ultron/datamodel/IDMContext;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ultron-sdk"

.field public static final MERGE_MODE:I = 0x0

.field public static final REPLACE_MODE:I = 0x1


# instance fields
.field diffInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/datamodel/imp/diff/ComponentDiffInfo;",
            ">;"
        }
    .end annotation
.end field

.field private extendBlockComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/imp/ExtendBlock;",
            ">;"
        }
    .end annotation
.end field

.field private isCacheData:Z

.field private mAppContext:Landroid/content/Context;

.field private mBizName:Ljava/lang/String;

.field private mCacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

.field private mCacheFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChildBizName:Ljava/lang/String;

.field private mCommon:Lcom/alibaba/fastjson/JSONObject;

.field mComponentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end field

.field mComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/imp/DMComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lcom/alibaba/fastjson/JSONObject;

.field mDynamicTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mEndpoint:Lcom/alibaba/fastjson/JSONObject;

.field private mEngine:Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

.field private mGlobal:Lcom/alibaba/fastjson/JSONObject;

.field mGzip:Z

.field private mHierarchy:Lcom/alibaba/fastjson/JSONObject;

.field private mLinkage:Lcom/alibaba/fastjson/JSONObject;

.field private mProtocolFeatures:Ljava/lang/String;

.field private mProtocolVersion:Ljava/lang/String;

.field mRenderComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/imp/DMComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mRootComponentKey:Ljava/lang/String;

.field private mStructure:Lcom/alibaba/fastjson/JSONObject;

.field private mStructureMergeMode:I

.field private mType2containerInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mValidateModule:Lcom/taobao/android/ultron/datamodel/imp/ValidateModule;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mProtocolVersion:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mRenderComponentMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->extendBlockComponentMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mType2containerInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->diffInfos:Ljava/util/List;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->isCacheData:Z

    .line 79
    iput v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructureMergeMode:I

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCacheFields:Ljava/util/Set;

    .line 84
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    invoke-direct {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEngine:Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    .line 85
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mGzip:Z

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mProtocolVersion:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mRenderComponentMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->extendBlockComponentMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mType2containerInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->diffInfos:Ljava/util/List;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->isCacheData:Z

    .line 79
    iput v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructureMergeMode:I

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCacheFields:Ljava/util/Set;

    .line 88
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    invoke-direct {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEngine:Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    .line 89
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mGzip:Z

    .line 90
    invoke-virtual {p0, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private mergeExtendBlock(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 278
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 279
    :goto_0
    move-object v1, p1

    nop

    nop

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 280
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 282
    move-object v2, p2

    nop

    nop

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBizName()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheDataResult()Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    return-object v0
.end method

.method public getChildBizName()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mChildBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommon()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCommon:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getComponentByName(Ljava/lang/String;)Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object p1
.end method

.method public getComponentMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/imp/DMComponent;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentMap:Ljava/util/Map;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentList:Ljava/util/List;

    return-object v0
.end method

.method public getComponentsByRoot(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEngine:Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->getComponentsByRoot(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getDiffInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/datamodel/imp/diff/ComponentDiffInfo;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->diffInfos:Ljava/util/List;

    return-object v0
.end method

.method public getDynamicTemplateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mDynamicTemplateList:Ljava/util/List;

    return-object v0
.end method

.method public getEndpoint()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEndpoint:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEngine:Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    return-object v0
.end method

.method public getExtendBlockComponentMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/imp/ExtendBlock;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->extendBlockComponentMap:Ljava/util/Map;

    return-object v0
.end method

.method public getGlobal()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mGlobal:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getHierarchy()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mHierarchy:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getInput()Lcom/alibaba/fastjson/JSONArray;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mLinkage:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "input"

    .line 176
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getLinkage()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mLinkage:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getProtocolFeatures()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mProtocolFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mProtocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderComponentMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/imp/DMComponent;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mRenderComponentMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRequest()Lcom/alibaba/fastjson/JSONArray;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mLinkage:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "request"

    .line 169
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getRootComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEngine:Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->getRootComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v0

    return-object v0
.end method

.method public getRootComponentKey()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mRootComponentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStructure()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getType2containerInfoMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mType2containerInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public isCacheData()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->isCacheData:Z

    return v0
.end method

.method public isUseCache(Ljava/lang/String;)Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCacheFields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method mergeData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mData:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 299
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mData:Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 303
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mData:Lcom/alibaba/fastjson/JSONObject;

    return-object p1
.end method

.method mergeGlobal(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .line 246
    iget v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructureMergeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mGlobal:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 248
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 251
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method mergeStructure(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5

    .line 216
    iget v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructureMergeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->replaceStructure(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->extendBlockComponentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 222
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_2

    goto :goto_0

    .line 231
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 234
    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 236
    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v4, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mergeExtendBlock(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    :cond_4
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_5
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    return-object p1

    .line 223
    :cond_6
    :goto_1
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    .line 224
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    return-object p1
.end method

.method replaceStructure(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->extendBlockComponentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 262
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 264
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 274
    :cond_3
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    return-object p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEndpoint:Lcom/alibaba/fastjson/JSONObject;

    .line 378
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mHierarchy:Lcom/alibaba/fastjson/JSONObject;

    .line 379
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    .line 380
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mGlobal:Lcom/alibaba/fastjson/JSONObject;

    .line 381
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mLinkage:Lcom/alibaba/fastjson/JSONObject;

    .line 382
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCommon:Lcom/alibaba/fastjson/JSONObject;

    .line 383
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mProtocolVersion:Ljava/lang/String;

    .line 384
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentList:Ljava/util/List;

    .line 385
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mDynamicTemplateList:Ljava/util/List;

    .line 387
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mData:Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "data"

    .line 389
    invoke-virtual {p0, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->isUseCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mType2containerInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 393
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mRenderComponentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 395
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->extendBlockComponentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setBizName(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mBizName:Ljava/lang/String;

    return-void
.end method

.method public setCacheData(Z)V
    .locals 0

    .line 357
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->isCacheData:Z

    return-void
.end method

.method public setCacheDataResult(Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    return-void
.end method

.method public setChildBizName(Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mChildBizName:Ljava/lang/String;

    return-void
.end method

.method setCommon(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCommon:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method setComponentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentList:Ljava/util/List;

    return-void
.end method

.method public setComponents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentList:Ljava/util/List;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method setData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mData:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setEndpoint(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEndpoint:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method setEngine(Lcom/taobao/android/ultron/datamodel/imp/DMEngine;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEngine:Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    return-void
.end method

.method setGlobal(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mGlobal:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method setHierarchy(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mHierarchy:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method setLinkage(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mLinkage:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setProtocolFeatures(Ljava/lang/String;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mProtocolFeatures:Ljava/lang/String;

    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mProtocolVersion:Ljava/lang/String;

    return-void
.end method

.method public setRootComponentKey(Ljava/lang/String;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mRootComponentKey:Ljava/lang/String;

    return-void
.end method

.method public setStructure(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructure:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setStructureMergeMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 106
    iput v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructureMergeMode:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mStructureMergeMode:I

    :goto_0
    return-void
.end method

.method public setSubmitModule(Lcom/taobao/android/ultron/datamodel/ISubmitModule;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mEngine:Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->setSubmitModule(Lcom/taobao/android/ultron/datamodel/ISubmitModule;)V

    return-void
.end method

.method setTemplateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mDynamicTemplateList:Ljava/util/List;

    return-void
.end method

.method public setType2containerInfoMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mType2containerInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 100
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mType2containerInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public varargs setUseCache([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCacheFields:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mCacheFields:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :goto_0
    return-void
.end method

.method public validate()Lcom/taobao/android/ultron/common/ValidateResult;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mValidateModule:Lcom/taobao/android/ultron/datamodel/imp/ValidateModule;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/ValidateModule;

    invoke-direct {v0, p0}, Lcom/taobao/android/ultron/datamodel/imp/ValidateModule;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mValidateModule:Lcom/taobao/android/ultron/datamodel/imp/ValidateModule;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mValidateModule:Lcom/taobao/android/ultron/datamodel/imp/ValidateModule;

    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/ValidateModule;->execute()Lcom/taobao/android/ultron/common/ValidateResult;

    move-result-object v0

    return-object v0
.end method
