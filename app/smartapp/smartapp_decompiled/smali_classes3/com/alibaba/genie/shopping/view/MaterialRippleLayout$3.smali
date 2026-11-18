.class Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 332
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$600(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRadius(F)V

    .line 334
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$700(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRippleAlpha(Ljava/lang/Integer;)V

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;->val$animationEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$800(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 337
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$3;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$100(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
