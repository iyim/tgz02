.class Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3$1;
.super Ljava/lang/Object;
.source "GenieAssistantUIManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "startTalk"

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->startTalk(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "vision_wakeup_ready"

    .line 369
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 370
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$1000(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V

    .line 371
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$1100(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$1200(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 375
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$1100(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    const-string p2, "\u5df2\u4eba\u8138\u5524\u9192\uff0c\u6211\u6b63\u5728\u542c..."

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->promptMessage(Ljava/lang/String;J)V

    .line 376
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$1202(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;J)J

    goto :goto_0

    :cond_1
    const-string p2, "vision_wakeup_invalid"

    .line 378
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 379
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$1100(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
