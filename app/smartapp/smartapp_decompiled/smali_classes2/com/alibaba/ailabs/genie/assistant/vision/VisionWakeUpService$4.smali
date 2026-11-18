.class Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "VisionWakeUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;
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

    .line 346
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onServiceConnected"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->startVisionWakeup()V

    goto/16 :goto_0

    .line 354
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "business"

    .line 355
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 357
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 358
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "business:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VisionWakeUpService"

    invoke-static {v6, v5}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "gesture_wakeup"

    .line 360
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "true"

    if-eqz v6, :cond_1

    const-string p1, "wave_movement"

    .line 361
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 363
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    const/4 v0, 0x0

    const-string v1, "TmallGenie_Multimode_Gesture_WakeUp"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->onEventHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 364
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    const-string v0, "startTalk"

    invoke-virtual {p1, v0, v5}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->callbackWrapper(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u624b\u52bf\u5524\u9192"

    .line 365
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v5, "sceneModeChange"

    .line 367
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p1, "MonitorSense"

    .line 368
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "change to MonitorSense"

    .line 369
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->stopVisionWakeup()V

    goto :goto_0

    :cond_2
    const-string p1, "DefaultSense"

    .line 371
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "change to DefaultSense"

    .line 372
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->startVisionWakeup()V

    goto :goto_0

    :cond_3
    const-string v4, "vision_wakeup"

    .line 375
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 376
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 377
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->access$100(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string v0, "vision_vad"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "result"

    .line 394
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "vision vad trigger"

    .line 397
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-direct {v1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;-><init>()V

    const/4 v2, 0x1

    .line 400
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setFlag(I)V

    const v3, 0x111d7

    .line 401
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setCode(I)V

    .line 402
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setSource(I)V

    .line 403
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setData(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    :cond_5
    :goto_0
    return-void
.end method
