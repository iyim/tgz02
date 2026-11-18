.class public Lcom/alibaba/ailabs/genie/utils/task/UIHandler;
.super Ljava/lang/Object;
.source "UIHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static destroy()V
    .locals 2

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    sput-object v1, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static get()Landroid/os/Handler;
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static nowOn()Z
    .locals 2

    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static post(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;Z)Z

    move-result p0

    return p0
.end method

.method public static post(Ljava/lang/Runnable;Z)Z
    .locals 1

    .line 59
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->nowOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 65
    sget-object p1, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    :cond_1
    sget-object p1, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static postAtFront(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->postAtFront(Ljava/lang/Runnable;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static postAtFront(Ljava/lang/Runnable;Z)V
    .locals 1

    .line 92
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    sget-object p1, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->postDelayed(Ljava/lang/Runnable;JZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static postDelayed(Ljava/lang/Runnable;JZ)V
    .locals 3

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 81
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    :cond_0
    sget-object p3, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static rePost(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;Z)Z

    move-result p0

    return p0
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 101
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static removeCallbacks(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 109
    sget-object v1, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
