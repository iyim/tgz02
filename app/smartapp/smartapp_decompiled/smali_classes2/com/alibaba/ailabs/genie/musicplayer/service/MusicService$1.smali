.class Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$1;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Lcom/rich/czlylibary/sdk/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->lambda$requestMiGuUrlByID$7(Ljava/lang/String;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/rich/czlylibary/sdk/ResultCallback<",
        "Lcom/rich/czlylibary/bean/MusicinfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

.field final synthetic val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMiGuMusicInfo  onFailed errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIGU-MusicService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "000002"

    .line 430
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "000001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_1

    .line 432
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_NEXT:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    .line 437
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish()V
    .locals 2

    const-string v0, "MusicService"

    const-string v1, "getMiGuMusicInfo  onFinish "

    .line 442
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MusicService"

    const-string v1, "getMiGuMusicInfo  onStart "

    .line 397
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSuccess(Lcom/rich/czlylibary/bean/MusicinfoResult;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 403
    invoke-virtual {p1}, Lcom/rich/czlylibary/bean/MusicinfoResult;->getMusicInfo()Lcom/rich/czlylibary/bean/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {v0}, Lcom/rich/czlylibary/bean/MusicInfo;->getResCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "000002"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "MIGU-MusicService"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/rich/czlylibary/bean/MusicInfo;->getResCode()Ljava/lang/String;

    move-result-object v1

    const-string v4, "000001"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "musicInfo.getResCode() is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p1}, Lcom/rich/czlylibary/bean/MusicinfoResult;->getResCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v1, :cond_1

    .line 409
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_NEXT:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {v1, v4, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    .line 413
    :cond_1
    invoke-virtual {v0}, Lcom/rich/czlylibary/bean/MusicInfo;->getIsCpAuth()Ljava/lang/String;

    move-result-object v1

    const-string v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "musicInfo.getIsCpAuth() is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Lcom/rich/czlylibary/bean/MusicInfo;->getIsCpAuth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_2

    .line 417
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_NEXT:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/rich/czlylibary/bean/Result;)V
    .locals 0

    .line 393
    check-cast p1, Lcom/rich/czlylibary/bean/MusicinfoResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$1;->onSuccess(Lcom/rich/czlylibary/bean/MusicinfoResult;)V

    return-void
.end method
