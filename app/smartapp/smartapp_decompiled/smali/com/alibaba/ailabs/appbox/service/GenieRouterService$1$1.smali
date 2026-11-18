.class Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1$1;
.super Ljava/lang/Object;
.source "GenieRouterService.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1$1;->this$1:Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1$1;->this$1:Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->access$000(Lcom/alibaba/ailabs/appbox/service/GenieRouterService;)Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1$1;->this$1:Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->access$000(Lcom/alibaba/ailabs/appbox/service/GenieRouterService;)Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->dismiss()V

    :cond_0
    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1$1;->this$1:Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->access$000(Lcom/alibaba/ailabs/appbox/service/GenieRouterService;)Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1$1;->this$1:Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->access$000(Lcom/alibaba/ailabs/appbox/service/GenieRouterService;)Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->dismiss()V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1$1;->this$1:Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->val$openurl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 114
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 115
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
