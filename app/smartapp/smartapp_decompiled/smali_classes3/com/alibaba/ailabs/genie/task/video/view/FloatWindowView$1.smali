.class Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$1;
.super Ljava/lang/Object;
.source "FloatWindowView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->getMyHandler()Landroid/os/Handler;
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

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$000(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
