.class public Lcom/aliyun/oss/model/CopyObjectRequest;
.super Lcom/aliyun/oss/model/WebServiceRequest;
.source "CopyObjectRequest.java"


# instance fields
.field private destinationBucketName:Ljava/lang/String;

.field private destinationKey:Ljava/lang/String;

.field private matchingETagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedSinceConstraint:Ljava/util/Date;

.field private newObjectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

.field private nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverSideEncryption:Ljava/lang/String;

.field private sourceBucketName:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private unmodifiedSinceConstraint:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 82
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/CopyObjectRequest;->setSourceBucketName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/aliyun/oss/model/CopyObjectRequest;->setSourceKey(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p3}, Lcom/aliyun/oss/model/CopyObjectRequest;->setDestinationBucketName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p4}, Lcom/aliyun/oss/model/CopyObjectRequest;->setDestinationKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearMatchingETagConstraints()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearNonmatchingETagConstraints()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getDestinationBucketName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationKey()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

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

    .line 178
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getNewObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->newObjectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

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

    .line 202
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->serverSideEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    return-void
.end method

.method public setDestinationKey(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

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

    .line 187
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 188
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setNewObjectMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->newObjectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

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

    .line 211
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->serverSideEncryption:Ljava/lang/String;

    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    return-void
.end method

.method public setSourceKey(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/aliyun/oss/model/CopyObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method
