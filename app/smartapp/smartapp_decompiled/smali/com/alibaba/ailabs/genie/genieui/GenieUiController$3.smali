.class Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;
.super Ljava/lang/Object;
.source "GenieUiController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->updateASRText(Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

.field final synthetic val$req:Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->val$req:Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "GenieUiController"

    const-string v0, "onAnimationCancel: "

    .line 556
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const-string p1, "GenieUiController"

    const-string v0, "onAnimationEnd: "

    .line 539
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->val$req:Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$100(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$300(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$400(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$200(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->val$req:Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    int-to-float p1, p1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result p1

    .line 550
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$200(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->val$req:Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 542
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$200(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;->val$req:Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
