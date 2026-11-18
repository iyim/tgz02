.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "ImageTextScaleSubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handleMessage(Landroid/os/Message;)V

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setToViewBg() called with: url = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImgTxtScaleFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$000(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$200(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$300(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$200(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 74
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
