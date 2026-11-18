.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MainViewModel$C-Asq6Muzkj9bCt791QWUZx1V_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MainViewModel$C-Asq6Muzkj9bCt791QWUZx1V_8;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MainViewModel$C-Asq6Muzkj9bCt791QWUZx1V_8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MainViewModel$C-Asq6Muzkj9bCt791QWUZx1V_8;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MainViewModel$C-Asq6Muzkj9bCt791QWUZx1V_8;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->lambda$requestLrc$14$MainViewModel(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
