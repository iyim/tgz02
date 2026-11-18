.class Lcom/alibaba/android/umbrella/link/LinkLogWorker;
.super Ljava/lang/Object;
.source "LinkLogWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkLogWorker"

.field private static final UM_SDK_LINK_LOG:Ljava/lang/String; = "UM_SDK_LINK_LOG"


# instance fields
.field private handler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogWorker;->handler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/alibaba/android/umbrella/link/LinkLogWorker$1;

    const-string v1, "UM_SDK_LINK_LOG"

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/android/umbrella/link/LinkLogWorker$1;-><init>(Lcom/alibaba/android/umbrella/link/LinkLogWorker;Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/android/umbrella/link/LinkLogWorker;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogWorker;->handler:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method runNonBlocking(Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogWorker;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "LinkLogWorker"

    const-string v1, "submit:  but handler == null"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;->run()V

    return-void

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
