.class public Lcom/aliyun/oss/model/MultipartUploadListing;
.super Lcom/aliyun/oss/model/GenericResult;
.source "MultipartUploadListing.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private isTruncated:Z

.field private keyMarker:Ljava/lang/String;

.field private maxUploads:I

.field private multipartUploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field

.field private nextKeyMarker:Ljava/lang/String;

.field private nextUploadIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private uploadIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCommonPrefix(Ljava/lang/String;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMultipartUpload(Lcom/aliyun/oss/model/MultipartUpload;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUploads()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->maxUploads:I

    return v0
.end method

.method public getMultipartUploads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    return-object v0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUploadIdMarker()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCommonPrefixes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    return-void
.end method

.method public setMaxUploads(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->maxUploads:I

    return-void
.end method

.method public setMultipartUploads(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/MultipartUpload;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setNextKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    return-void
.end method

.method public setNextUploadIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->isTruncated:Z

    return-void
.end method

.method public setUploadIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/aliyun/oss/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    return-void
.end method
