.class Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$2;
.super Ljava/lang/Object;
.source "MarketTabFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$2;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$2;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isDataFirstFreshFinished:Z

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$2;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isDataFirstFreshFinished:Z

    .line 414
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$2;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$600(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketTabFragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$2;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishLoadding"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$2;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$500(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
