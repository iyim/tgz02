.class Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LrcView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Landroid/widget/Scroller;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 661
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 662
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$402(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Z)Z

    .line 663
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$502(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Z)Z

    .line 664
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->invalidate()V

    return v0

    .line 667
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 684
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F

    move-result p1

    float-to-int v2, p1

    const/4 v3, 0x0

    float-to-int v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;I)F

    move-result p1

    float-to-int v7, p1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;I)F

    move-result p1

    float-to-int v8, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 686
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$902(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Z)Z

    return p3

    .line 689
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F

    move-result p2

    neg-float p3, p4

    add-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$602(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;F)F

    .line 674
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F

    move-result p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;I)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$602(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;F)F

    .line 675
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F

    move-result p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    invoke-static {p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;I)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$602(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;F)F

    .line 676
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->invalidate()V

    return v0

    .line 679
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 695
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1000(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1100(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;F)I

    move-result v0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lineNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LrcView"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1200(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    .line 701
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$502(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Z)Z

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickText:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1200(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;->onLineClicked(J)V

    .line 708
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 713
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
