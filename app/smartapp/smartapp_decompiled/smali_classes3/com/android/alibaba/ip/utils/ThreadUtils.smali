.class public Lcom/android/alibaba/ip/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static asyncExcute(Ljava/lang/Runnable;)V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/alibaba/ip/utils/ThreadUtils$1;

    invoke-direct {v1, p0}, Lcom/android/alibaba/ip/utils/ThreadUtils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "thread-instantpatch"

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static syncExcute(Ljava/lang/Runnable;)V
    .locals 0

    .line 29
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
