.class Lcom/aliyun/oss/event/RequestProgressInputStream;
.super Lcom/aliyun/oss/event/ProgressInputStream;
.source "RequestProgressInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/event/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onEOF()V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/aliyun/oss/event/RequestProgressInputStream;->onNotifyBytesRead()V

    return-void
.end method

.method protected onNotifyBytesRead()V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/aliyun/oss/event/RequestProgressInputStream;->getListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aliyun/oss/event/RequestProgressInputStream;->getUnnotifiedByteCount()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/aliyun/oss/event/ProgressPublisher;->publishRequestBytesTransferred(Lcom/aliyun/oss/event/ProgressListener;J)V

    return-void
.end method
