.class Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;
.super Ljava/lang/Object;
.source "GCSignalSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/watchmem/gcdetector/GCSignalSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerRunnable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/ali/watchmem/gcdetector/GCSignalSender$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/ali/watchmem/gcdetector/GCSignalSender;->access$100()Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemManager;->instance()Lcom/ali/watchmem/core/WatchmemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/core/WatchmemManager;->gc()V

    return-void
.end method
