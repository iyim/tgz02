.class Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$1;
.super Ljava/lang/Object;
.source "ApiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mGotoEyeYieldModeTipFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 103
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->mCheckCameraOpenFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 104
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->next()V

    return-void
.end method
