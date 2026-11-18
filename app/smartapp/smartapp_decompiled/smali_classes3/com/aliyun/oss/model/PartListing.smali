.class public Lcom/aliyun/oss/model/PartListing;
.super Lcom/aliyun/oss/model/GenericResult;
.source "PartListing.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isTruncated:Z

.field private key:Ljava/lang/String;

.field private maxParts:Ljava/lang/Integer;

.field private nextPartNumberMarker:Ljava/lang/Integer;

.field private partNumberMarker:Ljava/lang/Integer;

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/PartSummary;",
            ">;"
        }
    .end annotation
.end field

.field private storageClass:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/PartListing;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPart(Lcom/aliyun/oss/model/PartSummary;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxParts()Ljava/lang/Integer;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->maxParts:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextPartNumberMarker()Ljava/lang/Integer;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->nextPartNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPartNumberMarker()Ljava/lang/Integer;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->partNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/PartSummary;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/aliyun/oss/model/PartListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/aliyun/oss/model/PartListing;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/aliyun/oss/model/PartListing;->key:Ljava/lang/String;

    return-void
.end method

.method public setMaxParts(I)V
    .locals 0

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/PartListing;->maxParts:Ljava/lang/Integer;

    return-void
.end method

.method public setNextPartNumberMarker(I)V
    .locals 0

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/PartListing;->nextPartNumberMarker:Ljava/lang/Integer;

    return-void
.end method

.method public setPartNumberMarker(I)V
    .locals 0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/PartListing;->partNumberMarker:Ljava/lang/Integer;

    return-void
.end method

.method public setParts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/PartSummary;",
            ">;)V"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/aliyun/oss/model/PartListing;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/aliyun/oss/model/PartListing;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/aliyun/oss/model/PartListing;->isTruncated:Z

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/aliyun/oss/model/PartListing;->uploadId:Ljava/lang/String;

    return-void
.end method
