.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->animateViewIn()V
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

    .line 490
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$7;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 500
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$7;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->onViewShown()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 493
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$7;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->access$000(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;

    move-result-object p1

    const/16 v0, 0x46

    const/16 v1, 0xb4

    invoke-interface {p1, v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;->animateContentIn(II)V

    return-void
.end method
