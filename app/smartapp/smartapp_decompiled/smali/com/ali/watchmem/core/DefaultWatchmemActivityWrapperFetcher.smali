.class public Lcom/ali/watchmem/core/DefaultWatchmemActivityWrapperFetcher;
.super Ljava/lang/Object;
.source "DefaultWatchmemActivityWrapperFetcher.java"

# interfaces
.implements Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getTargetActivityWrapper(Ljava/util/List;)Lcom/ali/watchmem/data/WatchmemActivityWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ali/watchmem/data/WatchmemActivityWrapper;",
            ">;)",
            "Lcom/ali/watchmem/data/WatchmemActivityWrapper;"
        }
    .end annotation

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ali/watchmem/data/WatchmemActivityWrapper;

    return-object p1

    :cond_1
    const/4 v0, 0x1

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ali/watchmem/data/WatchmemActivityWrapper;

    return-object p1
.end method
