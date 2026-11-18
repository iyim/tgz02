.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$t_ULxwFUyixLQsZQOFuUQ7uTOTM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$t_ULxwFUyixLQsZQOFuUQ7uTOTM;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$t_ULxwFUyixLQsZQOFuUQ7uTOTM;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->lambda$onStartCommand$5$MusicService(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    return-void
.end method
