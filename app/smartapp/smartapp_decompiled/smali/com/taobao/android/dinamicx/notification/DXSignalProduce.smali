.class public Lcom/taobao/android/dinamicx/notification/DXSignalProduce;
.super Ljava/lang/Object;
.source "DXSignalProduce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/notification/DXSignalProduce$SignalReceiver;,
        Lcom/taobao/android/dinamicx/notification/DXSignalProduce$DXSignalProduceHolder;
    }
.end annotation


# static fields
.field public static PERIOD_TIME:I = 0x32


# instance fields
.field private MAX_TRACKER_COUNT:I

.field controlEventCenter:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;",
            ">;>;"
        }
    .end annotation
.end field

.field notificationCenter:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;",
            ">;>;"
        }
    .end annotation
.end field

.field trackerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 26
    iput v0, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->MAX_TRACKER_COUNT:I

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->notificationCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->controlEventCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->startProduce()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamicx/notification/DXSignalProduce;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->scheduleNotification()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamicx/notification/DXSignalProduce;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->scheduleControlEvent()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/taobao/android/dinamicx/notification/DXSignalProduce;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->MAX_TRACKER_COUNT:I

    return p0
.end method

.method public static getInstance()Lcom/taobao/android/dinamicx/notification/DXSignalProduce;
    .locals 1

    .line 30
    invoke-static {}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$DXSignalProduceHolder;->access$000()Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    move-result-object v0

    return-object v0
.end method

.method private scheduleControlEvent()V
    .locals 2

    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->controlEventCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->controlEventCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$SignalReceiver;

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$SignalReceiver;->onReceiver()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->controlEventCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scheduleNotification()V
    .locals 2

    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->notificationCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->notificationCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$SignalReceiver;

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v1}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$SignalReceiver;->onReceiver()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->notificationCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public registerControlEventCenter(Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->controlEventCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNotificationCenter(Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->notificationCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method startProduce()V
    .locals 7

    .line 45
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->scheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;

    invoke-direct {v1, p0}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;-><init>(Lcom/taobao/android/dinamicx/notification/DXSignalProduce;)V

    sget v2, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->PERIOD_TIME:I

    int-to-long v4, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method unregisterControlEventCenter(Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->controlEventCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->controlEventCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->controlEventCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method unregisterNotificationCenter(Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->notificationCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->notificationCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->notificationCenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
