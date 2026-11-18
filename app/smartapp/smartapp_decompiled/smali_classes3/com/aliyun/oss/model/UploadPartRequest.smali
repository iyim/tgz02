.class public Lcom/aliyun/oss/model/UploadPartRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "UploadPartRequest.java"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private md5Digest:Ljava/lang/String;

.field private partNumber:I

.field private partSize:J

.field private uploadId:Ljava/lang/String;

.field private useChunkEncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partSize:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/aliyun/oss/model/UploadPartRequest;->useChunkEncoding:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    .line 35
    iput-wide p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partSize:J

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->useChunkEncoding:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/io/InputStream;J)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    .line 35
    iput-wide p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partSize:J

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->useChunkEncoding:Z

    .line 52
    iput-object p3, p0, Lcom/aliyun/oss/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partNumber:I

    .line 54
    iput-object p5, p0, Lcom/aliyun/oss/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    .line 55
    iput-wide p6, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partSize:J

    return-void
.end method


# virtual methods
.method public buildPartialStream()Lcom/aliyun/oss/common/comm/io/BoundedInputStream;
    .locals 4

    .line 175
    new-instance v0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    iget-object v1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    iget-wide v2, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partSize:J

    long-to-int v3, v2

    int-to-long v2, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMd5Digest()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partNumber:I

    return v0
.end method

.method public getPartSize()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partSize:J

    return-wide v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isUseChunkEncoding()Z
    .locals 5

    .line 163
    iget-boolean v0, p0, Lcom/aliyun/oss/model/UploadPartRequest;->useChunkEncoding:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setMd5Digest(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partNumber:I

    return-void
.end method

.method public setPartSize(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->partSize:J

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public setUseChunkEncoding(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/aliyun/oss/model/UploadPartRequest;->useChunkEncoding:Z

    return-void
.end method
