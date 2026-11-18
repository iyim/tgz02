.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "ImageTextFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->loadImageForShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 182
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->onResourceReady([BLcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

.method public onResourceReady([BLcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-[B>;)V"
        }
    .end annotation

    .line 186
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 187
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 189
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 191
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mBlurBackgroundTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgTask(Ljava/lang/Runnable;)V

    .line 194
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->access$200(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
