.class final Lcom/alibaba/ailabs/genie/image/GenieImageLoader$13;
.super Ljava/lang/Object;
.source "GenieImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->checkDiskCacheSize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 499
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$13;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getDiskCacheDirSize(Landroid/content/Context;)J

    move-result-wide v0

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current DiskCache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " MaxSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getMaxDiskCacheDirSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GenieImageLoader"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getMaxDiskCacheDirSize()J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const-string v0, "clearDiskCache"

    .line 502
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$13;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearDiskCache()V

    :cond_0
    return-void
.end method
