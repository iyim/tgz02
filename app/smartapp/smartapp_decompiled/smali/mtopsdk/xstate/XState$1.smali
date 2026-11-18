.class final Lmtopsdk/xstate/XState$1;
.super Lmtopsdk/common/util/AsyncServiceBinder;
.source "XState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/xstate/XState;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmtopsdk/common/util/AsyncServiceBinder<",
        "Lmtopsdk/xstate/aidl/IXState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lmtopsdk/common/util/AsyncServiceBinder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected afterAsyncBind()V
    .locals 3

    .line 61
    sget-object v0, Lmtopsdk/xstate/XState;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 62
    new-instance v0, Lmtopsdk/xstate/XState$1$1;

    invoke-direct {v0, p0}, Lmtopsdk/xstate/XState$1$1;-><init>(Lmtopsdk/xstate/XState$1;)V

    .line 69
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
