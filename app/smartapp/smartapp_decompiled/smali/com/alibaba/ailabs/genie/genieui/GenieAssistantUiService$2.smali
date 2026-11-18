.class Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;
.super Ljava/lang/Object;
.source "GenieAssistantUiService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->access$200(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
