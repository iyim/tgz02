.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$6$ZBW7Rxb_UlNS0T6Mt3n9WcDsbds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$6$ZBW7Rxb_UlNS0T6Mt3n9WcDsbds;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$6$ZBW7Rxb_UlNS0T6Mt3n9WcDsbds;->f$0:I

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;->lambda$onSuccess$23(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
