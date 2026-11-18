.class public Lcom/aliyun/oss/model/ObjectListing;
.super Lcom/aliyun/oss/model/GenericResult;
.source "ObjectListing.java"


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

.field private encodingType:Ljava/lang/String;

.field private isTruncated:Z

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private objectSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/OSSObjectSummary;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->objectSummaries:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCommonPrefix(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObjectSummary(Lcom/aliyun/oss/model/OSSObjectSummary;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->objectSummaries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearCommonPrefixes()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearObjectSummaries()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->objectSummaries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->bucketName:Ljava/lang/String;

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

    .line 68
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/aliyun/oss/model/ObjectListing;->maxKeys:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/OSSObjectSummary;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->objectSummaries:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/aliyun/oss/model/ObjectListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/aliyun/oss/model/ObjectListing;->bucketName:Ljava/lang/String;

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

    .line 76
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/aliyun/oss/model/ObjectListing;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/aliyun/oss/model/ObjectListing;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/aliyun/oss/model/ObjectListing;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/aliyun/oss/model/ObjectListing;->maxKeys:I

    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/aliyun/oss/model/ObjectListing;->nextMarker:Ljava/lang/String;

    return-void
.end method

.method public setObjectSummaries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/OSSObjectSummary;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->objectSummaries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectListing;->objectSummaries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/aliyun/oss/model/ObjectListing;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/aliyun/oss/model/ObjectListing;->isTruncated:Z

    return-void
.end method
