.class Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity$1;
.super Landroid/os/Handler;
.source "MsgShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->isUiShowing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->isMuteState()Z

    move-result p1

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->finish()V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->access$000(Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 51
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const/16 v2, 0x66

    if-ne v0, v1, :cond_2

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->access$100(Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;)V

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;->access$000(Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 54
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v2, :cond_3

    .line 55
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->turnOffScreen()V

    :cond_3
    :goto_0
    return-void
.end method
