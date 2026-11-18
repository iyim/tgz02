.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$8;
.super Ljava/lang/Object;
.source "ImagePreviewAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$8;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$8;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadError(Ljava/lang/Exception;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onImageLoaded()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPreviewLoadError(Ljava/lang/Exception;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPreviewReleased()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onReady()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$8;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onTileLoadError(Ljava/lang/Exception;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
