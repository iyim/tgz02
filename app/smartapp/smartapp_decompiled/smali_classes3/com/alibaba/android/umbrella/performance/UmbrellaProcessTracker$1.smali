.class final Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker$1;
.super Landroid/os/Handler;
.source "UmbrellaProcessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    .line 37
    iget v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 38
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->recordProcess(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    goto :goto_0

    .line 39
    :cond_0
    iget v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 40
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->recordSubProcess(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    goto :goto_0

    .line 41
    :cond_1
    iget v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 42
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->register(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    goto :goto_0

    .line 43
    :cond_2
    iget v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 44
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->recordArgs(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    goto :goto_0

    .line 45
    :cond_3
    iget v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 46
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->commitPerformance(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    goto :goto_0

    .line 47
    :cond_4
    iget v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 48
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->setChildBizName(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    goto :goto_0

    .line 49
    :cond_5
    iget v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 50
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->addAbInfo(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    goto :goto_0

    .line 51
    :cond_6
    iget v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 52
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->recordOtherProcess(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_7
    :goto_0
    return-void
.end method
