.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;I)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$10;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iput p2, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$10;->val$event:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 555
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$10;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iget v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$10;->val$event:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 550
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$10;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->access$000(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0xb4

    invoke-interface {p1, v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;->animateContentOut(II)V

    return-void
.end method
