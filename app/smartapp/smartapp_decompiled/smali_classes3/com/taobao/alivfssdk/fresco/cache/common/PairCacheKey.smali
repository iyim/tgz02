.class public Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;
.super Ljava/lang/Object;
.source "PairCacheKey.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;


# instance fields
.field final mKey:Ljava/lang/String;

.field public final mKey2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 44
    :cond_1
    check-cast p1, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    .line 46
    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object p1, p1, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey:Ljava/lang/String;

    return-object v0
.end method
