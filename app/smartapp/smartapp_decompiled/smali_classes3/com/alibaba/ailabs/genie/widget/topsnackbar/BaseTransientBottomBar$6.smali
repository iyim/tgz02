.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$6;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 461
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$6;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 464
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$6;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 466
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$6;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 468
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$6;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_0

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$6;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->onViewShown()V

    :goto_0
    return-void
.end method
