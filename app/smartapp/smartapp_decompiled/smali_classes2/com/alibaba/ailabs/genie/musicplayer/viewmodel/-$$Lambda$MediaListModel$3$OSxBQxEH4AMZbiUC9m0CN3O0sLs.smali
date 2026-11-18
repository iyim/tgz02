.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$3$OSxBQxEH4AMZbiUC9m0CN3O0sLs;
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

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$3$OSxBQxEH4AMZbiUC9m0CN3O0sLs;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MediaListModel$3$OSxBQxEH4AMZbiUC9m0CN3O0sLs;->f$0:I

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$3;->lambda$onSuccess$19(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
