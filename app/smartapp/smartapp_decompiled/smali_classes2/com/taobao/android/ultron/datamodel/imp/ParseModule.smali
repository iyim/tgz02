.class public Lcom/taobao/android/ultron/datamodel/imp/ParseModule;
.super Ljava/lang/Object;
.source "ParseModule.java"


# static fields
.field private static CARD_GROUP_TAG:Ljava/lang/String; = "CardGroupTag"

.field private static POSITION_TAG:Ljava/lang/String; = "PositionTag"

.field private static final TAG:Ljava/lang/String; = "ParseModule"


# instance fields
.field private mRootComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field useTagIdFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->useTagIdFeature:Z

    return-void
.end method

.method private createDMComponent(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/imp/DMComponent;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "tag"

    if-eqz p3, :cond_1

    .line 721
    iget-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->useTagIdFeature:Z

    if-eqz v1, :cond_1

    .line 722
    invoke-static {p3}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getComponentInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 723
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 724
    aget-object v2, v1, v2

    invoke-virtual {p2, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 725
    aget-object v1, v1, v2

    const-string v2, "id"

    invoke-virtual {p2, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "type"

    .line 729
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 732
    invoke-direct {p0, p1, v1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getContainerTypeByComponentType(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-direct {p0, p1, v1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getContainerInfo(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "events"

    .line 739
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 740
    invoke-direct {p0, p1, v2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseEventMap(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 742
    new-instance v2, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    invoke-direct {v2, p2, v0, v1, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    .line 743
    invoke-virtual {v2, p3}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->setComponentKey(Ljava/lang/String;)V

    return-object v2
.end method

.method private dealLinkageType(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V
    .locals 3

    .line 586
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getComponentMap()Ljava/util/Map;

    move-result-object v0

    .line 587
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getRequest()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 589
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 590
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getLinkage()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v2, "request"

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 595
    check-cast v1, Ljava/lang/String;

    .line 596
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    if-nez v1, :cond_1

    goto :goto_0

    .line 600
    :cond_1
    sget-object v2, Lcom/taobao/android/ultron/common/model/LinkageType;->REQUEST:Lcom/taobao/android/ultron/common/model/LinkageType;

    invoke-virtual {v1, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->setLinkageType(Lcom/taobao/android/ultron/common/model/LinkageType;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCardGroupTag(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 919
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getCardGroup()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 925
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 926
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    sget-object v1, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->CARD_GROUP_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 927
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    sget-object v1, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->CARD_GROUP_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 928
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    sget-object p2, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->CARD_GROUP_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public static getComponentInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 749
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "_"

    .line 752
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 754
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 757
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v3

    .line 758
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 759
    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    aput-object p0, v0, v3

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getComponentPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 965
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object p0

    sget-object v0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->POSITION_TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 968
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getContainerInfo(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 575
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getType2containerInfoMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    return-object p1
.end method

.method private getContainerTypeByComponentType(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "native"

    if-nez p2, :cond_0

    return-object v0

    .line 558
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getType2containerInfoMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_1

    const-string p2, "containerType"

    .line 560
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getFirstRenderComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1
    .param p1    # Lcom/taobao/android/ultron/common/model/IDMComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 394
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getChildren()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getFirstRenderComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getNormolComponentList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 186
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 188
    invoke-direct {p0, v1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->isNormalComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 937
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 938
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getPosition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 939
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getPosition()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 943
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 944
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    sget-object v1, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->POSITION_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 945
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    sget-object v1, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->POSITION_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 946
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    sget-object p2, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->POSITION_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method private isNormalComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 198
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundleLine"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseAdjustResponseJson(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/datamodel/imp/DMContext;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    const-string v0, "cornerType"

    .line 625
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getComponents()Ljava/util/List;

    move-result-object v1

    .line 626
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getRenderComponentMap()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_a

    if-eqz v2, :cond_a

    .line 628
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v3, "data"

    .line 632
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    .line 637
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->updateContextData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)V

    .line 641
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 642
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 643
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 644
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    if-eqz v6, :cond_2

    .line 648
    :try_start_0
    invoke-virtual {v6}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 649
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v4, :cond_3

    const-string v8, "fields"

    .line 650
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 652
    invoke-virtual {v8, v0, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v5, :cond_4

    .line 656
    iget-boolean v7, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->useTagIdFeature:Z

    if-eqz v7, :cond_4

    .line 657
    invoke-static {v5}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getComponentInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 658
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    const-string v7, "tag"

    const/4 v8, 0x0

    .line 659
    aget-object v8, v5, v8

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "id"

    const/4 v8, 0x1

    .line 660
    aget-object v5, v5, v8

    invoke-virtual {v4, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_4
    invoke-virtual {v6, p1, v4}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->onReload(Lcom/taobao/android/ultron/datamodel/IDMContext;Lcom/alibaba/fastjson/JSONObject;)V

    const-string v5, "events"

    .line 665
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 666
    invoke-direct {p0, p1, v4}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseEventMap(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 667
    invoke-virtual {v6, v4}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->onReloadEvent(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    const-string v0, "linkage"

    .line 679
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 681
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 682
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "common"

    .line 683
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 685
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    .line 687
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getCommon()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 690
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 689
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 691
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 692
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 691
    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 695
    :cond_7
    invoke-virtual {p1, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setCommon(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 699
    :cond_8
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getLinkage()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 703
    :cond_9
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->dealLinkageType(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    return-object v1

    :cond_a
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseContainer(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 13

    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "container"

    .line 503
    invoke-virtual {p1, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->isUseCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getType2containerInfoMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 508
    :cond_1
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-string v0, "data"

    .line 512
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 516
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_7

    .line 520
    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 524
    :cond_4
    new-instance v7, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    invoke-direct {v7, v6}, Lcom/taobao/android/ultron/common/model/DynamicTemplate;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 525
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "type"

    .line 526
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_2

    .line 530
    :cond_5
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_6

    .line 532
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "componentType: "

    .line 533
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", containerName: "

    .line 534
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getType2containerInfoMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v12

    invoke-virtual {v12, v11, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 541
    :cond_7
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getDynamicTemplateList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_8

    .line 542
    invoke-virtual {p1, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setTemplateList(Ljava/util/List;)V

    goto :goto_3

    .line 544
    :cond_8
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getDynamicTemplateList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_3
    return-void
.end method

.method private parseDelta(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/datamodel/imp/DMContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getComponents()Ljava/util/List;

    move-result-object v1

    .line 228
    iget-object v2, p1, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mComponentMap:Ljava/util/Map;

    .line 229
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getHierarchy()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "delta"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 230
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 231
    instance-of v5, v4, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_0

    .line 232
    nop

    nop

    const-string v5, "opType"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "target"

    .line 233
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "parent"

    .line 234
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "position"

    .line 235
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "replace"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string v8, "reload"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_2
    const-string v8, "insert"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "delete"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, -0x1

    :goto_2
    const-string v8, "ParseModule"

    if-eqz v5, :cond_f

    const/4 v11, 0x0

    if-eq v5, v13, :cond_7

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_2

    goto :goto_0

    .line 375
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    if-nez v4, :cond_3

    const-string v5, "reload target is null"

    .line 377
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 379
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "events"

    .line 381
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 382
    invoke-direct {p0, p1, v5}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseEventMap(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v6

    .line 383
    invoke-virtual {v4, v6}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->onReloadEvent(Ljava/util/Map;)V

    .line 384
    invoke-virtual {v4, v5}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->setEvents(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 350
    :cond_4
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    if-nez v4, :cond_5

    const-string v4, "delete target is null"

    .line 352
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :cond_5
    invoke-virtual {v4}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getParent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v5

    check-cast v5, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    if-nez v5, :cond_6

    goto/16 :goto_0

    .line 360
    :cond_6
    invoke-virtual {v5}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 361
    invoke-virtual {v5}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 362
    invoke-virtual {v4, v11}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->setParent(Lcom/taobao/android/ultron/datamodel/imp/DMComponent;)V

    .line 365
    new-instance v5, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;

    invoke-direct {v5}, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;-><init>()V

    .line 366
    invoke-virtual {v5, v4}, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 367
    invoke-virtual {v5, v7}, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;->setPosition(I)V

    .line 368
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 372
    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    .line 293
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    .line 297
    :cond_8
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-nez v4, :cond_9

    goto/16 :goto_0

    .line 301
    :cond_9
    invoke-direct {p0, p1, v4, v6}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->createDMComponent(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    move-result-object v4

    .line 303
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    if-nez v5, :cond_a

    goto/16 :goto_0

    :cond_a
    if-eqz v11, :cond_b

    .line 310
    invoke-virtual {v5}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_3

    :cond_b
    const/4 v7, 0x0

    .line 312
    :goto_3
    invoke-virtual {v5}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getChildren()Ljava/util/List;

    move-result-object v9

    add-int/2addr v7, v13

    invoke-interface {v9, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 313
    invoke-virtual {v4, v5}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->setParent(Lcom/taobao/android/ultron/datamodel/imp/DMComponent;)V

    .line 317
    invoke-direct {p0, v4, v5}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getCardGroupTag(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-direct {p0, v4, v5}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v9

    .line 319
    invoke-direct {p0, v4, v7}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setComponentCardGroupTag(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, v4, v9}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setComponentPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V

    .line 323
    new-instance v7, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;

    invoke-direct {v7}, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;-><init>()V

    .line 324
    new-instance v9, Lcom/taobao/android/ultron/datamodel/imp/ParseModule$1;

    invoke-direct {v9, p0, v4}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule$1;-><init>(Lcom/taobao/android/ultron/datamodel/imp/ParseModule;Lcom/taobao/android/ultron/datamodel/imp/DMComponent;)V

    invoke-virtual {v7, v9}, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->setComponents(Ljava/util/List;)V

    .line 327
    invoke-virtual {v7, v11}, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->setPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 328
    invoke-virtual {v7, v5}, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->setParent(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 329
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_c

    .line 333
    invoke-interface {v1, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v5, v13

    .line 334
    invoke-interface {v1, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 338
    :cond_c
    invoke-direct {p0, v5}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getFirstRenderComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 339
    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_d

    .line 340
    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 342
    :cond_d
    new-array v7, v13, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "firstRender is not in renderComponent, firstRender : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_e

    .line 343
    invoke-interface {v5}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_e
    const-string v5, "null"

    :goto_4
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v12

    .line 342
    invoke-static {v8, v7}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 347
    :goto_5
    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 238
    :cond_f
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    if-nez v4, :cond_10

    const-string v4, "replace target is null"

    .line 240
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_10
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 244
    invoke-direct {p0, p1, v5, v6}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->createDMComponent(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    move-result-object v5

    .line 246
    invoke-virtual {v4}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getParent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v7

    check-cast v7, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    if-nez v7, :cond_11

    goto/16 :goto_0

    .line 250
    :cond_11
    invoke-virtual {v7}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getChildren()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, v11, :cond_12

    const-string v10, "target component index is -1"

    .line 253
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 255
    :cond_12
    invoke-virtual {v7}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 256
    invoke-virtual {v7}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 257
    invoke-virtual {v5, v7}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->setParent(Lcom/taobao/android/ultron/datamodel/imp/DMComponent;)V

    .line 259
    invoke-virtual {v4}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 261
    invoke-virtual {v5}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 263
    invoke-virtual {v8}, Landroid/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 272
    :cond_13
    invoke-direct {p0, v5, v7}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getCardGroupTag(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v8

    .line 273
    invoke-direct {p0, v5, v7}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v7

    .line 274
    invoke-direct {p0, v5, v8}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setComponentCardGroupTag(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, v5, v7}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setComponentPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V

    .line 278
    new-instance v7, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;

    invoke-direct {v7}, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;-><init>()V

    .line 279
    invoke-virtual {v7, v5}, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 280
    invoke-virtual {v7, v4}, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->setReplaced(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 281
    invoke-virtual {v7, v9}, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->setPosition(I)V

    .line 282
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 286
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 287
    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 288
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 389
    :cond_14
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getDiffInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_3
        -0x468f3d47 -> :sswitch_2
        -0x37b57e67 -> :sswitch_1
        0x413cb2b4 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseEvent(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/ultron/common/model/IDMEvent;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 794
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "type"

    .line 798
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fields"

    .line 799
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, "nextRenderRoot"

    .line 800
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 802
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 803
    invoke-virtual {p0, p1, v2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getComponentsByRoot(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 806
    :cond_2
    new-instance p1, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;

    invoke-direct {p1, v1, p2, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;)V

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private parseEventMap(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/datamodel/imp/DMContext;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMEvent;",
            ">;>;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 766
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 769
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 770
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 771
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 772
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 773
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/alibaba/fastjson/JSONArray;

    if-nez v3, :cond_2

    goto :goto_0

    .line 776
    :cond_2
    nop

    nop

    .line 777
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 778
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 779
    instance-of v5, v4, Lcom/alibaba/fastjson/JSONObject;

    if-nez v5, :cond_4

    goto :goto_1

    .line 782
    :cond_4
    nop

    nop

    invoke-direct {p0, p1, v4}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseEvent(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 784
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 787
    :cond_5
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseFullResponseJson(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/datamodel/imp/DMContext;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "data"

    .line 412
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "hierarchy"

    .line 413
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string v5, "linkage"

    .line 414
    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "global"

    .line 415
    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    const-string v7, "endpoint"

    .line 416
    invoke-virtual {p2, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-string v8, "structure"

    if-eqz v4, :cond_1

    .line 419
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v0

    :goto_0
    if-eqz v2, :cond_a

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 429
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getDiffInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "delta"

    .line 431
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v10, "protocolVersion"

    if-eqz v3, :cond_4

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 432
    invoke-virtual {p1, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 433
    invoke-virtual {p1, v9}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setStructure(Lcom/alibaba/fastjson/JSONObject;)V

    .line 434
    invoke-virtual {p1, v4}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setHierarchy(Lcom/alibaba/fastjson/JSONObject;)V

    .line 435
    invoke-virtual {p1, v6}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setGlobal(Lcom/alibaba/fastjson/JSONObject;)V

    .line 436
    invoke-virtual {p1, v5}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setLinkage(Lcom/alibaba/fastjson/JSONObject;)V

    .line 437
    invoke-virtual {p1, v7}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setEndpoint(Lcom/alibaba/fastjson/JSONObject;)V

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseContainer(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)V

    if-eqz v7, :cond_3

    .line 440
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setProtocolVersion(Ljava/lang/String;)V

    .line 443
    :cond_3
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseDelta(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)Ljava/util/List;

    move-result-object p1

    .line 445
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setCornerType(Ljava/util/List;)V

    return-object p1

    .line 449
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_5

    .line 451
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->reset()V

    .line 452
    invoke-virtual {p1, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 453
    invoke-virtual {p1, v9}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setStructure(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 456
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getRenderComponentMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 457
    invoke-virtual {p1, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mergeData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    .line 458
    invoke-virtual {p1, v9}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mergeStructure(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 459
    invoke-virtual {v4, v8, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-virtual {p1, v6}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mergeGlobal(Lcom/alibaba/fastjson/JSONObject;)V

    .line 462
    :goto_1
    invoke-virtual {p1, v4}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setHierarchy(Lcom/alibaba/fastjson/JSONObject;)V

    .line 463
    invoke-virtual {p1, v6}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setGlobal(Lcom/alibaba/fastjson/JSONObject;)V

    if-nez v5, :cond_6

    .line 465
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 467
    :cond_6
    invoke-virtual {p1, v5}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setLinkage(Lcom/alibaba/fastjson/JSONObject;)V

    .line 468
    invoke-virtual {p1, v7}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setEndpoint(Lcom/alibaba/fastjson/JSONObject;)V

    if-eqz v7, :cond_7

    .line 470
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setProtocolVersion(Ljava/lang/String;)V

    .line 473
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseContainer(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)V

    const-string p2, "common"

    .line 476
    invoke-virtual {v5, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 477
    invoke-virtual {p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setCommon(Lcom/alibaba/fastjson/JSONObject;)V

    .line 480
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getRootComponentKey()Ljava/lang/String;

    move-result-object p2

    .line 481
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p2, "root"

    .line 482
    invoke-virtual {v4, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 484
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    .line 488
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getComponentsByRoot(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 489
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getRenderComponentMap()Ljava/util/Map;

    move-result-object p1

    .line 490
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->mRootComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0

    :cond_a
    :goto_2
    if-nez v2, :cond_b

    :goto_3
    move-object v3, v1

    goto :goto_4

    :cond_b
    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    const-string v1, "default"

    goto :goto_3

    .line 426
    :goto_4
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getBizName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v2, "protocolError"

    const-string v4, "1.0"

    const-string v8, "errorcode"

    .line 425
    invoke-static/range {v2 .. v9}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_5
    return-object v0
.end method

.method private resolve(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;Lcom/taobao/android/ultron/datamodel/imp/DMComponent;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/datamodel/imp/DMContext;",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/imp/DMComponent;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 818
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 821
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 823
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getStructure()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 824
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 825
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getComponentMap()Ljava/util/Map;

    move-result-object v4

    .line 826
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getRenderComponentMap()Ljava/util/Map;

    move-result-object v5

    if-eqz v2, :cond_3

    const-string v6, "data"

    .line 830
    invoke-virtual {p1, v6}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->isUseCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v1

    goto :goto_2

    .line 831
    :cond_3
    :goto_1
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    :goto_2
    if-nez v6, :cond_4

    .line 836
    :try_start_0
    invoke-direct {p0, p1, v2, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->createDMComponent(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const/4 v7, 0x2

    .line 838
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "createDMComponent error"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    const-string v2, "ParseModule"

    invoke-static {v2, v7}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 842
    :cond_4
    invoke-virtual {v6}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_3
    if-eqz v6, :cond_5

    .line 846
    invoke-virtual {v6, p3}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->setParent(Lcom/taobao/android/ultron/datamodel/imp/DMComponent;)V

    .line 848
    invoke-interface {v4, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-interface {v5, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_5
    invoke-direct {p0, v6, p3}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getCardGroupTag(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v2

    .line 856
    invoke-direct {p0, v6, p3}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object p3

    if-eqz v6, :cond_7

    .line 860
    invoke-virtual {v6}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->isExtendBlock()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 861
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getExtendBlockComponentMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/datamodel/imp/ExtendBlock;

    if-nez v1, :cond_6

    .line 863
    new-instance v1, Lcom/taobao/android/ultron/datamodel/imp/ExtendBlock;

    invoke-direct {v1, v6}, Lcom/taobao/android/ultron/datamodel/imp/ExtendBlock;-><init>(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 864
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getExtendBlockComponentMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 866
    :cond_6
    invoke-virtual {v1, v6}, Lcom/taobao/android/ultron/datamodel/imp/ExtendBlock;->updateExtendBlock(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 870
    :cond_7
    :goto_4
    invoke-virtual {v3, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    if-nez p2, :cond_8

    if-eqz v6, :cond_e

    .line 872
    invoke-virtual {v6}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 874
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-direct {p0, v6, v2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setComponentCardGroupTag(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V

    .line 876
    invoke-direct {p0, v6, p3}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setComponentPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V

    goto :goto_6

    .line 881
    :cond_8
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v6, :cond_a

    goto :goto_5

    .line 885
    :cond_a
    check-cast v3, Ljava/lang/String;

    .line 887
    invoke-direct {p0, v6, v2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setComponentCardGroupTag(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V

    .line 888
    invoke-direct {p0, v6, p3}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setComponentPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V

    .line 889
    invoke-direct {p0, p1, v3, v6}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->resolve(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;Lcom/taobao/android/ultron/datamodel/imp/DMComponent;)Ljava/util/List;

    move-result-object v5

    if-eqz v1, :cond_b

    .line 892
    invoke-virtual {v1, v3, v5}, Lcom/taobao/android/ultron/datamodel/imp/ExtendBlock;->addBlock(Ljava/lang/String;Ljava/util/List;)V

    .line 893
    invoke-virtual {v1, v3, p1}, Lcom/taobao/android/ultron/datamodel/imp/ExtendBlock;->addHierarchy(Ljava/lang/String;Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    :cond_b
    if-eqz v5, :cond_9

    if-nez v1, :cond_c

    .line 897
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    if-eqz v4, :cond_9

    .line 901
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-eqz v6, :cond_9

    if-eqz v3, :cond_9

    .line 903
    invoke-virtual {v6, v3}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->addChild(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    goto :goto_5

    :cond_d
    if-eqz v1, :cond_e

    .line 909
    invoke-virtual {v1}, Lcom/taobao/android/ultron/datamodel/imp/ExtendBlock;->getblockComponentList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    :goto_6
    return-object v0
.end method

.method private setComponentCardGroupTag(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V
    .locals 1

    .line 953
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 954
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    sget-object v0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->CARD_GROUP_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setComponentPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/String;)V
    .locals 1

    .line 959
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    sget-object v0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->POSITION_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setCornerType(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getNormolComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v2, v1

    const/4 v1, 0x1

    .line 140
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    const/16 v6, 0x11

    const/16 v7, 0x10

    if-ge v3, v5, :cond_5

    .line 141
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 142
    invoke-interface {v5}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_3

    .line 145
    :cond_0
    invoke-interface {v5}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    sget-object v9, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->CARD_GROUP_TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v3, 0x1

    .line 149
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 150
    invoke-interface {v2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    sget-object v9, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->CARD_GROUP_TAG:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-ne v0, v1, :cond_2

    .line 153
    invoke-direct {p0, v5, v0}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setCornerTypeFields(Lcom/taobao/android/ultron/common/model/IDMComponent;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_1
    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_3

    :cond_3
    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    const/16 v6, 0x10

    .line 164
    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setCornerTypeFields(Lcom/taobao/android/ultron/common/model/IDMComponent;I)V

    goto :goto_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-ne v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/16 v6, 0x10

    .line 177
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 178
    invoke-direct {p0, v4, v6}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setCornerTypeFields(Lcom/taobao/android/ultron/common/model/IDMComponent;I)V

    :cond_7
    return-void
.end method

.method private setCornerTypeFields(Lcom/taobao/android/ultron/common/model/IDMComponent;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "cornerType"

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10

    if-eq p2, v0, :cond_2

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "both"

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_2
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "bottom"

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_3
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "top"

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private updateContextData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 612
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method getComponentsByRoot(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/datamodel/imp/DMContext;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->resolve(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;Lcom/taobao/android/ultron/datamodel/imp/DMComponent;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-direct {p0, v0}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->setCornerType(Ljava/util/List;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->dealLinkageType(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 126
    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getComponentsByRoot"

    aput-object v2, p1, v1

    const/4 v1, 0x1

    const-string v2, "output is empty\uff0crootComponentKey:"

    aput-object v2, p1, v1

    const/4 v1, 0x2

    aput-object p2, p1, v1

    const-string p2, "ParseModule"

    invoke-static {p2, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-object v0
.end method

.method getRootComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->mRootComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0
.end method

.method parseComponents(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 6

    const-string v0, "parseComponents"

    .line 66
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getProtocolFeatures()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "ParseModule"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 68
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getProtocolFeatures()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/taobao/android/ultron/datamodel/imp/ProtocolFeatures;->FEATURE_TAG_ID:Ljava/math/BigInteger;

    invoke-static {v1, v5}, Lcom/taobao/android/ultron/datamodel/imp/ProtocolFeatures;->hasFeature(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->useTagIdFeature:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 70
    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v3, v5}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    return v4

    :cond_1
    :try_start_1
    const-string v1, "reload"

    .line 79
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "parseFullResponseJson"

    .line 81
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseFullResponseJson(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string v1, "parseAdjustResponseJson"

    .line 84
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseAdjustResponseJson(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-nez p2, :cond_3

    return v4

    .line 95
    :cond_3
    invoke-virtual {p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setComponentList(Ljava/util/List;)V

    const-string p1, "parse success"

    .line 96
    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return v2

    :catch_1
    move-exception p1

    const/4 p2, 0x2

    .line 88
    new-array p2, p2, [Ljava/lang/String;

    aput-object v0, p2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {v3, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return v4
.end method
