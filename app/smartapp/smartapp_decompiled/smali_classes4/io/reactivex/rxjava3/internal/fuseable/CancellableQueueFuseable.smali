.class public final Lio/reactivex/rxjava3/internal/fuseable/CancellableQueueFuseable;
.super Lio/reactivex/rxjava3/internal/fuseable/AbstractEmptyQueueFuseable;
.source "CancellableQueueFuseable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/fuseable/AbstractEmptyQueueFuseable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile disposed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/fuseable/AbstractEmptyQueueFuseable;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/fuseable/CancellableQueueFuseable;->disposed:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/fuseable/CancellableQueueFuseable;->disposed:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public isDisposed()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/fuseable/CancellableQueueFuseable;->disposed:Z

    return v0
.end method
