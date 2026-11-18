.class public Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil;
.super Ljava/lang/Object;
.source "RxTimerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MIGU-RxTimerUtil"

.field private static mDisposable:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$002(Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    .line 21
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil;->mDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public static cancel()V
    .locals 2

    .line 68
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil;->mDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil;->mDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const-string v0, "MIGU-RxTimerUtil"

    const-string v1, "====\u5b9a\u65f6\u5668\u53d6\u6d88======"

    .line 70
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static timer(JLcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;)V
    .locals 1

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 33
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$1;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/migu/RxTimerUtil$IRxNext;)V

    .line 34
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
