.class Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;
.super Ljava/lang/Object;
.source "OSSDownloadOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSDownloadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PartResult"
.end annotation


# instance fields
.field private end:J

.field private exception:Ljava/lang/Exception;

.field private failed:Z

.field private number:I

.field private start:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->number:I

    .line 219
    iput-wide p2, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->start:J

    .line 220
    iput-wide p4, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->end:J

    return-void
.end method


# virtual methods
.method public getEnd()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->end:J

    return-wide v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->number:I

    return v0
.end method

.method public getStart()J
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->start:J

    return-wide v0
.end method

.method public isFailed()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->failed:Z

    return v0
.end method

.method public setEnd(J)V
    .locals 0

    .line 236
    iput-wide p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->end:J

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setFailed(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->failed:Z

    return-void
.end method

.method public setStart(J)V
    .locals 0

    .line 228
    iput-wide p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->start:J

    return-void
.end method
