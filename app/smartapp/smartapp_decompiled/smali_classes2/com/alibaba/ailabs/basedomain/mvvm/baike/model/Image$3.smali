.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$3;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCacheGlideImageTask done url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCacheGlideImageTask load image failed , url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
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
