.class Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;
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

    .line 150
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 2

    const-string v0, "asyn process event"

    .line 153
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->lw(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getData()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return-object p1
.end method
