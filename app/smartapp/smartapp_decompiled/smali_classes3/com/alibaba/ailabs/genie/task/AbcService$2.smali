.class Lcom/alibaba/ailabs/genie/task/AbcService$2;
.super Landroid/os/Handler;
.source "AbcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/task/AbcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/AbcService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/AbcService;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/AbcService$2;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService$2;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/AbcService;->access$400(Lcom/alibaba/ailabs/genie/task/AbcService;)V

    goto :goto_0

    .line 84
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/AbcService$2;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/task/AbcService;->access$000(Lcom/alibaba/ailabs/genie/task/AbcService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->onMenuShow(Z)V

    .line 87
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
