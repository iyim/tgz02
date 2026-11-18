.class public Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;
.super Ljava/lang/Object;
.source "TimeLoopUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;
    }
.end annotation


# static fields
.field private static final NUMBER_PERIOD_1:I = 0x3b

.field private static final NUMBER_PERIOD_3:I = 0x13

.field private static final NUMBER_PERIOD_5:I = 0x96

.field private static final SECOND_1:I = 0x1

.field public static final SECOND_3:I = 0x3

.field private static final SECOND_5:I = 0x5


# instance fields
.field private final TIME_LOOP:Ljava/lang/String;

.field private loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

.field private mDisposable1:Lio/reactivex/rxjava3/disposables/Disposable;

.field private mDisposable3:Lio/reactivex/rxjava3/disposables/Disposable;

.field private mDisposable5:Lio/reactivex/rxjava3/disposables/Disposable;

.field private outputLog:Z

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TimeLoop"

    .line 19
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->TIME_LOOP:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->outputLog:Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable1:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->outputLog:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop5()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->startTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop1()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->loop3s()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$602(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable3:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop3()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->loop5s()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable5:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p1
.end method

.method private loop1s()V
    .locals 4

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->single()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V

    .line 91
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method

.method private loop3s()V
    .locals 4

    .line 125
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->single()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    const-wide/16 v2, 0x3

    invoke-static {v2, v3, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V

    .line 127
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method

.method private loop5s()V
    .locals 4

    .line 160
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->single()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-static {v2, v3, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;)V

    .line 162
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method

.method private stop1()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable1:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable1:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable1:Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private stop3()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable3:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable3:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable3:Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private stop5()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable5:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable5:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->mDisposable5:Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method


# virtual methods
.method public setOutputLog(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->outputLog:Z

    return-void
.end method

.method public startLoop(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop()V

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    const-string p1, "TimeLoop"

    const-string v0, "startLoop"

    .line 36
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->startTime:J

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->loop1s()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop1()V

    .line 44
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop3()V

    .line 45
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop5()V

    return-void
.end method
