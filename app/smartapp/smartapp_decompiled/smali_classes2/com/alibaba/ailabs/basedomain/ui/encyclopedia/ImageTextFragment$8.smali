.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$8;
.super Ljava/lang/Object;
.source "ImageTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$8;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ImageTextFragment"

    .line 238
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$8;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$8;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 241
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 242
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 244
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$8;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-static {v3}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->access$300(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 245
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 244
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    const/high16 v4, -0x80000000

    .line 245
    invoke-virtual {v3, v4, v4}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v3

    .line 246
    invoke-interface {v3}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCacheGlideImageTask done url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 249
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCacheGlideImageTask load image failed , url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCacheGlideImageTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
