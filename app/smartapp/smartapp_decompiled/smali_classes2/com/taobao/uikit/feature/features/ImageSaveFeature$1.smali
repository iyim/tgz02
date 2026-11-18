.class Lcom/taobao/uikit/feature/features/ImageSaveFeature$1;
.super Ljava/lang/Object;
.source "ImageSaveFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/features/ImageSaveFeature$ImageSaveFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/ImageSaveFeature;->setHost(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/ImageSaveFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/ImageSaveFeature;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/ImageSaveFeature$1;->this$0:Lcom/taobao/uikit/feature/features/ImageSaveFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doMethod(Landroid/widget/ImageView;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ImageSaveFeature$1;->this$0:Lcom/taobao/uikit/feature/features/ImageSaveFeature;

    invoke-static {v0, p1}, Lcom/taobao/uikit/feature/features/ImageSaveFeature;->access$000(Lcom/taobao/uikit/feature/features/ImageSaveFeature;Landroid/widget/ImageView;)V

    return-void
.end method
