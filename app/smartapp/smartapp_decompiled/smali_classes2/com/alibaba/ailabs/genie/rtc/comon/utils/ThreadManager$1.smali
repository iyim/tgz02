.class final Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$1;
.super Ljava/lang/Object;
.source "ThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->postBackground(Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackToMainThread:Z

.field final synthetic val$postCallback:Ljava/lang/Runnable;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;ZLjava/lang/Runnable;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$1;->val$task:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$1;->val$callbackToMainThread:Z

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$1;->val$postCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 56
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$1;->val$callbackToMainThread:Z

    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->access$002(Landroid/os/Handler;)Landroid/os/Handler;

    .line 60
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$1;->val$postCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
