.class public Lcom/aliyun/oss/model/UploadPartCopyRequest;
.super Lcom/aliyun/oss/model/WebServiceRequest;
.source "UploadPartCopyRequest.java"


# instance fields
.field private beginIndex:Ljava/lang/Long;

.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private matchingETagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private md5Digest:Ljava/lang/String;

.field private modifiedSinceConstraint:Ljava/util/Date;

.field private nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partNumber:I

.field private partSize:Ljava/lang/Long;

.field private sourceBucketName:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private unmodifiedSinceConstraint:Ljava/util/Date;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->matchingETagConstraints:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->matchingETagConstraints:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 58
    invoke-virtual {p0, p3}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->setBucketName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p4}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->setKey(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->setSourceBucketName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->setSourceKey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->matchingETagConstraints:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->bucketName:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->key:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->sourceBucketName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->sourceKey:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->matchingETagConstraints:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 76
    iput-object p3, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->bucketName:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->key:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->sourceBucketName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->sourceKey:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->uploadId:Ljava/lang/String;

    .line 81
    iput p6, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->partNumber:I

    .line 82
    iput-object p7, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->beginIndex:Ljava/lang/Long;

    .line 83
    iput-object p8, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->partSize:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public clearMatchingETagConstraints()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearNonmatchingETagConstraints()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBeginIndex()Ljava/lang/Long;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->beginIndex:Ljava/lang/Long;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getMd5Digest()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->md5Digest:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getNonmatchingEtagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->partNumber:I

    return v0
.end method

.method public getPartSize()Ljava/lang/Long;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->partSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->sourceBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->sourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBeginIndex(Ljava/lang/Long;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->beginIndex:Ljava/lang/Long;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setMatchingETagConstraints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 226
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setMd5Digest(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->md5Digest:Ljava/lang/String;

    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setNonmatchingETagConstraints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 241
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->partNumber:I

    return-void
.end method

.method public setPartSize(Ljava/lang/Long;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->partSize:Ljava/lang/Long;

    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->sourceBucketName:Ljava/lang/String;

    return-void
.end method

.method public setSourceKey(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->sourceKey:Ljava/lang/String;

    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadPartCopyRequest;->uploadId:Ljava/lang/String;

    return-void
.end method
