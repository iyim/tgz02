.class public Lcom/alibaba/ailabs/genie/image/viewpager/glide/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cleanDiskCache(Landroid/content/Context;)V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/glide/ImageLoader$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/ImageLoader$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static clearMemory(Landroid/app/Activity;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public static getGlideCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 31
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/cache/DataCacheKey;

    new-instance v1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->obtain()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/cache/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 32
    new-instance p1, Lcom/alibaba/ailabs/genie/image/viewpager/glide/cache/SafeKeyGenerator;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/cache/SafeKeyGenerator;-><init>()V

    .line 33
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "image_manager_disk_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v1, 0xfa00000

    const/4 p0, 0x1

    .line 35
    invoke-static {v0, p0, p0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->getFile(I)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
