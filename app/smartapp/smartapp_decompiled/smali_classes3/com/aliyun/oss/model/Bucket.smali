.class public Lcom/aliyun/oss/model/Bucket;
.super Lcom/aliyun/oss/model/GenericResult;
.source "Bucket.java"


# instance fields
.field private creationDate:Ljava/util/Date;

.field private extranetEndpoint:Ljava/lang/String;

.field private intranetEndpoint:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private owner:Lcom/aliyun/oss/model/Owner;

.field private storageClass:Lcom/aliyun/oss/model/StorageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 55
    sget-object v0, Lcom/aliyun/oss/model/StorageClass;->Standard:Lcom/aliyun/oss/model/StorageClass;

    iput-object v0, p0, Lcom/aliyun/oss/model/Bucket;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 55
    sget-object v0, Lcom/aliyun/oss/model/StorageClass;->Standard:Lcom/aliyun/oss/model/StorageClass;

    iput-object v0, p0, Lcom/aliyun/oss/model/Bucket;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    .line 74
    iput-object p1, p0, Lcom/aliyun/oss/model/Bucket;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 55
    sget-object v0, Lcom/aliyun/oss/model/StorageClass;->Standard:Lcom/aliyun/oss/model/StorageClass;

    iput-object v0, p0, Lcom/aliyun/oss/model/Bucket;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    .line 78
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/Bucket;->setName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/aliyun/oss/model/Bucket;->setRequestId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/aliyun/oss/model/Bucket;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExtranetEndpoint()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/aliyun/oss/model/Bucket;->extranetEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getIntranetEndpoint()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/aliyun/oss/model/Bucket;->intranetEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/aliyun/oss/model/Bucket;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/aliyun/oss/model/Bucket;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/aliyun/oss/model/Owner;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/aliyun/oss/model/Bucket;->owner:Lcom/aliyun/oss/model/Owner;

    return-object v0
.end method

.method public getStorageClass()Lcom/aliyun/oss/model/StorageClass;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/aliyun/oss/model/Bucket;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    return-object v0
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/aliyun/oss/model/Bucket;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setExtranetEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/aliyun/oss/model/Bucket;->extranetEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setIntranetEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/aliyun/oss/model/Bucket;->intranetEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/aliyun/oss/model/Bucket;->location:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/aliyun/oss/model/Bucket;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Lcom/aliyun/oss/model/Owner;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/aliyun/oss/model/Bucket;->owner:Lcom/aliyun/oss/model/Owner;

    return-void
.end method

.method public setStorageClass(Lcom/aliyun/oss/model/StorageClass;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/aliyun/oss/model/Bucket;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/aliyun/oss/model/Bucket;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    const-string v1, "]"

    const-string v2, ", location="

    const-string v3, ", owner="

    const-string v4, ", creationDate="

    const-string v5, "OSSBucket [name="

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Bucket;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Bucket;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Bucket;->getOwner()Lcom/aliyun/oss/model/Owner;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Bucket;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Bucket;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Bucket;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Bucket;->getOwner()Lcom/aliyun/oss/model/Owner;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Bucket;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", storageClass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Bucket;->getStorageClass()Lcom/aliyun/oss/model/StorageClass;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
