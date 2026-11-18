.class public final Lio/reactivex/rxjava3/internal/observers/BlockingFirstObserver;
.super Lio/reactivex/rxjava3/internal/observers/BlockingBaseObserver;
.source "BlockingFirstObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/observers/BlockingBaseObserver<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingBaseObserver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingFirstObserver;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BlockingFirstObserver;->error:Ljava/lang/Throwable;

    .line 37
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingFirstObserver;->countDown()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingFirstObserver;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 26
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BlockingFirstObserver;->value:Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BlockingFirstObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 28
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingFirstObserver;->countDown()V

    :cond_0
    return-void
.end method
