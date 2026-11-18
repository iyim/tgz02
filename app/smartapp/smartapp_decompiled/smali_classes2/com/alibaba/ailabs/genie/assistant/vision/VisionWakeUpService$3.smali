.class Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$3;
.super Ljava/lang/Object;
.source "VisionWakeUpService.java"

# interfaces
.implements Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object p1

    const-string v0, "loadPersonIdTable"

    const-string v1, "/sdcard/syncData/human-recognize-db"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
