.class Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$2;
.super Ljava/lang/Object;
.source "ExposeRecyclerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->getListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$2;->this$0:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    const-string v0, "ExposeRecyclerView-l"

    const-string v1, "onGlobalLayout call ..."

    .line 78
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$2;->this$0:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->isHasCallOnGlobalLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$2;->this$0:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->isHasCallOnGlobalLayout:Z

    .line 84
    invoke-static {v0}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->access$000(Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$2;->this$0:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
