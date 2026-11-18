.class Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;
.super Landroid/os/Handler;
.source "NoLeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakRefHandler"
.end annotation


# instance fields
.field private final _host:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;->_host:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;->_host:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler$WeakRefHandler;->_host:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandlerInterface;->handleMessage(Landroid/os/Message;)V

    :cond_1
    return-void
.end method
