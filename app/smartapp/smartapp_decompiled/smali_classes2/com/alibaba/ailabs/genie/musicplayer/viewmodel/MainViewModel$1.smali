.class Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$1;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->processCommand(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setIsRequesting(Z)V

    .line 205
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

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

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

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setIsRequesting(Z)V

    const-string v0, "processCommand createList onSuccess"

    .line 187
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess, traceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createListRequest"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->getPayload()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean;->getPayload()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CreateListDataResponse$ModelBean$PayloadBean;->getData()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 196
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setHandleCreateListData(Z)V

    :cond_0
    return-void
.end method
