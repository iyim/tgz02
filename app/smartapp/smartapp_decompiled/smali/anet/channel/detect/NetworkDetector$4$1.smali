.class Lanet/channel/detect/NetworkDetector$4$1;
.super Ljava/lang/Object;
.source "NetworkDetector.java"

# interfaces
.implements Lanet/channel/RequestCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/detect/NetworkDetector$4;->onEvent(Lanet/channel/Session;ILanet/channel/entity/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/detect/NetworkDetector$4;


# direct methods
.method constructor <init>(Lanet/channel/detect/NetworkDetector$4;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 5

    .line 273
    iget-object p3, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object p3, p3, Lanet/channel/detect/NetworkDetector$4;->val$seqNum:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "statusCode"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "msg"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    aput-object p2, v0, v2

    const-string p2, "awcn.NetworkDetector"

    const-string v2, "LongLinkTask request finish"

    invoke-static {p2, v2, p3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object p2, p2, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iget p2, p2, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    if-nez p2, :cond_0

    .line 275
    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object p2, p2, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iput p1, p2, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object p1, p1, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object p2, p2, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iget p2, p2, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v1, p1, Lanet/channel/statist/HorseRaceStat;->reqRet:I

    .line 279
    :goto_0
    iget-object p1, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object p1, p1, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-wide v0, v0, Lanet/channel/detect/NetworkDetector$4;->val$start:J

    sub-long/2addr p2, v0

    iget-object v0, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object v0, v0, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iget-wide v0, v0, Lanet/channel/statist/HorseRaceStat;->connTime:J

    add-long/2addr p2, v0

    iput-wide p2, p1, Lanet/channel/statist/HorseRaceStat;->reqTime:J

    .line 281
    iget-object p1, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object p1, p1, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    monitor-enter p1

    .line 282
    :try_start_0
    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object p2, p2, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 283
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 263
    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4$1;->this$0:Lanet/channel/detect/NetworkDetector$4;

    iget-object p2, p2, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iput p1, p2, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    return-void
.end method
