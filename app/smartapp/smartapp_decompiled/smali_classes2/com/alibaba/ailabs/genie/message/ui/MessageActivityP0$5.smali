.class Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$5;
.super Ljava/lang/Object;
.source "MessageActivityP0.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->loadPic(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;Landroid/widget/ImageView;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$5;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const-string p1, "MessageActivityP0"

    const-string p2, "onLoadFailed"

    .line 219
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/message/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    const-string p2, "MessageActivityP0"

    const-string p3, "onResourceReady"

    .line 226
    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/message/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$5;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 216
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$5;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
