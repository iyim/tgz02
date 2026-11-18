.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;
.super Ljava/lang/Object;
.source "AVEManagerService.java"

# interfaces
.implements Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 3

    const-string v0, "onDispatchEvent"

    .line 259
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getExtraData()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getExtraData()[B

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$600(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$600(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;Lcom/alibaba/ailabs/agui/event/MmiEvent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-object v1
.end method
