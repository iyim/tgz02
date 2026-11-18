.class Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$1;
.super Landroid/os/Handler;
.source "TransitionPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 59
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$000(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->finishLoadingView()V

    :cond_0
    return-void
.end method
