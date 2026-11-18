.class Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;
.super Landroid/os/CountDownTimer;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/router/view/LoadingView;->startPro()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/router/view/LoadingView;JJ)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$000(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$102(Lcom/alibaba/ailabs/genie/router/view/LoadingView;I)I

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$200(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$200(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$000(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    const/16 p2, 0x5a

    if-le p1, p2, :cond_0

    .line 132
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$100(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$102(Lcom/alibaba/ailabs/genie/router/view/LoadingView;I)I

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$100(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)I

    move-result p2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->getRandom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$102(Lcom/alibaba/ailabs/genie/router/view/LoadingView;I)I

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$000(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;->this$0:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->access$100(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
