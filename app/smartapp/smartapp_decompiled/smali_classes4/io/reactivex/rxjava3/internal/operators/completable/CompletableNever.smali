.class public final Lio/reactivex/rxjava3/internal/operators/completable/CompletableNever;
.super Lio/reactivex/rxjava3/core/Completable;
.source "CompletableNever.java"


# static fields
.field public static final INSTANCE:Lio/reactivex/rxjava3/core/Completable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableNever;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableNever;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableNever;->INSTANCE:Lio/reactivex/rxjava3/core/Completable;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .locals 1

    .line 27
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
