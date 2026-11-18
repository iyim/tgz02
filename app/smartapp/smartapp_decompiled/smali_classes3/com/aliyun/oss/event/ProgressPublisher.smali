.class public Lcom/aliyun/oss/event/ProgressPublisher;
.super Ljava/lang/Object;
.source "ProgressPublisher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static publishByteCountEvent(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;J)V
    .locals 3

    .line 67
    sget-object v0, Lcom/aliyun/oss/event/ProgressListener;->NOOP:Lcom/aliyun/oss/event/ProgressListener;

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lcom/aliyun/oss/event/ProgressEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/aliyun/oss/event/ProgressEvent;-><init>(Lcom/aliyun/oss/event/ProgressEventType;J)V

    invoke-interface {p0, v0}, Lcom/aliyun/oss/event/ProgressListener;->progressChanged(Lcom/aliyun/oss/event/ProgressEvent;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/aliyun/oss/event/ProgressListener;->NOOP:Lcom/aliyun/oss/event/ProgressListener;

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/aliyun/oss/event/ProgressEvent;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/event/ProgressEvent;-><init>(Lcom/aliyun/oss/event/ProgressEventType;)V

    invoke-interface {p0, v0}, Lcom/aliyun/oss/event/ProgressListener;->progressChanged(Lcom/aliyun/oss/event/ProgressEvent;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static publishRequestBytesTransferred(Lcom/aliyun/oss/event/ProgressListener;J)V
    .locals 1

    .line 48
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->REQUEST_BYTE_TRANSFER_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p0, v0, p1, p2}, Lcom/aliyun/oss/event/ProgressPublisher;->publishByteCountEvent(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static publishRequestContentLength(Lcom/aliyun/oss/event/ProgressListener;J)V
    .locals 1

    .line 42
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->REQUEST_CONTENT_LENGTH_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p0, v0, p1, p2}, Lcom/aliyun/oss/event/ProgressPublisher;->publishByteCountEvent(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static publishResponseBytesTransferred(Lcom/aliyun/oss/event/ProgressListener;J)V
    .locals 1

    .line 60
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->RESPONSE_BYTE_TRANSFER_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p0, v0, p1, p2}, Lcom/aliyun/oss/event/ProgressPublisher;->publishByteCountEvent(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static publishResponseContentLength(Lcom/aliyun/oss/event/ProgressListener;J)V
    .locals 1

    .line 54
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->RESPONSE_CONTENT_LENGTH_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p0, v0, p1, p2}, Lcom/aliyun/oss/event/ProgressPublisher;->publishByteCountEvent(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
