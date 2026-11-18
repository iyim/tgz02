.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->setToViewBg(Landroid/view/View;Landroid/widget/ImageView;Z)V
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

.field final synthetic val$blurBitmap:Z

.field final synthetic val$centerIv:Landroid/widget/ImageView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;Landroid/view/View;ZLandroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$blurBitmap:Z

    iput-object p4, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$centerIv:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$context:Landroid/content/Context;

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

    .line 115
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResourceReady thread name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

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

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/basedomain/common/UIUtil;->corpImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 122
    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/common/UIUtil;->bitmap2Gray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->isHighResolution()Z

    move-result v0

    .line 127
    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$blurBitmap:Z

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$centerIv:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 130
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 132
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 137
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Ljp/wasabeef/blurry/Blurry;->with(Landroid/content/Context;)Ljp/wasabeef/blurry/Blurry$Composer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljp/wasabeef/blurry/Blurry$Composer;->from(Landroid/graphics/Bitmap;)Ljp/wasabeef/blurry/Blurry$BitmapComposer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->into(Landroid/widget/ImageView;)V

    .line 139
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 144
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->val$view:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

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

    .line 111
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
