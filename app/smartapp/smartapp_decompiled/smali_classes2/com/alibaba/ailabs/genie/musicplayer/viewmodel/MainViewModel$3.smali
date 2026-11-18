.class Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$3;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->requestLrc(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

.field final synthetic val$songId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$3;->val$songId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 373
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setError(Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;)V

    .line 377
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;-><init>()V

    .line 378
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$3;->val$songId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->setSongId(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
