.class public abstract Lcom/aliyun/oss/common/comm/RetryStrategy;
.super Ljava/lang/Object;
.source "RetryStrategy.java"


# static fields
.field private static final DEFAULT_RETRY_PAUSE_SCALE:I = 0x12c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPauseDelay(I)J
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 34
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const/16 p1, 0x12c

    int-to-long v2, p1

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public abstract shouldRetry(Ljava/lang/Exception;Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ResponseMessage;I)Z
.end method
