.class Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;
.super Ljava/lang/Object;
.source "GenieRouterService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->downloadAndOpen(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

.field final synthetic val$openurl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/service/GenieRouterService;Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->val$openurl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "downloadAndOpen"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "\u62b1\u6b49\uff0c\u6253\u5f00\u51fa\u9519\u3002"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->access$000(Lcom/alibaba/ailabs/appbox/service/GenieRouterService;)Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    new-instance v1, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->access$002(Lcom/alibaba/ailabs/appbox/service/GenieRouterService;Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;)Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->access$000(Lcom/alibaba/ailabs/appbox/service/GenieRouterService;)Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;->this$0:Lcom/alibaba/ailabs/appbox/service/GenieRouterService;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService;->access$000(Lcom/alibaba/ailabs/appbox/service/GenieRouterService;)Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->show()V

    .line 102
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1$1;-><init>(Lcom/alibaba/ailabs/appbox/service/GenieRouterService$1;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ZLcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V

    return-void
.end method
