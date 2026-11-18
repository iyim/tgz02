.class Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    .line 706
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-MusicService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "quit"

    .line 708
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->stop()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "setSpeed"

    .line 710
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    const-string v0, "speed"

    .line 711
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 712
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_1

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    .line 714
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {p1, v2, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcSetSpeed(IF)V

    .line 717
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 718
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSpeedValue(Ljava/lang/String;)V

    .line 719
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPlayMode()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    invoke-static/range {v4 .. v9}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "changePlayMode"

    .line 721
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_a

    .line 723
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object p2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_SET_PLAY_MODE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {p1, p2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "like"

    .line 725
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_a

    .line 727
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object p2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_ADD_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {p1, p2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "unlike"

    .line 729
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 730
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_a

    .line 731
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object p2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_CANCEL_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {p1, p2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "refresh"

    .line 733
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 734
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    const-string p2, "MusicService"

    if-eqz p1, :cond_6

    .line 735
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_REFRESH:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {p1, v0, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    const-string p1, "mAgmcPlayer refresh"

    .line 736
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "mAgmcPlayer is null"

    .line 738
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "likeAlbum"

    .line 740
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 741
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;-><init>()V

    .line 742
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 743
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setCollect(Z)V

    .line 744
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPlayMode()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSpeedValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    invoke-static/range {v3 .. v8}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAlbumRawId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 747
    :cond_8
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setCollect(Z)V

    .line 748
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPlayMode()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSpeedValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAlbumRawId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v0, "selectQuality"

    .line 751
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 752
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_a

    .line 753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MusicService========  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "soundQuality"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_SET_QUALITY:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    .line 675
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key events captured keyEvent.getKeyCode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicService"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 695
    :pswitch_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_2

    .line 696
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_PREVIOUS:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :pswitch_1
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_2

    .line 691
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_NEXT:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->stop()V

    goto :goto_0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->pause(Z)V

    goto :goto_0

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->resume()V

    .line 701
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "MusicService"

    const-string v1, "onPause"

    .line 642
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 643
    sput v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->Operation:I

    const-string v0, "pause"

    .line 644
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendStatCheckListLog(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->pause(Z)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    const-string v0, "MusicService"

    const-string v1, "onPlay"

    .line 631
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 632
    sput v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->Operation:I

    const-string v0, "continue"

    .line 633
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendStatCheckListLog(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->resume()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeekTo, pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    .line 652
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;J)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 3

    .line 657
    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    const-string v0, "MusicService"

    const-string v1, "onSkipToNext"

    .line 658
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_0

    .line 660
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_NEXT:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSkipToPrevious()V
    .locals 3

    .line 666
    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    const-string v0, "MusicService"

    const-string v1, "onSkipToPrevious"

    .line 667
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_PREVIOUS:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
