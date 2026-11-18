.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$2$Ih_3TYKGaNlsPaLOIZoJZba6e8w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$2$Ih_3TYKGaNlsPaLOIZoJZba6e8w;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$2$Ih_3TYKGaNlsPaLOIZoJZba6e8w;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;->lambda$onSuccess$18$MediaListModel$2(Ljava/util/List;)V

    return-void
.end method
