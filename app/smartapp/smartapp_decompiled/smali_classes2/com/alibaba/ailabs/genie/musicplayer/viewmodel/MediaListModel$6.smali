.class Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;
.super Ljava/lang/Object;
.source "MediaListModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->reverse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSuccess$23(ILjava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 418
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 420
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 421
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;

    invoke-static {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->musicCurrentToSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public synthetic lambda$onSuccess$24$MediaListModel$6(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 431
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    .line 432
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->setError(Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError,s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",s:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaListModel"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MediaListModel"

    const-string v1, "onSuccess"

    .line 399
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    .line 401
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;->getResult()Ljava/util/List;

    move-result-object v3

    .line 403
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$Model;->getPageNum()I

    move-result v1

    const/4 v4, -0x1

    const-string v5, "list is null, return"

    if-nez v3, :cond_0

    .line 405
    invoke-static {v0, v5}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, p1, v5, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->setError(Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;)V

    return-void

    .line 410
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 411
    invoke-static {v0, v5}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "list size is 0, return"

    invoke-direct {v1, v4, p1, v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->setError(Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;)V

    return-void

    .line 416
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 417
    new-array p1, p1, [Ljava/util/List;

    aput-object v3, p1, v2

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromArray([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$6$ZBW7Rxb_UlNS0T6Mt3n9WcDsbds;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$6$ZBW7Rxb_UlNS0T6Mt3n9WcDsbds;-><init>(I)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 424
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 425
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$6$RPicjyD8sLywwTdcg7iZRNx1Fck;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$6$RPicjyD8sLywwTdcg7iZRNx1Fck;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;)V

    .line 426
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
