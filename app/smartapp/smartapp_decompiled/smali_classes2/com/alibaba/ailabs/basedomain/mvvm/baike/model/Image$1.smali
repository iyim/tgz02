.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->setToView(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

.field final synthetic val$bgView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;Landroid/view/View;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->val$bgView:Landroid/view/View;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 4
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

    .line 72
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/UIUtil;->bitmap2Gray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->val$bgView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->val$bgView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setToView width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_3

    if-gtz v0, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/basedomain/common/UIUtil;->corpImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 85
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->val$bgView:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    .line 79
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string v0, "width and height must be > 0"

    invoke-static {p1, v0, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    .line 69
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
