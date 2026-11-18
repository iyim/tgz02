.class Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;
.super Ljava/lang/Object;
.source "MediaListModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->requestMusicHistory(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/MusicHistoryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

.field final synthetic val$pageNum:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;I)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->val$pageNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSuccess$17(ILjava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 217
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 218
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;

    invoke-static {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->musicHistoryToSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public synthetic lambda$onSuccess$18$MediaListModel$2(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    .line 229
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u5931\u8d25onError,s1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError,s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaListModel"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->setError(Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/MusicHistoryResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MediaListModel"

    const-string v1, "onSuccess"

    .line 198
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/MusicHistoryResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/MusicHistoryResponse;->getModel()Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "list is null, return"

    if-nez v1, :cond_0

    .line 201
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    const-string v1, "\u8fd4\u56de\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->setError(Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;)V

    return-void

    .line 207
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 208
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    const-string v1, "\u65e0\u66f4\u591a\u6570\u636e"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->setError(Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;)V

    return-void

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 214
    new-array p1, p1, [Ljava/util/List;

    const/4 v0, 0x0

    aput-object v1, p1, v0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromArray([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->val$pageNum:I

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$2$DhA0ipNbHldI9IALCudQXTFHJ1s;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$2$DhA0ipNbHldI9IALCudQXTFHJ1s;-><init>(I)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 221
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 222
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$2$Ih_3TYKGaNlsPaLOIZoJZba6e8w;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$2$Ih_3TYKGaNlsPaLOIZoJZba6e8w;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;)V

    .line 223
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
