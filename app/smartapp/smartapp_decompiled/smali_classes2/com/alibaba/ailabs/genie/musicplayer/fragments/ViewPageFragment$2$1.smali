.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2$1;
.super Ljava/lang/Object;
.source "ViewPageFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->onPlayAllClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommand createList onError iss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x9

    const/4 v1, 0x0

    invoke-direct {v2, p2, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setError(Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "processCommand createList onSuccess"

    .line 481
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess, traceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "createListRequest"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
