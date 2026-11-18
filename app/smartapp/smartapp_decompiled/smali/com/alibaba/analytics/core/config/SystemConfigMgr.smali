.class public Lcom/alibaba/analytics/core/config/SystemConfigMgr;
.super Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;
.source "SystemConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;,
        Lcom/alibaba/analytics/core/config/SystemConfigMgr$UTSystemDelayItem;
    }
.end annotation


# static fields
.field private static final DELAY:Ljava/lang/String; = "delay"

.field private static mInstance:Lcom/alibaba/analytics/core/config/SystemConfigMgr;


# instance fields
.field private final mKVStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSystemDelayItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/analytics/core/config/SystemConfigMgr$UTSystemDelayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final namespace:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 7

    .line 55
    invoke-direct {p0}, Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mListeners:Ljava/util/Map;

    const-string/jumbo v0, "utap_system"

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->namespace:[Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 58
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object v2

    const-class v3, Lcom/alibaba/analytics/core/config/SystemConfig;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/alibaba/analytics/core/db/DBMgr;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 62
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/analytics/core/config/SystemConfig;

    iget-object v5, v5, Lcom/alibaba/analytics/core/config/SystemConfig;->key:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/analytics/core/config/SystemConfig;

    iget-object v6, v6, Lcom/alibaba/analytics/core/config/SystemConfig;->value:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, v3}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->updateConfig(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private checkDelay(Ljava/util/Map;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/analytics/core/config/SystemConfigMgr$UTSystemDelayItem;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 274
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 277
    :cond_0
    invoke-virtual {p2, v0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr$UTSystemDelayItem;->checkDelay(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private dispatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 161
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;

    invoke-interface {v2, p1, p2}, Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;->onChange(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/analytics/core/config/UTConfigMgr;->postServerConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;
    .locals 2

    const-class v0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mInstance:Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    invoke-direct {v1}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;-><init>()V

    sput-object v1, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mInstance:Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    .line 77
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mInstance:Lcom/alibaba/analytics/core/config/SystemConfigMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private mapToList(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/analytics/core/db/Entity;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    new-instance v3, Lcom/alibaba/analytics/core/config/SystemConfig;

    invoke-direct {v3}, Lcom/alibaba/analytics/core/config/SystemConfig;-><init>()V

    .line 175
    iput-object v2, v3, Lcom/alibaba/analytics/core/config/SystemConfig;->key:Ljava/lang/String;

    .line 176
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/alibaba/analytics/core/config/SystemConfig;->value:Ljava/lang/String;

    .line 177
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateConfig(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->updateSystemDelayItemMap(Ljava/util/Map;)V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    iget-object v1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 145
    iget-object v1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 146
    iget-object v1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 147
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->dispatch(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->dispatch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private declared-synchronized updateSystemDelayItemMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, "delay"

    .line 195
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "delay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    const-string v2, "delay"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "delay"

    .line 204
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 209
    monitor-exit p0

    return-void

    .line 211
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 215
    invoke-static {v2}, Lcom/alibaba/analytics/core/config/SystemConfigMgr$UTSystemDelayItem;->parseJson(Ljava/lang/String;)Lcom/alibaba/analytics/core/config/SystemConfigMgr$UTSystemDelayItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 217
    iget-object v3, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 196
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 197
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized checkDelayLog(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto/16 :goto_1

    .line 235
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 237
    :try_start_1
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, -0x1

    .line 243
    :goto_0
    iget-object v3, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->checkDelay(Ljava/util/Map;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 247
    :cond_2
    :try_start_3
    rem-int/lit8 v3, v0, 0xa

    sub-int/2addr v0, v3

    .line 248
    iget-object v3, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    invoke-direct {p0, p1, v0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->checkDelay(Ljava/util/Map;I)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    .line 252
    :cond_3
    :try_start_4
    rem-int/lit8 v3, v0, 0x64

    sub-int/2addr v0, v3

    .line 253
    iget-object v3, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->checkDelay(Ljava/util/Map;I)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p1

    .line 257
    :cond_4
    :try_start_5
    rem-int/lit16 v3, v0, 0x3e8

    sub-int/2addr v0, v3

    .line 258
    iget-object v3, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->checkDelay(Ljava/util/Map;I)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return p1

    .line 263
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    invoke-direct {p0, p1, v2}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->checkDelay(Ljava/util/Map;I)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return p1

    .line 266
    :cond_6
    monitor-exit p0

    return v1

    .line 231
    :cond_7
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .line 183
    invoke-virtual {p0, p1}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method public getOrangeGroupnames()[Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->namespace:[Ljava/lang/String;

    return-object v0
.end method

.method public onOrangeConfigurationArrive(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "utap_system"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0, p2}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->updateConfig(Ljava/util/Map;)V

    .line 135
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object p1

    const-class p2, Lcom/alibaba/analytics/core/config/SystemConfig;

    invoke-virtual {p1, p2}, Lcom/alibaba/analytics/core/db/DBMgr;->clear(Ljava/lang/Class;)V

    .line 136
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mapToList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/analytics/core/db/DBMgr;->insert(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 105
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p2, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mListeners:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegister(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 122
    :cond_1
    iget-object p2, p0, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->mKVStore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
