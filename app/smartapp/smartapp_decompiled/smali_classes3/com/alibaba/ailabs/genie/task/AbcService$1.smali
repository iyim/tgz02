.class Lcom/alibaba/ailabs/genie/task/AbcService$1;
.super Ljava/lang/Object;
.source "AbcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/AbcService;->checkSeekBar()V
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

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/ailabs/genie/task/AbcService;->isCheckingBar:Z

    const/4 v2, 0x0

    .line 63
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/task/AbcService;->access$002(Lcom/alibaba/ailabs/genie/task/AbcService;Z)Z

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/AbcService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 65
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/task/AbcService;->access$100(Lcom/alibaba/ailabs/genie/task/AbcService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/AbcService;->access$000(Lcom/alibaba/ailabs/genie/task/AbcService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/task/AbcService;->access$200(Lcom/alibaba/ailabs/genie/task/AbcService;)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/task/AbcService;->access$202(Lcom/alibaba/ailabs/genie/task/AbcService;I)I

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/AbcService;->access$300(Lcom/alibaba/ailabs/genie/task/AbcService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/AbcService;->access$200(Lcom/alibaba/ailabs/genie/task/AbcService;)I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/task/AbcService;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/AbcService$1;->this$0:Lcom/alibaba/ailabs/genie/task/AbcService;

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/task/AbcService;->isCheckingBar:Z

    return-void
.end method
