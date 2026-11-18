.class public Lcom/ut/mini/module/plugin/UTPluginMgr;
.super Ljava/lang/Object;
.source "UTPluginMgr.java"


# static fields
.field private static mInstance:Lcom/ut/mini/module/plugin/UTPluginMgr;


# instance fields
.field private allUTPluginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/module/plugin/UTPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private openUTPluginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/module/plugin/UTPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private utPluginConfig:Lcom/ut/mini/module/plugin/UTPluginConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/ut/mini/module/plugin/UTPluginMgr;

    invoke-direct {v0}, Lcom/ut/mini/module/plugin/UTPluginMgr;-><init>()V

    sput-object v0, Lcom/ut/mini/module/plugin/UTPluginMgr;->mInstance:Lcom/ut/mini/module/plugin/UTPluginMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->utPluginConfig:Lcom/ut/mini/module/plugin/UTPluginConfig;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->allUTPluginMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->openUTPluginMap:Ljava/util/Map;

    .line 24
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTClientConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/UTClientConfigMgr;

    move-result-object v0

    new-instance v1, Lcom/ut/mini/module/plugin/UTPluginMgr$1;

    invoke-direct {v1, p0}, Lcom/ut/mini/module/plugin/UTPluginMgr$1;-><init>(Lcom/ut/mini/module/plugin/UTPluginMgr;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/config/UTClientConfigMgr;->registerConfigChangeListener(Lcom/alibaba/analytics/core/config/UTClientConfigMgr$IConfigChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ut/mini/module/plugin/UTPluginMgr;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/ut/mini/module/plugin/UTPluginMgr;->parseUTPluginConfig(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/ut/mini/module/plugin/UTPluginMgr;
    .locals 1

    .line 38
    sget-object v0, Lcom/ut/mini/module/plugin/UTPluginMgr;->mInstance:Lcom/ut/mini/module/plugin/UTPluginMgr;

    return-object v0
.end method

.method private isOpen(Ljava/lang/String;)Z
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->utPluginConfig:Lcom/ut/mini/module/plugin/UTPluginConfig;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/ut/mini/module/plugin/UTPluginConfig;->getOpen()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->utPluginConfig:Lcom/ut/mini/module/plugin/UTPluginConfig;

    invoke-virtual {v0}, Lcom/ut/mini/module/plugin/UTPluginConfig;->getClose()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->utPluginConfig:Lcom/ut/mini/module/plugin/UTPluginConfig;

    invoke-virtual {p1}, Lcom/ut/mini/module/plugin/UTPluginConfig;->getOther()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private declared-synchronized parseUTPluginConfig(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 120
    :try_start_0
    const-class v0, Lcom/ut/mini/module/plugin/UTPluginConfig;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ut/mini/module/plugin/UTPluginConfig;

    iput-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->utPluginConfig:Lcom/ut/mini/module/plugin/UTPluginConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    .line 122
    :try_start_1
    iput-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->utPluginConfig:Lcom/ut/mini/module/plugin/UTPluginConfig;

    .line 125
    :goto_0
    iget-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->allUTPluginMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 126
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    invoke-direct {p0, v1}, Lcom/ut/mini/module/plugin/UTPluginMgr;->isOpen(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->openUTPluginMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->openUTPluginMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/module/plugin/UTPlugin;

    .line 133
    iget-object v2, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->openUTPluginMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 136
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public forEachPlugin(Lcom/ut/mini/module/plugin/IUTPluginForEachDelegate;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->openUTPluginMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/module/plugin/UTPlugin;

    if-eqz v1, :cond_1

    .line 52
    invoke-interface {p1, v1}, Lcom/ut/mini/module/plugin/IUTPluginForEachDelegate;->onPluginForEach(Lcom/ut/mini/module/plugin/UTPlugin;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->openUTPluginMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized registerPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lcom/ut/mini/module/plugin/UTPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OldUTPlugin_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->allUTPluginMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->allUTPluginMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-direct {p0, v0}, Lcom/ut/mini/module/plugin/UTPluginMgr;->isOpen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->openUTPluginMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 75
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unregisterPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 79
    :try_start_0
    invoke-virtual {p1}, Lcom/ut/mini/module/plugin/UTPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OldUTPlugin_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->allUTPluginMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr;->openUTPluginMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 89
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method
