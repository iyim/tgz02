.class public abstract Lcom/taobao/phenix/cache/CacheKeyInspector;
.super Ljava/lang/Object;
.source "CacheKeyInspector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public inspectDiskCacheCatalog(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public abstract inspectDiskCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract inspectMemoryCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
