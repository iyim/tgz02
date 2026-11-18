.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$4;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "PersonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->fillData()V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/SimpleTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/basedomain/R$drawable;->encyclopedia_domain_person_default_image:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

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

    .line 128
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$4;->onResourceReady([BLcom/bumptech/glide/request/transition/Transition;)V

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

    .line 131
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

    const-string v0, "PersonFragment"

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)Landroid/widget/ImageView;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 135
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)Landroid/widget/ImageView;

    move-result-object p2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
