.class public Lcom/taobao/orange/cache/IndexCache;
.super Ljava/lang/Object;
.source "IndexCache.java"


# static fields
.field public static final INDEX_STORE_NAME:Ljava/lang/String; = "orange.index"

.field private static final TAG:Ljava/lang/String; = "IndexCache"


# instance fields
.field public candidateNamespace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mIndex:Lcom/taobao/orange/model/IndexDO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/taobao/orange/model/IndexDO;

    invoke-direct {v0}, Lcom/taobao/orange/model/IndexDO;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->candidateNamespace:Ljava/util/Map;

    return-void
.end method

.method private formatMergedNamespaceMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/orange/model/NameSpaceDO;

    .line 109
    iget-object v2, v1, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getCandidateNamespace(Lcom/taobao/orange/model/IndexDO;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/orange/model/IndexDO;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 80
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    iget-object p1, p1, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/orange/model/NameSpaceDO;

    .line 82
    iget-object v3, v1, Lcom/taobao/orange/model/NameSpaceDO;->candidates:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/taobao/orange/model/NameSpaceDO;->candidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    iget-object v3, v1, Lcom/taobao/orange/model/NameSpaceDO;->candidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/orange/model/CandidateDO;

    .line 84
    iget-object v4, v4, Lcom/taobao/orange/model/CandidateDO;->match:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/taobao/orange/candidate/MultiAnalyze;->complie(Ljava/lang/String;Z)Lcom/taobao/orange/candidate/MultiAnalyze;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/taobao/orange/candidate/MultiAnalyze;->getKeySet()Ljava/util/Set;

    move-result-object v4

    .line 86
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 87
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_3

    .line 89
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 90
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_3
    iget-object v5, v1, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 97
    invoke-static {p1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    .line 98
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "result"

    aput-object v3, v1, v2

    aput-object v0, v1, p1

    const-string p1, "IndexCache"

    const-string v2, "getCandidateNamespace"

    invoke-static {p1, v2, v1}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object v0
.end method

.method private updateOrangeHeader()V
    .locals 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appKey"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/taobao/orange/GlobalOrange;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "appVersion"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/taobao/orange/GlobalOrange;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "clientAppIndexVersion"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/orange/cache/IndexCache;->getAppIndexVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "clientVersionIndexVersion"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/orange/cache/IndexCache;->getVersionIndexVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 120
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "reqOrangeHeader"

    aput-object v3, v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "IndexCache"

    const-string/jumbo v3, "updateOrangeHeader"

    invoke-static {v2, v3, v1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/orange/GlobalOrange;->reqOrangeHeader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cache(Lcom/taobao/orange/model/IndexDO;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/orange/model/IndexDO;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/taobao/orange/cache/IndexCache;->formatMergedNamespaceMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 45
    iget-object v1, p1, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/taobao/orange/cache/IndexCache;->formatMergedNamespaceMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 52
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 54
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/orange/model/NameSpaceDO;

    .line 55
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/orange/model/NameSpaceDO;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 57
    iput-boolean v5, v3, Lcom/taobao/orange/model/NameSpaceDO;->hasChanged:Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v3, v4}, Lcom/taobao/orange/model/NameSpaceDO;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v6, 0x2

    .line 61
    invoke-static {v6}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 62
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "compare change NameSpaceDO"

    aput-object v8, v6, v7

    invoke-static {v3}, Lcom/taobao/orange/util/OrangeUtils;->formatNamespaceDO(Lcom/taobao/orange/model/NameSpaceDO;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "IndexCache"

    const-string v7, "cache"

    invoke-static {v5, v7, v6}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_1
    iput-boolean v4, v3, Lcom/taobao/orange/model/NameSpaceDO;->hasChanged:Z

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/orange/cache/IndexCache;->getCandidateNamespace(Lcom/taobao/orange/model/IndexDO;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->candidateNamespace:Ljava/util/Map;

    .line 69
    iput-object p1, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    .line 70
    invoke-direct {p0}, Lcom/taobao/orange/cache/IndexCache;->updateOrangeHeader()V

    .line 71
    iget-object p1, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    const-string v0, "orange.index"

    invoke-static {p1, v0}, Lcom/taobao/orange/util/FileUtil;->persistObject(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public getAllNameSpaces()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v1, v1, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAppIndexVersion()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->appIndexVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->appIndexVersion:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCdnUrl()Ljava/lang/String;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->cdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/orange/GlobalOrange;->schema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v1, v1, Lcom/taobao/orange/model/IndexDO;->cdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()Lcom/taobao/orange/model/IndexDO;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    return-object v0
.end method

.method public getNameSpace(Ljava/lang/String;)Lcom/taobao/orange/model/NameSpaceDO;
    .locals 4

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/orange/model/NameSpaceDO;

    .line 155
    iget-object v3, v2, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getUpdateNameSpaces(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v1, v1, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/orange/model/NameSpaceDO;

    .line 137
    iget-boolean v3, v2, Lcom/taobao/orange/model/NameSpaceDO;->hasChanged:Z

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, v2, Lcom/taobao/orange/model/NameSpaceDO;->loadLevel:Ljava/lang/String;

    const-string v4, "HIGH"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    .line 141
    iget-object v3, v2, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getVersionIndexVersion()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->versionIndexVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->versionIndexVersion:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public load()V
    .locals 5

    const-string v0, "orange.index"

    .line 29
    invoke-static {v0}, Lcom/taobao/orange/util/FileUtil;->restoreObject(Ljava/lang/String;)Lcom/taobao/orange/model/CheckDO;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/model/IndexDO;

    const/4 v1, 0x0

    const-string v2, "IndexCache"

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    .line 31
    invoke-static {v3}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "indexDO"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/taobao/orange/util/OrangeUtils;->formatIndexDO(Lcom/taobao/orange/model/IndexDO;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "load"

    invoke-static {v2, v1, v3}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    invoke-direct {p0, v0}, Lcom/taobao/orange/cache/IndexCache;->getCandidateNamespace(Lcom/taobao/orange/model/IndexDO;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/orange/cache/IndexCache;->candidateNamespace:Ljava/util/Map;

    .line 35
    iput-object v0, p0, Lcom/taobao/orange/cache/IndexCache;->mIndex:Lcom/taobao/orange/model/IndexDO;

    goto :goto_0

    .line 37
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "load fail"

    invoke-static {v2, v1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/taobao/orange/util/FileUtil;->clearCacheFile()V

    .line 40
    :goto_0
    invoke-direct {p0}, Lcom/taobao/orange/cache/IndexCache;->updateOrangeHeader()V

    return-void
.end method
