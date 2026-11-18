.class Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;
.super Ljava/lang/Object;
.source "ListAppsBySceneRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;->lambda$getListAppsByScene$158(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

.field final synthetic val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.listAppsBySceneWithContext,onError, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listAppsByScene"

    .line 61
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setCurrentTraceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.listAppsBySceneWithContext,onSuccess, traceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ListAppsByScene"

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;

    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;->getModel()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

    const-string v1, "model is null"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    .line 78
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

    const-string v1, "model list is null or list.size < 1"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 69
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

    const-string v1, "resp is null"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
