.class public Lcom/alibaba/appmonitor/event/CountEvent;
.super Lcom/alibaba/appmonitor/event/Event;
.source "CountEvent.java"


# instance fields
.field public count:I

.field public value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alibaba/appmonitor/event/Event;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public declared-synchronized addValue(DLjava/lang/Long;)V
    .locals 2

    monitor-enter p0

    .line 16
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/appmonitor/event/CountEvent;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/appmonitor/event/CountEvent;->value:D

    .line 17
    iget p1, p0, Lcom/alibaba/appmonitor/event/CountEvent;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/appmonitor/event/CountEvent;->count:I

    .line 18
    invoke-super {p0, p3}, Lcom/alibaba/appmonitor/event/Event;->commit(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dumpToJSONObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    monitor-enter p0

    .line 23
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/appmonitor/event/Event;->dumpToJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "count"

    .line 24
    iget v2, p0, Lcom/alibaba/appmonitor/event/CountEvent;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "value"

    .line 25
    iget-wide v2, p0, Lcom/alibaba/appmonitor/event/CountEvent;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized fill([Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/appmonitor/event/Event;->fill([Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/alibaba/appmonitor/event/CountEvent;->value:D

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/alibaba/appmonitor/event/CountEvent;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
