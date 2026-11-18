.class Lcom/taobao/uikit/feature/features/ImageSaveFeature$2;
.super Ljava/lang/Object;
.source "ImageSaveFeature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/ImageSaveFeature;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/ImageSaveFeature;

.field final synthetic val$callback:Lcom/taobao/uikit/feature/features/ImageSaveFeature$ImageSaveFeatureCallback;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/ImageSaveFeature;Lcom/taobao/uikit/feature/features/ImageSaveFeature$ImageSaveFeatureCallback;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/ImageSaveFeature$2;->this$0:Lcom/taobao/uikit/feature/features/ImageSaveFeature;

    iput-object p2, p0, Lcom/taobao/uikit/feature/features/ImageSaveFeature$2;->val$callback:Lcom/taobao/uikit/feature/features/ImageSaveFeature$ImageSaveFeatureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/ImageSaveFeature$2;->val$callback:Lcom/taobao/uikit/feature/features/ImageSaveFeature$ImageSaveFeatureCallback;

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ImageSaveFeature$2;->this$0:Lcom/taobao/uikit/feature/features/ImageSaveFeature;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/ImageSaveFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Lcom/taobao/uikit/feature/features/ImageSaveFeature$ImageSaveFeatureCallback;->doMethod(Landroid/widget/ImageView;)V

    .line 207
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/ImageSaveFeature$2;->this$0:Lcom/taobao/uikit/feature/features/ImageSaveFeature;

    invoke-static {p1}, Lcom/taobao/uikit/feature/features/ImageSaveFeature;->access$100(Lcom/taobao/uikit/feature/features/ImageSaveFeature;)V

    return-void
.end method
