.class Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$1;
.super Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->bind(Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

.field final synthetic val$mItemLeftIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$1;->val$mItemLeftIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
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
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$1;->val$mItemLeftIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V

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

    .line 87
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
