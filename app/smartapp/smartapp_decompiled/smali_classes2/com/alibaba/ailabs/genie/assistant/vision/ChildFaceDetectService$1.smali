.class Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "ChildFaceDetectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onServiceConnected"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->startChildFaceDetect()V

    goto/16 :goto_0

    .line 162
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "business"

    .line 163
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "children_recognition"

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChildMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->isChildMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v2, "is_child"

    .line 166
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->isChildMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->stopChildFaceDetect()V

    .line 169
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;

    const/4 v3, 0x0

    const-string v4, "TmallGenie_Multimode_ChildFace_Enter_ChildMode"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->onEventHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->access$002(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;J)J

    const-string v2, "playTTS \u53c8\u89c1\u9762\u4e86\u5c0f\u4e3b\u4eba\uff01\u4e00\u8d77\u7ee7\u7eed\u5728\u513f\u7ae5\u6a21\u5f0f\u73a9\u800d\u5427"

    .line 171
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1$1;

    invoke-direct {v9, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;)V

    const-string v5, "\u53c8\u89c1\u9762\u4e86\u5c0f\u4e3b\u4eba\uff01\u4e00\u8d77\u7ee7\u7eed\u5728\u513f\u7ae5\u6a21\u5f0f\u73a9\u800d\u5427"

    move-object v3, v2

    invoke-static/range {v3 .. v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->access$102(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;I)I

    :cond_1
    const-string v2, "is_adult"

    .line 185
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 202
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->isChildMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->stopChildFaceDetect()V

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "business:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
