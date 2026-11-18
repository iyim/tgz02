.class public Lcom/taobao/orange/cache/ConfigCache;
.super Ljava/lang/Object;
.source "ConfigCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigCache"


# instance fields
.field private mConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/orange/model/ConfigDO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/cache/ConfigCache;->mConfigMap:Ljava/util/Map;

    return-void
.end method

.method private restoreConfig(Lcom/taobao/orange/model/NameSpaceDO;)Lcom/taobao/orange/model/ConfigDO;
    .locals 4

    .line 57
    iget-object p1, p1, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/orange/util/FileUtil;->restoreObject(Ljava/lang/String;)Lcom/taobao/orange/model/CheckDO;

    move-result-object p1

    check-cast p1, Lcom/taobao/orange/model/ConfigDO;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p1, Lcom/taobao/orange/model/ConfigDO;->candidate:Lcom/taobao/orange/model/CandidateDO;

    const/4 v2, 0x0

    const-string v3, "ConfigCache"

    if-nez v1, :cond_0

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string/jumbo v1, "restoreConfig"

    invoke-static {v3, v1, v0}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string/jumbo v1, "restoreAbConfig"

    invoke-static {v3, v1, v0}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public cache(Lcom/taobao/orange/model/ConfigDO;)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/taobao/orange/cache/ConfigCache;->mConfigMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/taobao/orange/ConfigCenter;->getInstance()Lcom/taobao/orange/ConfigCenter;

    move-result-object v0

    iget-object v1, p1, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/taobao/orange/model/ConfigDO;->getCurVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/orange/ConfigCenter;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    iget-object v0, p1, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/taobao/orange/util/FileUtil;->persistObject(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/orange/model/ConfigDO;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/taobao/orange/cache/ConfigCache;->mConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getConfigObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/taobao/orange/cache/ConfigCache;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/orange/model/ConfigDO;

    if-eqz p1, :cond_2

    .line 87
    iget-object v0, p1, Lcom/taobao/orange/model/ConfigDO;->type:Ljava/lang/String;

    const-string v1, "STANDARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object p1, p1, Lcom/taobao/orange/model/ConfigDO;->content:Ljava/util/Map;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p1, Lcom/taobao/orange/model/ConfigDO;->type:Ljava/lang/String;

    const-string v1, "CUSTOM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    check-cast p1, Lcom/taobao/orange/model/CustomConfigDO;

    iget-object p1, p1, Lcom/taobao/orange/model/CustomConfigDO;->stringContent:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 92
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ConfigCache"

    const-string v1, "getConfigs fail unsupport type"

    invoke-static {v0, v1, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public load(Ljava/util/Set;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const-string v2, "ConfigCache"

    if-eqz p1, :cond_4

    .line 28
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/orange/model/NameSpaceDO;

    .line 33
    invoke-direct {p0, v3}, Lcom/taobao/orange/cache/ConfigCache;->restoreConfig(Lcom/taobao/orange/model/NameSpaceDO;)Lcom/taobao/orange/model/ConfigDO;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 36
    iget-object v5, p0, Lcom/taobao/orange/cache/ConfigCache;->mConfigMap:Ljava/util/Map;

    iget-object v6, v4, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/taobao/orange/ConfigCenter;->getInstance()Lcom/taobao/orange/ConfigCenter;

    move-result-object v5

    iget-object v6, v4, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/taobao/orange/ConfigCenter;->removeFail(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/taobao/orange/ConfigCenter;->getInstance()Lcom/taobao/orange/ConfigCenter;

    move-result-object v5

    iget-object v6, v4, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/taobao/orange/model/ConfigDO;->getCurVersion()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/taobao/orange/ConfigCenter;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    iget-object v5, v4, Lcom/taobao/orange/model/ConfigDO;->candidate:Lcom/taobao/orange/model/CandidateDO;

    if-nez v5, :cond_1

    .line 42
    iget-object v5, v3, Lcom/taobao/orange/model/NameSpaceDO;->version:Ljava/lang/String;

    invoke-static {v5}, Lcom/taobao/orange/util/OrangeUtils;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v4, v4, Lcom/taobao/orange/model/ConfigDO;->version:Ljava/lang/String;

    invoke-static {v4}, Lcom/taobao/orange/util/OrangeUtils;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v4, v5, v9

    if-lez v4, :cond_1

    .line 43
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 44
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "name"

    aput-object v5, v4, v1

    iget-object v3, v3, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    aput-object v3, v4, v8

    const-string v3, "load not match as version"

    invoke-static {v2, v3, v4}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v4, v3, Lcom/taobao/orange/model/NameSpaceDO;->loadLevel:Ljava/lang/String;

    const-string v5, "HIGH"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    .line 29
    :cond_4
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "load config cache empty"

    invoke-static {v2, v0, p1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/taobao/orange/util/FileUtil;->deleteConfigFile(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
