.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "ImageTextScaleSubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResourceReady thread name:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImgTxtScaleFragment"

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$300(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/widget/ImageView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 86
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setToView width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p1, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/UIUtil;->corpImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$200(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/UIUtil;->blurBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
