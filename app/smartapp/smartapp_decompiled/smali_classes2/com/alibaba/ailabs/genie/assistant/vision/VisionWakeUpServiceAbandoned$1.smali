.class Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "VisionWakeUpServiceAbandoned.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;

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

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "VisionWakeUpServiceA"

    if-eqz v1, :cond_0

    .line 233
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->startVisionWakeup()V

    goto/16 :goto_0

    .line 236
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "business"

    .line 237
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "data"

    .line 239
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 240
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "business:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "gesture_wakeup"

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "wave_movement"

    .line 243
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;

    const-string v1, "startTalk"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->callbackWrapper(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u624b\u52bf\u5524\u9192"

    .line 246
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "sceneModeChange"

    .line 248
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "MonitorSense"

    .line 249
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "change to MonitorSense"

    .line 250
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->stopVisionWakeup()V

    goto :goto_0

    :cond_2
    const-string p1, "DefaultSense"

    .line 252
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "change to DefaultSense"

    .line 253
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->startVisionWakeup()V

    goto :goto_0

    :cond_3
    const-string p1, "vision_wakeup"

    .line 256
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 257
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 258
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->access$100(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;Lcom/alibaba/fastjson/JSONObject;)V

    :cond_4
    :goto_0
    return-void
.end method
