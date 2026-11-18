.class public Lcom/aliyun/oss/event/ProgressEvent;
.super Ljava/lang/Object;
.source "ProgressEvent.java"


# instance fields
.field private final bytes:J

.field private final eventType:Lcom/aliyun/oss/event/ProgressEventType;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/event/ProgressEventType;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0, v1}, Lcom/aliyun/oss/event/ProgressEvent;-><init>(Lcom/aliyun/oss/event/ProgressEventType;J)V

    return-void
.end method

.method public constructor <init>(Lcom/aliyun/oss/event/ProgressEventType;J)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 37
    iput-object p1, p0, Lcom/aliyun/oss/event/ProgressEvent;->eventType:Lcom/aliyun/oss/event/ProgressEventType;

    .line 38
    iput-wide p2, p0, Lcom/aliyun/oss/event/ProgressEvent;->bytes:J

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes transferred must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eventType must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBytes()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/aliyun/oss/event/ProgressEvent;->bytes:J

    return-wide v0
.end method

.method public getEventType()Lcom/aliyun/oss/event/ProgressEventType;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/aliyun/oss/event/ProgressEvent;->eventType:Lcom/aliyun/oss/event/ProgressEventType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/oss/event/ProgressEvent;->eventType:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/aliyun/oss/event/ProgressEvent;->bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
