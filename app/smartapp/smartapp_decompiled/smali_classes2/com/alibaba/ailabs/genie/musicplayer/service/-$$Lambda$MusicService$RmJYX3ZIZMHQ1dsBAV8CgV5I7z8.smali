.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$RmJYX3ZIZMHQ1dsBAV8CgV5I7z8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$RmJYX3ZIZMHQ1dsBAV8CgV5I7z8;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$RmJYX3ZIZMHQ1dsBAV8CgV5I7z8;->f$1:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$RmJYX3ZIZMHQ1dsBAV8CgV5I7z8;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$RmJYX3ZIZMHQ1dsBAV8CgV5I7z8;->f$1:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    check-cast p1, Lcom/rich/czlylibary/bean/MusicinfoResult;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->lambda$null$3$MusicService(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;Lcom/rich/czlylibary/bean/MusicinfoResult;)V

    return-void
.end method
