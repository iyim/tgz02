.class public Lcom/aliyun/oss/common/comm/NoRetryStrategy;
.super Lcom/aliyun/oss/common/comm/RetryStrategy;
.source "NoRetryStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/aliyun/oss/common/comm/RetryStrategy;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public shouldRetry(Ljava/lang/Exception;Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ResponseMessage;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
