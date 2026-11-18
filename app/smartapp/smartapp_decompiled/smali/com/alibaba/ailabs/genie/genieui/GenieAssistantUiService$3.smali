.class Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$3;
.super Ljava/lang/Object;
.source "GenieAssistantUiService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;


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

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public method(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "method"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isUIShow"

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$3;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->access$100(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->isUiShow()Z

    move-result p1

    const-string v1, "isUiShow"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object v0
.end method
