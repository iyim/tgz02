.class Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FloatWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$2;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 102
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$2;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$100(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$2;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$200(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    .line 108
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged: newState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskService-Video-recommend"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
