.class Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$1;
.super Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
.source "ShoppingItemSmallViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

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

    .line 67
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->access$000(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
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

    .line 64
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
