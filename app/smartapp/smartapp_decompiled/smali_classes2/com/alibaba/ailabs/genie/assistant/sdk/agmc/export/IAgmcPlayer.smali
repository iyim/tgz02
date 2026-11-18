.class public interface abstract Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;
.super Ljava/lang/Object;
.source "IAgmcPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;
    }
.end annotation


# virtual methods
.method public abstract agmcAbandonFocus(Z)Z
.end method

.method public abstract agmcAddPlayerParam(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract agmcGetCurrentPosition()J
.end method

.method public abstract agmcGetDuration()J
.end method

.method public abstract agmcGetPlayableDuration()J
.end method

.method public abstract agmcHasFocus()Z
.end method

.method public abstract agmcIsPlaying()Z
.end method

.method public abstract agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V
.end method

.method public abstract agmcPause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract agmcPlay(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract agmcRelease()V
.end method

.method public abstract agmcResume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract agmcSeekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract agmcSetFadeIn(IFF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract agmcSetSpeed(IF)V
.end method

.method public abstract agmcSetVolume(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract agmcStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
