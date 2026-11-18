.class Lcom/taobao/orange/util/ReportAckUtils$ConfigHandler;
.super Landroid/os/Handler;
.source "ReportAckUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/util/ReportAckUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 43
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/taobao/orange/util/ReportAckUtils;->mConfigAckDOSet:Ljava/util/Set;

    monitor-enter p1

    .line 53
    :try_start_0
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ReportAck"

    const-string/jumbo v3, "report config acks"

    const/4 v4, 0x2

    .line 54
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "size"

    aput-object v5, v4, v0

    sget-object v0, Lcom/taobao/orange/util/ReportAckUtils;->mConfigAckDOSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    sget-object v1, Lcom/taobao/orange/util/ReportAckUtils;->mConfigAckDOSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-static {v0}, Lcom/taobao/orange/util/ReportAckUtils;->reportConfigAcks(Ljava/util/Set;)V

    .line 60
    sget-object v0, Lcom/taobao/orange/util/ReportAckUtils;->mConfigAckDOSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 61
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45
    :cond_2
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 46
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "ReportAck"

    const-string/jumbo v2, "wait config acks"

    invoke-static {v0, v2, p1}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const-wide/16 v2, 0x7530

    .line 49
    invoke-virtual {p0, v1, v2, v3}, Lcom/taobao/orange/util/ReportAckUtils$ConfigHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
