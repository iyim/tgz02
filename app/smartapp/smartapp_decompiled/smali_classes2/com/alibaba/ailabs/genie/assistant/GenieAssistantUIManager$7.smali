.class Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$7;
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

    .line 545
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$7;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 548
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$7;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$500(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 551
    invoke-virtual {p1, v2, v0, v2, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method
