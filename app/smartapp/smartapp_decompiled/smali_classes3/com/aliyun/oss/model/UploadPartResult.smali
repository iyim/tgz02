.class public Lcom/aliyun/oss/model/UploadPartResult;
.super Lcom/aliyun/oss/model/GenericResult;
.source "UploadPartResult.java"


# instance fields
.field private eTag:Ljava/lang/String;

.field private partNumber:I

.field private partSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartETag()Lcom/aliyun/oss/model/PartETag;
    .locals 7

    .line 87
    new-instance v6, Lcom/aliyun/oss/model/PartETag;

    iget v1, p0, Lcom/aliyun/oss/model/UploadPartResult;->partNumber:I

    iget-object v2, p0, Lcom/aliyun/oss/model/UploadPartResult;->eTag:Ljava/lang/String;

    iget-wide v3, p0, Lcom/aliyun/oss/model/UploadPartResult;->partSize:J

    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartResult;->getClientCRC()Ljava/lang/Long;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/model/PartETag;-><init>(ILjava/lang/String;JLjava/lang/Long;)V

    return-object v6
.end method

.method public getPartNumber()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/aliyun/oss/model/UploadPartResult;->partNumber:I

    return v0
.end method

.method public getPartSize()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/aliyun/oss/model/UploadPartResult;->partSize:J

    return-wide v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartResult;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/aliyun/oss/model/UploadPartResult;->partNumber:I

    return-void
.end method

.method public setPartSize(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/aliyun/oss/model/UploadPartResult;->partSize:J

    return-void
.end method
