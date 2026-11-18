.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$4;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 401
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$4;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$4;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->pauseTimeout(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V

    goto :goto_0

    .line 415
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$4;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    .line 416
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->restoreTimeoutIfPaused(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V

    :goto_0
    return-void
.end method
