.class Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2$1;
.super Ljava/lang/Object;
.source "GenieAssistantUiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;->onLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->access$100(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->onLoadComplete()V

    return-void
.end method
