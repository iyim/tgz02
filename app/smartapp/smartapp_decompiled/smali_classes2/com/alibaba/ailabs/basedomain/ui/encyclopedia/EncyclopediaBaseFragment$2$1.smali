.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2$1;
.super Ljava/lang/Object;
.source "EncyclopediaBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;

.field final synthetic val$mBluredBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2$1;->val$mBluredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "EncyclopediaBaseFragment"

    :try_start_0
    const-string v1, "mBackgroundView.setBackground"

    .line 221
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2$1;->val$mBluredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "mBackgroundView setBackground err"

    .line 224
    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
