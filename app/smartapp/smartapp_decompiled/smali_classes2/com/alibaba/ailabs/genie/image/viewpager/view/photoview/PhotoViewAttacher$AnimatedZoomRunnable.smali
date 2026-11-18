.class Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;FFFF)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput p4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 705
    iput p5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 707
    iput p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 708
    iput p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method

.method private interpolate()F
    .locals 4

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->access$2300(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 725
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 726
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->access$2400(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 713
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->interpolate()F

    move-result v0

    .line 714
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 715
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    .line 716
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->access$2200(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;)Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnGestureListener;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-interface {v2, v1, v3, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnGestureListener;->onScale(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->access$400(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
