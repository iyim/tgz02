.class Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;
.super Ljava/lang/Object;
.source "OSSUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSUploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PartResult"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private failed:Z

.field private length:J

.field private number:I

.field private offset:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->number:I

    .line 220
    iput-wide p2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->offset:J

    .line 221
    iput-wide p4, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->length:J

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 241
    iget-wide v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->length:J

    return-wide v0
.end method

.method public getNumber()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->number:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    .line 233
    iget-wide v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->offset:J

    return-wide v0
.end method

.method public isFailed()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->failed:Z

    return v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setFailed(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->failed:Z

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 245
    iput-wide p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->length:J

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->number:I

    return-void
.end method

.method public setOffset(J)V
    .locals 0

    .line 237
    iput-wide p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->offset:J

    return-void
.end method
