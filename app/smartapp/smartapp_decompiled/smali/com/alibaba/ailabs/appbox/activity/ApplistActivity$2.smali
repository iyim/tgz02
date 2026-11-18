.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->loadData(Z)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

.field final synthetic val$isShowLoading:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Z)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->val$isShowLoading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getApplistData"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->val$isShowLoading:Z

    if-eqz p1, :cond_0

    .line 624
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->finishLoadingView()V

    :cond_0
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

    .line 605
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "getApplistData"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getApplistData-Traceid"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$002(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 609
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 610
    invoke-static {}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$200()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 611
    iput v0, p1, Landroid/os/Message;->what:I

    .line 612
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 614
    :cond_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->val$isShowLoading:Z

    if-eqz p1, :cond_1

    .line 615
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->finishLoadingView()V

    :cond_1
    :goto_0
    return-void
.end method
