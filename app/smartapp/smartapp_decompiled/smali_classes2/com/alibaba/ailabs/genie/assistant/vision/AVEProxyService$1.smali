.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService$1;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "AVEProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "onServiceConnected"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "drop onServiceConnected event"

    .line 107
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "business"

    .line 112
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "children_recognition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "finger_detection"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "time_delay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "voice_attributes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_4
    const-string v2, "gesture_wakeup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "face_distance"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "gesture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_7
    const-string v2, "mirror_detection_service"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_8
    const-string v2, "face_feature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v2, "vision_wakeup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v3, 0x111d9

    goto :goto_1

    :pswitch_1
    const v3, 0x111d5

    goto :goto_1

    :pswitch_2
    const v3, 0x111d6

    goto :goto_1

    :pswitch_3
    const v3, 0x111d4

    :goto_1
    :pswitch_4
    if-eqz v3, :cond_2

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-direct {v1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;-><init>()V

    .line 142
    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setFlag(I)V

    .line 143
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setCode(I)V

    .line 144
    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setSource(I)V

    .line 145
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setData(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x746b4c8a -> :sswitch_9
        -0x3af7b4ec -> :sswitch_8
        -0x6469985 -> :sswitch_7
        -0x479a2b7 -> :sswitch_6
        -0x17a4069 -> :sswitch_5
        0x4692f5 -> :sswitch_4
        0x3224ca84 -> :sswitch_3
        0x42db6191 -> :sswitch_2
        0x4e37d92f -> :sswitch_1
        0x76f63577 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
