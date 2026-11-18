.class public Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.super Ljava/lang/Object;
.source "NoLeakHandler.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;
    }
.end annotation


# instance fields
.field private final _handler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

.field private final _host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;-><init>(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_handler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    .line 29
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;-><init>(Landroid/os/Looper;Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_handler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    .line 34
    new-instance p2, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    invoke-direct {p2, p1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;-><init>(Landroid/os/Looper;Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_handler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    .line 24
    new-instance p1, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;-><init>(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_handler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

    return-void
.end method

.method private final innerHandler()Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_host:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    return-object v0
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public final handler()Landroid/os/Handler;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->_handler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;

    return-object v0
.end method

.method public final hasMessages(I)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageDelayedWithRef(IJ)Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->innerHandler()Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
