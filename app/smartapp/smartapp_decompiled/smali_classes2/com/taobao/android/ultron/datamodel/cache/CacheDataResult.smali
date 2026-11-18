.class public Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;
.super Ljava/lang/Object;
.source "CacheDataResult.java"


# instance fields
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

.field mTag2containerInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field mTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
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

    .line 29
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->mComponentMap:Ljava/util/Map;

    return-object v0
.end method

.method public getContainer()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->mTag2containerInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public getTemplateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->mTemplateList:Ljava/util/List;

    return-object v0
.end method

.method public setComponentMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/imp/DMComponent;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->mComponentMap:Ljava/util/Map;

    return-void
.end method

.method public setContainerMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->mTag2containerInfoMap:Ljava/util/Map;

    return-void
.end method

.method public setTemplateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->mTemplateList:Ljava/util/List;

    return-void
.end method
