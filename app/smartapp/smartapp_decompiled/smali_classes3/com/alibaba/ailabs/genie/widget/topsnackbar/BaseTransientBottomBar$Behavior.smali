.class final Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;
.super Landroid/support/design/widget/SwipeDismissBehavior;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/SwipeDismissBehavior<",
        "Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/support/design/widget/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 0

    .line 713
    instance-of p1, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return p1
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 710
    check-cast p2, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 719
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->restoreTimeoutIfPaused(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V

    goto :goto_0

    .line 723
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 724
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 723
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->pauseTimeout(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V

    .line 733
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/SwipeDismissBehavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
