.class Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;
.super Ljava/util/TimerTask;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TickTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 928
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 929
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getProgress()I

    move-result v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 930
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getDuration()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$302(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;I)I

    .line 933
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)I

    move-result v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 934
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    const-string v2, "sessionEvent"

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 938
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
