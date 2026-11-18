.class final Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$1;
.super Ljava/lang/Object;
.source "RxTimerUtil.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil;->timer(JLcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$1;->val$next:Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 56
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil;->cancel()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil;->cancel()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$1;->val$next:Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;->doNext(J)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil;->access$002(Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
