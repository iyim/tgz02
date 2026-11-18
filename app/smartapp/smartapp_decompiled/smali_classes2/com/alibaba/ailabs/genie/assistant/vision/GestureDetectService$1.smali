.class Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService$1;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "GestureDetectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isMemberType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->isMemberType(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "onServiceConnected"

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->startGestureDetect()V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "business"

    .line 176
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "data"

    .line 189
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "type"

    .line 190
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->isMemberType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 193
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ROM_OPEN_MODEL_MUTE"

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomControl;->enterControl(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
