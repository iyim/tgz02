.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$HbXPKUGCPXdET59BOmWiXyY4fqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$HbXPKUGCPXdET59BOmWiXyY4fqI;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$HbXPKUGCPXdET59BOmWiXyY4fqI;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->lambda$onStartCommand$2$MusicService(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p1

    return-object p1
.end method
