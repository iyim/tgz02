.class public Lcom/aliyun/oss/model/UploadPartCopyResult;
.super Lcom/aliyun/oss/model/GenericResult;
.source "UploadPartCopyResult.java"


# instance fields
.field private eTag:Ljava/lang/String;

.field private partNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartETag()Lcom/aliyun/oss/model/PartETag;
    .locals 3

    .line 78
    new-instance v0, Lcom/aliyun/oss/model/PartETag;

    iget v1, p0, Lcom/aliyun/oss/model/UploadPartCopyResult;->partNumber:I

    iget-object v2, p0, Lcom/aliyun/oss/model/UploadPartCopyResult;->eTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aliyun/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/aliyun/oss/model/UploadPartCopyResult;->partNumber:I

    return v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyResult;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/aliyun/oss/model/UploadPartCopyResult;->partNumber:I

    return-void
.end method
