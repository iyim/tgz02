.class Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$4;
.super Landroid/content/BroadcastReceiver;
.source "GenieAssistantUiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;
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

    .line 107
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$4;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$4;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->access$100(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->setLoginStatus(Z)V

    return-void
.end method
