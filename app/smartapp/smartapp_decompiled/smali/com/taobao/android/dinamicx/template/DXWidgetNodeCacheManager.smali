.class public Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;
.super Ljava/lang/Object;
.source "DXWidgetNodeCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private final PUBLIC_CACHE:Ljava/lang/String;

.field private final cacheCenter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "public_cache"

    .line 23
    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->PUBLIC_CACHE:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->cacheCenter:Ljava/util/Map;

    .line 45
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->initPublicCache()V

    .line 46
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->initWhiteList()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;-><init>()V

    return-void
.end method

.method private generateIdentify(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Ljava/lang/String;
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->cacheCenter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "public_cache"

    :goto_0
    return-object p1
.end method

.method public static getInstance()Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;
    .locals 1

    .line 41
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager$SingletonHolder;->access$100()Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;

    move-result-object v0

    return-object v0
.end method

.method private initPublicCache()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->cacheCenter:Ljava/util/Map;

    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    const-string v2, "public_cache"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initWhiteList()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCache(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 3

    .line 63
    invoke-static {p1, p2}, Lcom/taobao/android/dinamicx/template/utils/DXTemplateNamePathUtil;->isValid(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->cacheCenter:Ljava/util/Map;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->cacheCenter:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->generateIdentify(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    monitor-exit v0

    return-object p1

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public putCache(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 3

    .line 51
    invoke-static {p1, p2}, Lcom/taobao/android/dinamicx/template/utils/DXTemplateNamePathUtil;->isValid(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 52
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->cacheCenter:Ljava/util/Map;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->cacheCenter:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->generateIdentify(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {v1, p1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
