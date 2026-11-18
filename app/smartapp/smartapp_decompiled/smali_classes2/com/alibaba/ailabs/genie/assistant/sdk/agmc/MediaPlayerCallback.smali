.class Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "MediaPlayerCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgmcPlayerCallback"


# instance fields
.field private mData:Landroid/os/Bundle;

.field private mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;

.field private mMediaItem:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;

    return-void
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mData:Landroid/os/Bundle;

    const/4 p1, -0x1

    const-string v0, "status"

    .line 50
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGMC_METHOD_STATUS_CALLBACK status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgmcPlayerCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;->onEvent(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 47
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method onException()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mMediaItem:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;->onException(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method onReboot()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mMediaItem:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;->onReboot(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method release()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;

    return-void
.end method

.method setAgmcItem(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->mMediaItem:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;

    return-void
.end method
