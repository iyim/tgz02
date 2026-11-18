.class Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$1;
.super Ljava/lang/Object;
.source "ChildAppListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loadData()V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChildMarketData onError: s = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], s1 = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChildAppListFragment"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    const/4 p2, -0x1

    iput p2, p1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loaddingIndex:I

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

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChildMarketData onSuccess() called with: apiResponse = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildAppListFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMarketByCate onSuccess traceid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$000(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    const/4 v0, -0x1

    iput v0, p1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loaddingIndex:I

    return-void
.end method
