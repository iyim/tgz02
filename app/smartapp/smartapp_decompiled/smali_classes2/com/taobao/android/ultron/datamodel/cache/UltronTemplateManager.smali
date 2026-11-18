.class public Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;
.super Ljava/lang/Object;
.source "UltronTemplateManager.java"


# static fields
.field private static final FILE_CAPACITY:J = 0x1000000L

.field private static final TAG:Ljava/lang/String; = "UltronTemplateManager"

.field private static final TEMPLATE_MEM_CACHE_SIZE:I = 0x10

.field private static templateManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bizName:Ljava/lang/String;

.field private final cacheDataResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final templateFileCache:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

.field private volatile templateIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final templateMemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateManagerMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateMemCache:Landroid/util/LruCache;

    .line 37
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheDataResultCache:Landroid/util/LruCache;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ultron_template_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;

    invoke-direct {v1}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;->withContext(Landroid/content/Context;)Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;->withDbName(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;->withRootDirName(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;->withMemCacheSize(I)Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;

    move-result-object p1

    const-wide/32 v0, 0x1000000

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;->withFileCapacity(J)Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$Builder;->build()Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateFileCache:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    .line 55
    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->bizName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    sget-object v0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateManagerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateManagerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateManagerMap:Ljava/util/Map;

    new-instance v2, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    invoke-direct {v2, p0, p1}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 67
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getNullableInstance(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 73
    sget-object v0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateManagerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    return-object p0
.end method


# virtual methods
.method public deleteCacheDataResult(Ljava/lang/String;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheDataResultCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteTemplateById(Ljava/lang/String;)V
    .locals 3

    .line 147
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateMemCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateFileCache:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    invoke-virtual {v0, p1}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;->delTemplateById(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 153
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 158
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->bizName:Ljava/lang/String;

    const-string v1, "deleteTemplateById"

    invoke-static {v0, v1, p1}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logUltronCacheError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x2

    .line 159
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deleteTemplateById"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "UltronTemplateManager"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCacheDataResult(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheDataResultCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    return-object p1
.end method

.method public getTemplateById(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :try_start_1
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateMemCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 85
    :try_start_2
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateFileCache:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    invoke-virtual {v0, p1}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;->fetchTemplate(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    array-length v2, v0

    if-lez v2, :cond_0

    .line 87
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 88
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    :try_start_3
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateMemCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 94
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_1
    move-exception p1

    .line 82
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 96
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->bizName:Ljava/lang/String;

    const-string v1, "getTemplateById"

    invoke-static {v0, v1, p1}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logUltronCacheError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x2

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getTemplateById"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "UltronTemplateManager"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTemplateIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateFileCache:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;->getTemplateIds()Ljava/util/List;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    if-nez v2, :cond_0

    .line 107
    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    .line 109
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 111
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    :goto_1
    return-object v0
.end method

.method public preloadTemplates()V
    .locals 4

    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getTemplateIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 167
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 169
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getTemplateById(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 174
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->bizName:Ljava/lang/String;

    const-string v3, "preloadTemplates"

    invoke-static {v2, v3, v1}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logUltronCacheError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x2

    .line 175
    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "UltronTemplateManager"

    invoke-static {v0, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public saveCacheDataResult(Ljava/lang/String;Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;)V
    .locals 2

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheDataResultCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit v0

    return-void

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

.method public saveTemplate(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->saveTemplate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateMemCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateMemCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "UTF-8"

    .line 137
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 138
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->templateFileCache:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;->saveTemplate(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 135
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 140
    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->bizName:Ljava/lang/String;

    const-string v0, "saveTemplate"

    invoke-static {p2, v0, p1}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logUltronCacheError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x2

    .line 141
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "saveTemplate"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "UltronTemplateManager"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
