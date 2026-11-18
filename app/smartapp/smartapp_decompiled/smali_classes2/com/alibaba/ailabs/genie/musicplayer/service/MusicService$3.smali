.class Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$3;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->updateForPlaying(ZLcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    return-void
.end method
