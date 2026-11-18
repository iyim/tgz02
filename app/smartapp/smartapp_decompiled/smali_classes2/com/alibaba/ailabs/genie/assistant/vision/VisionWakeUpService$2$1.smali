.class Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2$1;
.super Ljava/lang/Object;
.source "VisionWakeUpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;->onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2$1;->val$data:Ljava/lang/String;

    const-string v2, "feedSpeechDoa"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
