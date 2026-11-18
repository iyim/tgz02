.class Lcom/ali/watchmem/gcdetector/GCSignalSender;
.super Ljava/lang/Object;
.source "GCSignalSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;
    }
.end annotation


# static fields
.field private static gcTask:Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;-><init>(Lcom/ali/watchmem/gcdetector/GCSignalSender$1;)V

    sput-object v0, Lcom/ali/watchmem/gcdetector/GCSignalSender;->gcTask:Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;
    .locals 1

    .line 10
    sget-object v0, Lcom/ali/watchmem/gcdetector/GCSignalSender;->gcTask:Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;

    return-object v0
.end method

.method static sendGCSignal()V
    .locals 2

    .line 14
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/ali/watchmem/gcdetector/GCSignalSender;->gcTask:Lcom/ali/watchmem/gcdetector/GCSignalSender$InnerRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
