.class public interface abstract Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;
.super Ljava/lang/Object;
.source "MediaPlayStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayStateChangeListener"
.end annotation


# virtual methods
.method public abstract onActiveSessionsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMetadataChanged(Landroid/media/MediaMetadata;Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;)V
.end method

.method public abstract onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
.end method
