.class final Lcom/taobao/phenix/cache/memory/MemoryCacheProducer$1;
.super Ljava/lang/Object;
.source "MemoryCacheProducer.java"

# interfaces
.implements Lcom/taobao/phenix/cache/memory/StaticCachedImage$StaticImageRecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/phenix/cache/memory/MemoryCacheProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public recycle(Lcom/taobao/phenix/cache/memory/StaticCachedImage;)V
    .locals 1

    .line 24
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->bitmapPoolBuilder()Lcom/taobao/phenix/builder/BitmapPoolBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->build()Lcom/taobao/phenix/bitmap/BitmapPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1}, Lcom/taobao/phenix/bitmap/BitmapPool;->putIntoPool(Lcom/taobao/phenix/cache/memory/CachedRootImage;)Z

    :cond_0
    return-void
.end method
