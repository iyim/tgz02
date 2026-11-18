.class public Lmtopsdk/mtop/cache/CacheManagerImpl;
.super Ljava/lang/Object;
.source "CacheManagerImpl.java"

# interfaces
.implements Lmtopsdk/mtop/cache/CacheManager;


# static fields
.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final QUERY_KEY_DATA:Ljava/lang/String; = "data"

.field private static final QUERY_KEY_WUA:Ljava/lang/String; = "wua"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheManagerImpl"


# instance fields
.field private cache:Lanetwork/network/cache/Cache;


# direct methods
.method public constructor <init>(Lanetwork/network/cache/Cache;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    .line 53
    iput-object p1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    return-void
.end method

.method private handleCacheValidation(Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;
    .locals 9

    if-nez p2, :cond_0

    return-object p2

    .line 344
    :cond_0
    iget-object v0, p2, Lanetwork/network/cache/RpcCache;->body:[B

    if-nez v0, :cond_1

    .line 345
    sget-object p1, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object p1, p2, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    return-object p2

    .line 350
    :cond_1
    iget-object v0, p2, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p2, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 352
    iget-boolean p1, p2, Lanetwork/network/cache/RpcCache;->offline:Z

    if-eqz p1, :cond_2

    .line 353
    sget-object p1, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object p1, p2, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 355
    :cond_2
    sget-object p1, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object p1, p2, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    :goto_0
    return-object p2

    .line 361
    :cond_3
    iget-object v0, p2, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 362
    iget-wide v0, p2, Lanetwork/network/cache/RpcCache;->cacheCreateTime:J

    .line 363
    iget-wide v2, p2, Lanetwork/network/cache/RpcCache;->maxAge:J

    .line 364
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-ltz v6, :cond_4

    add-long v6, v0, v2

    cmp-long v8, v4, v6

    if-gtz v8, :cond_4

    .line 367
    sget-object v6, Lanetwork/network/cache/RpcCache$CacheStatus;->FRESH:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v6, p2, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_1

    .line 368
    :cond_4
    iget-boolean v6, p2, Lanetwork/network/cache/RpcCache;->offline:Z

    if-eqz v6, :cond_5

    .line 369
    sget-object v6, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v6, p2, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_1

    .line 371
    :cond_5
    sget-object v6, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v6, p2, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    .line 373
    :goto_1
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "[handleCacheValidation]cacheStatus="

    .line 375
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ";lastModifiedStr="

    .line 376
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";lastModified="

    .line 377
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";maxAge="

    .line 378
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";currentTime="

    .line 379
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";t_offset="

    .line 380
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmtopsdk/xstate/XState;->getTimeOffset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtopsdk.CacheManagerImpl"

    invoke-static {v1, p1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 384
    :cond_6
    iget-object p1, p2, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 385
    sget-object p1, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object p1, p2, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    :cond_7
    :goto_2
    return-object p2
.end method

.method private handleResponseCacheFlag(Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;
    .locals 7

    if-eqz p2, :cond_6

    .line 288
    iget-object v0, p2, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 291
    :cond_0
    iget-object v0, p2, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    const-string v1, "last-modified"

    .line 292
    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cache-control"

    .line 293
    invoke-static {v0, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MTOP-XETag"

    .line 294
    invoke-static {v0, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "etag"

    .line 296
    invoke-static {v0, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    return-object p2

    .line 304
    :cond_2
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    iput-object v1, p2, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    .line 306
    invoke-static {v1}, Lmtopsdk/common/util/MtopUtils;->convertTimeFormatGMT2Long(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lanetwork/network/cache/RpcCache;->cacheCreateTime:J

    const-string v0, ","

    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 309
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    aget-object v5, v0, v4

    :try_start_0
    const-string v6, "max-age="

    .line 311
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    .line 312
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p2, Lanetwork/network/cache/RpcCache;->maxAge:J

    goto :goto_1

    :cond_3
    const-string v6, "of=on"

    .line 315
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    .line 316
    iput-boolean v5, p2, Lanetwork/network/cache/RpcCache;->offline:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 319
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleResponseCacheFlag] parse cacheControlStr error."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mtopsdk.CacheManagerImpl"

    invoke-static {v6, p1, v5}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    :cond_5
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 326
    iput-object v3, p2, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    :cond_6
    :goto_2
    return-object p2
.end method


# virtual methods
.method public getBlockName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 255
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 260
    :cond_0
    invoke-static {}, Lmtopsdk/config/AppConfigManager;->getInstance()Lmtopsdk/config/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmtopsdk/config/AppConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    iget-object v0, p1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->blockName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 262
    iget-object v1, p1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->blockName:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public getBlockName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    invoke-static {p1, p2}, Lmtopsdk/common/util/StringUtils;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getBlockName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;
    .locals 1

    .line 116
    iget-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 119
    :cond_0
    invoke-interface {v0, p1, p2}, Lanetwork/network/cache/Cache;->get(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-direct {p0, p3, p1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->handleCacheValidation(Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getCacheKey(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 14

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 151
    :cond_0
    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 152
    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 153
    iget-object v3, p1, Lmtopsdk/framework/domain/MtopContext;->baseUrl:Ljava/lang/String;

    .line 154
    iget-object v4, p1, Lmtopsdk/framework/domain/MtopContext;->queryParams:Ljava/util/Map;

    if-eqz v1, :cond_14

    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    if-nez v4, :cond_1

    goto/16 :goto_7

    .line 165
    :cond_1
    invoke-static {}, Lmtopsdk/config/AppConfigManager;->getInstance()Lmtopsdk/config/AppConfigManager;

    move-result-object v5

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmtopsdk/config/AppConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v5

    const-string v6, "ALL"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 167
    iget-boolean v8, v5, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->privateScope:Z

    .line 168
    iget-object v9, v5, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->cacheKeyType:Ljava/lang/String;

    .line 169
    iget-object v5, v5, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->cacheKeyItems:Ljava/util/List;

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v9, v6

    const/4 v8, 0x1

    :goto_0
    const/4 v10, -0x1

    .line 174
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "NONE"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_1
    const-string v6, "INC"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_2
    const-string v6, "EXC"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_3
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, -0x1

    :goto_2
    if-eqz v6, :cond_10

    if-eq v6, v7, :cond_f

    if-eq v6, v13, :cond_8

    if-eq v6, v12, :cond_4

    .line 223
    invoke-static {v3, v4}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    goto/16 :goto_6

    :cond_4
    if-nez v5, :cond_5

    .line 210
    invoke-static {v3, v0}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    goto/16 :goto_6

    .line 213
    :cond_5
    iget-object v4, v1, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 214
    new-instance v4, Ljava/util/HashMap;

    iget-object v6, v1, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 215
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 216
    iget-object v7, v1, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    move-object v4, v0

    .line 219
    :cond_7
    invoke-static {v3, v4}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    goto/16 :goto_6

    :cond_8
    if-nez v5, :cond_9

    .line 183
    iget-object v5, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    :cond_9
    if-nez v5, :cond_a

    .line 185
    invoke-static {v3, v4}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    goto/16 :goto_6

    .line 188
    :cond_a
    iget-object v6, v1, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    if-eqz v6, :cond_b

    .line 189
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 190
    iget-object v7, v1, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 194
    :cond_b
    iget-object v1, v1, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    invoke-static {v1}, Lmtopsdk/mtop/util/ReflectUtil;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string v9, "data"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 198
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 199
    :cond_c
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "wua"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_5

    .line 202
    :cond_d
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 205
    :cond_e
    invoke-static {v3, v5}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    goto :goto_6

    .line 179
    :cond_f
    invoke-static {v3, v0}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    goto :goto_6

    .line 176
    :cond_10
    invoke-static {v3, v4}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_11

    return-object v0

    .line 233
    :cond_11
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_12

    .line 236
    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v4, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lmtopsdk/mtop/intf/Mtop;->getMultiAccountUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 238
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_12
    iget-object v1, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 242
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 243
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 247
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v2, "mtopsdk.CacheManagerImpl"

    const-string v3, "[getCacheKey] getCacheKey error."

    invoke-static {v2, p1, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    :goto_7
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfd81 -> :sswitch_3
        0x10df0 -> :sswitch_2
        0x11bbe -> :sswitch_1
        0x24a738 -> :sswitch_0
    .end sparse-switch
.end method

.method public isNeedReadCache(Lmtopsdk/network/domain/Request;Lmtopsdk/mtop/common/MtopListener;)Z
    .locals 2

    .line 60
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object p2

    invoke-virtual {p2}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalCacheSwitchOpen()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 61
    iget-object p1, p1, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    const-string p2, "mtopsdk.CacheManagerImpl"

    const-string v1, "[isNeedReadCache]GlobalCacheSwitch=false,Don\'t read local cache."

    invoke-static {p2, p1, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 70
    :cond_1
    iget-object p2, p1, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    const-string p2, "cache-control"

    .line 75
    invoke-virtual {p1, p2}, Lmtopsdk/network/domain/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "no-cache"

    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isNeedWriteCache(Lmtopsdk/network/domain/Request;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/network/domain/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 84
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalCacheSwitchOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    iget-object p1, p1, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    const-string p2, "mtopsdk.CacheManagerImpl"

    const-string v0, "[isNeedWriteCache]GlobalCacheSwitch=false,Don\'t write local cache."

    invoke-static {p2, p1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 90
    :cond_0
    iget-object p1, p1, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    return v1

    :cond_2
    const-string p1, "cache-control"

    .line 99
    invoke-static {p2, p1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "no-cache"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "last-modified"

    .line 104
    invoke-static {p2, v0}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MTOP-XETag"

    .line 105
    invoke-static {p2, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "etag"

    .line 107
    invoke-static {p2, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-nez p1, :cond_5

    if-nez v0, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z
    .locals 2

    .line 130
    iget-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    new-instance v0, Lanetwork/network/cache/RpcCache;

    invoke-direct {v0}, Lanetwork/network/cache/RpcCache;-><init>()V

    .line 134
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    .line 135
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v1

    iput-object v1, v0, Lanetwork/network/cache/RpcCache;->body:[B

    .line 136
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;

    move-result-object p3

    iget-object p3, p3, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p3, ""

    .line 137
    :goto_0
    invoke-direct {p0, p3, v0}, Lmtopsdk/mtop/cache/CacheManagerImpl;->handleResponseCacheFlag(Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object p3

    .line 138
    iget-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    invoke-interface {v0, p1, p2, p3}, Lanetwork/network/cache/Cache;->put(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z

    move-result p1

    return p1
.end method
