.class Lcom/taobao/alivfssdk/cache/AVFSDiskCache$2;
.super Lcom/taobao/alivfssdk/cache/HotEndLruCache;
.source "AVFSDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSDiskCache;-><init>(Lcom/taobao/alivfssdk/cache/AVFSCache;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/alivfssdk/cache/HotEndLruCache<",
        "Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSDiskCache;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;IF)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$2;->this$0:Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

    invoke-direct {p0, p2, p3}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;-><init>(IF)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 0

    .line 74
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$2;->getSize([B)I

    move-result p1

    return p1
.end method

.method protected getSize([B)I
    .locals 0

    .line 77
    array-length p1, p1

    return p1
.end method
