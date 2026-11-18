.class Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$4;
.super Ljava/lang/Object;
.source "GenieAssistantUIManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/client/GenieUiClient$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$1300(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 408
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$1400(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V

    :cond_1
    :goto_0
    return-void
.end method
