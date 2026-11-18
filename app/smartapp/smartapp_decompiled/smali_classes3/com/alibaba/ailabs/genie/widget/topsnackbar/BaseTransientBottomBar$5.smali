.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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

    .line 428
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 436
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->isShownOrQueued()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 441
    sget-object p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5$1;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
