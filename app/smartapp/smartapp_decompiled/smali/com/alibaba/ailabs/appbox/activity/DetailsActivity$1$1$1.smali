.class Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$1;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

.field final synthetic val$response:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$1;->this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$1;->val$response:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "DetailsActivity"

    const-string v1, "######333 threadPool start onDataLoaded"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$1;->this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$1;->val$response:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$1;->this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;->val$apiResponse:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
