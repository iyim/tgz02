.class Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$6;
.super Landroid/database/ContentObserver;
.source "GenieAssistantUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Landroid/os/Handler;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$6;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 535
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$6;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$500(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->getDoNotDisturbModeStatus(Landroid/content/Context;)Z

    move-result p1

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange updateDnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 539
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method
