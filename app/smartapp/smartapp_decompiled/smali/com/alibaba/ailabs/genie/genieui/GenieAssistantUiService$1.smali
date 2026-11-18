.class Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$1;
.super Ljava/lang/Object;
.source "GenieAssistantUiService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    const-string v0, "GenieAssistantUiService"

    const-string v1, "handleMessage"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
