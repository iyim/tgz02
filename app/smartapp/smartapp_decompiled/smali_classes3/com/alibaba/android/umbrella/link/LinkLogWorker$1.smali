.class Lcom/alibaba/android/umbrella/link/LinkLogWorker$1;
.super Landroid/os/HandlerThread;
.source "LinkLogWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/umbrella/link/LinkLogWorker;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/umbrella/link/LinkLogWorker;


# direct methods
.method constructor <init>(Lcom/alibaba/android/umbrella/link/LinkLogWorker;Ljava/lang/String;I)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogWorker$1;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogWorker;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .line 29
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogWorker$1;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LinkLogWorker"

    const-string v1, "onLooperPrepared:  but looper == null, "

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogWorker$1;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogWorker;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/alibaba/android/umbrella/link/LinkLogWorker;->access$002(Lcom/alibaba/android/umbrella/link/LinkLogWorker;Landroid/os/Handler;)Landroid/os/Handler;

    return-void
.end method
