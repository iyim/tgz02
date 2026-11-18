.class Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$5;
.super Ljava/lang/Object;
.source "FloatWindowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->showRecommendArea()V
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

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$5;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$5;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$5;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$500(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$5;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$600(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$5;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$200(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    return-void
.end method
