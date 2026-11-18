.class Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$1;
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

    .line 214
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 217
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$100(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$002(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Z)Z

    .line 218
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$000(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$202(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Z)Z

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: full duplex dialog setting change to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$000(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenieAssistantUIManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
