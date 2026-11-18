.class public Lcom/taobao/phenix/cache/memory/NonOpMemoryCache;
.super Ljava/lang/Object;
.source "NonOpMemoryCache.java"

# interfaces
.implements Lcom/taobao/phenix/cache/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/cache/LruCache<",
        "Ljava/lang/String;",
        "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
        ">;"
    }
.end annotation


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
.method public clear()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public count()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/taobao/phenix/cache/memory/CachedRootImage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/memory/NonOpMemoryCache;->get(Ljava/lang/String;)Lcom/taobao/phenix/cache/memory/CachedRootImage;

    move-result-object p1

    return-object p1
.end method

.method public hotPercent()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public maxSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic put(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/taobao/phenix/cache/memory/CachedRootImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/phenix/cache/memory/NonOpMemoryCache;->put(ILjava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;)Z

    move-result p1

    return p1
.end method

.method public put(ILjava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/taobao/phenix/cache/memory/CachedRootImage;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/phenix/cache/memory/NonOpMemoryCache;->put(Ljava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public remove(Ljava/lang/String;)Lcom/taobao/phenix/cache/memory/CachedRootImage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/memory/NonOpMemoryCache;->remove(Ljava/lang/String;)Lcom/taobao/phenix/cache/memory/CachedRootImage;

    move-result-object p1

    return-object p1
.end method

.method public resize(IF)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public trimTo(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
