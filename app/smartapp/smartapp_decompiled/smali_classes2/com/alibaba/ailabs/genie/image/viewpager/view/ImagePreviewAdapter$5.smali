.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;
.super Ljava/lang/Object;
.source "ImagePreviewAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

.field final synthetic val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

.field final synthetic val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslationYChanged(Landroid/view/MotionEvent;F)V
    .locals 0

    .line 245
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 246
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/PhoneUtil;->getPhoneHei(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 249
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->setAlpha(F)V

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setScaleY(F)V

    .line 255
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setScaleX(F)V

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 258
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setScaleY(F)V

    .line 259
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setScaleX(F)V

    :cond_2
    return-void
.end method
