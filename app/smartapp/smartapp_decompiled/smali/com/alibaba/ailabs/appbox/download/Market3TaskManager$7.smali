.class Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->collect(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;I)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

.field final synthetic val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field final synthetic val$retCode:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;I)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iput p3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->val$retCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collect onError apiResponse s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",s1:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Market3TaskManager-tag"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iget p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->val$retCode:I

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$600(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collect onSuccess apiResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Market3TaskManager-tag"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iget v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->val$retCode:I

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$600(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;ILjava/lang/String;)V

    return-void
.end method
