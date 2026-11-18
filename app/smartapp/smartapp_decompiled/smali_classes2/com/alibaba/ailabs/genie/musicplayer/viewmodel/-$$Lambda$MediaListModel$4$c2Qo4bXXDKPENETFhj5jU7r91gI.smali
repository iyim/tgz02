.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$4$c2Qo4bXXDKPENETFhj5jU7r91gI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$4;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$4$c2Qo4bXXDKPENETFhj5jU7r91gI;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$4$c2Qo4bXXDKPENETFhj5jU7r91gI;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$4;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$4;->lambda$onSuccess$22$MediaListModel$4(Ljava/util/List;)V

    return-void
.end method
