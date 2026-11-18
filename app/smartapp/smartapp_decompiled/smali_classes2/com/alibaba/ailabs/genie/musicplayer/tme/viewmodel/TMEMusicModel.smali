.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;
.super Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
.source "TMEMusicModel.java"


# static fields
.field public static final DEFAULT_REQUEST:Ljava/lang/String; = "default_request"

.field private static final TAG:Ljava/lang/String; = "TME-MusicModel"

.field public static final WECHAT_REQUEST:Ljava/lang/String; = "wechat_request"


# instance fields
.field private mDisposableAppsData:Lio/reactivex/rxjava3/disposables/Disposable;

.field private mDisposableAuthInfoData:Lio/reactivex/rxjava3/disposables/Disposable;

.field private mDisposableWechatAuthInfoData:Lio/reactivex/rxjava3/disposables/Disposable;

.field private mMutableAuthInfo:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableLiveAppList:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMutableWechatAuthInfo:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private netError:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;-><init>()V

    .line 39
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mMutableLiveAppList:Landroid/arch/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mMutableAuthInfo:Landroid/arch/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mMutableWechatAuthInfo:Landroid/arch/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->netError:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method

.method private isNotTMESource(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "NE"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getAppAuthInfo(Ljava/lang/String;)V
    .locals 3

    .line 96
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->isNotTMESource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mDisposableAuthInfoData:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mDisposableAuthInfoData:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppAuthInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TME-MusicModel"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;->getLoginInfoForQrcode(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 105
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 106
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$vCUqFvt3skKsf9aGel7OE3zAWSE;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$vCUqFvt3skKsf9aGel7OE3zAWSE;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$vuwAexaUm0YadyVsPq2RxEspLE8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$vuwAexaUm0YadyVsPq2RxEspLE8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;)V

    .line 107
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mDisposableAuthInfoData:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public getAppAuthInfoWechat(Ljava/lang/String;)V
    .locals 2

    .line 123
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->isNotTMESource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mDisposableWechatAuthInfoData:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mDisposableWechatAuthInfoData:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 130
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;->getLoginInfoForWechatQrcode(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 131
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 132
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$C5ySAHU8q_MyY5qtK5i_5TBkkhQ;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$C5ySAHU8q_MyY5qtK5i_5TBkkhQ;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$kUKRlljZkUlZYHP2wbz-Vq9BWlM;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$kUKRlljZkUlZYHP2wbz-Vq9BWlM;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;)V

    .line 133
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mDisposableWechatAuthInfoData:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public getListAppsData()V
    .locals 1

    const-string v0, "third_source"

    .line 77
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getListAppsData(Ljava/lang/String;)V

    return-void
.end method

.method public getListAppsData(Ljava/lang/String;)V
    .locals 2

    .line 81
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mDisposableAppsData:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mDisposableAppsData:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 85
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;->getListAppsByScene(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 86
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 87
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$7lf0b6HbUeNGxpbFin9j4Roem_I;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$7lf0b6HbUeNGxpbFin9j4Roem_I;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$xJDt5OaPfdl1403kJVoJcV8bVR8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/-$$Lambda$TMEMusicModel$xJDt5OaPfdl1403kJVoJcV8bVR8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;)V

    .line 88
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mDisposableAppsData:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public getMutableAuthInfo()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mMutableAuthInfo:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mMutableLiveAppList:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMutableWechatAuthInfo()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mMutableWechatAuthInfo:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNetError()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->netError:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$getAppAuthInfo$77$TMEMusicModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setMutableAuthInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V

    return-void
.end method

.method public synthetic lambda$getAppAuthInfo$78$TMEMusicModel(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TME-MusicModel"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "default_request"

    .line 110
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setNetError(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getAppAuthInfoWechat$79$TMEMusicModel(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setMutableWechatAuthInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V

    return-void
.end method

.method public synthetic lambda$getAppAuthInfoWechat$80$TMEMusicModel(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TME-MusicModel"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wechat_request"

    .line 136
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setNetError(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getListAppsData$75$TMEMusicModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setMutableLiveAppList(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$getListAppsData$76$TMEMusicModel(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TME-MusicModel"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getErrorLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setMutableAuthInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mMutableAuthInfo:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setMutableLiveAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mMutableLiveAppList:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setMutableWechatAuthInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->mMutableWechatAuthInfo:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setNetError(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->netError:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setProgressBarVisible(Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 168
    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->loading_view:I

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_0
    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->loading_view:I

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showChannelFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "TME-MusicModel"

    const-string v1, "showChannelFragment 11"

    .line 176
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 180
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;

    invoke-direct {v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;-><init>(Ljava/lang/String;)V

    .line 181
    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mainPageFlId:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const-string p2, "0"

    .line 182
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public showFavoritesListFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "TME-MusicModel"

    const-string v1, "showSongListFragment"

    .line 153
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 158
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-direct {v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->setShowFirst(Z)V

    const-string p2, "0"

    .line 160
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mainPageFlId:I

    invoke-virtual {p2, p3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 161
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public showPlayListFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "TME-MusicModel"

    const-string v1, "showPlayListFragment"

    .line 141
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 145
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;

    invoke-direct {v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->setShowFirst(Z)V

    const-string p2, "0"

    .line 147
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mainPageFlId:I

    invoke-virtual {p2, p3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
