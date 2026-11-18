.class Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;
.super Landroid/media/session/MediaController$Callback;
.source "MediaPlayStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$1;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;-><init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    const-string v0, "MediaPlayState"

    const-string v1, " onMetadataChanged "

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->access$200(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->access$200(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->access$300(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;Landroid/media/MediaMetadata;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;->onMetadataChanged(Landroid/media/MediaMetadata;Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    const-string v0, "MediaPlayState"

    const-string v1, " onPlaybackStateChanged..."

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->access$200(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->access$200(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    :cond_1
    return-void
.end method
