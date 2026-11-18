.class Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GenieTalkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hideGenieInside()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 422
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 423
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$700(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 424
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$700(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$700(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$800(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$700(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->returnObject(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 431
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 432
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$900(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 433
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " windowManager.removeViewImmediate exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenieTalkController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
