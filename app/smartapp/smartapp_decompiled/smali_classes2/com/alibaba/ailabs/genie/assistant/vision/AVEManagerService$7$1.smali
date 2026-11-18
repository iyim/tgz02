.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;
.super Ljava/lang/Object;
.source "AVEManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;->onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;

.field final synthetic val$event:Lcom/alibaba/ailabs/agui/event/MmiEvent;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;Lcom/alibaba/ailabs/agui/event/MmiEvent;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;->val$event:Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;->val$event:Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getExtraData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;->val$event:Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getExtraData()[B

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [B

    .line 270
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;->val$event:Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getExtraData()[B

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;->val$event:Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getExtraData()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->upLoadFile(Landroid/content/Context;Ljava/lang/String;[B)V

    return-void
.end method
