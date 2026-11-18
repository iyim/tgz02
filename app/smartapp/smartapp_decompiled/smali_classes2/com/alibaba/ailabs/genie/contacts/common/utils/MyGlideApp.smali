.class public Lcom/alibaba/ailabs/genie/contacts/common/utils/MyGlideApp;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "MyGlideApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 3

    .line 19
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    const/high16 v1, 0x1400000

    int-to-long v1, v1

    invoke-direct {v0, p1, v1, v2}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;J)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    .line 21
    new-instance p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    const-wide/32 v0, 0x500000

    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;

    .line 24
    new-instance p1, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(J)V

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;

    return-void
.end method
