.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$2;
.super Ljava/lang/Object;
.source "ImageTextScaleSubFragment.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const-string p3, "ImgTxtScaleFragment"

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFling, e1.getX() - e2.getX() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const-string p1, "onFling \u4ece\u53f3\u5411\u5de6\u6ed1\u52a8"

    .line 161
    invoke-static {p3, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$400(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V

    return v2

    .line 164
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, -0x3d100000    # -120.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    const-string p1, "onFling \u4ece\u5de6\u5411\u53f3\u6ed1\u52a8"

    .line 165
    invoke-static {p3, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$500(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_2
    :goto_0
    return p4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "ImgTxtScaleFragment"

    const-string v0, "onSingleTapUp back"

    .line 137
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
