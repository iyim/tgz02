.class public Lcom/aliyun/oss/model/UdfImageInfo;
.super Ljava/lang/Object;
.source "UdfImageInfo.java"


# instance fields
.field private canonicalRegion:Ljava/lang/String;

.field private creationDate:Ljava/util/Date;

.field private desc:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->version:Ljava/lang/Integer;

    .line 32
    iput-object p2, p0, Lcom/aliyun/oss/model/UdfImageInfo;->status:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/aliyun/oss/model/UdfImageInfo;->desc:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/aliyun/oss/model/UdfImageInfo;->canonicalRegion:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/aliyun/oss/model/UdfImageInfo;->creationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCanonicalRegion()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfImageInfo;->canonicalRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfImageInfo;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfImageInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfImageInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfImageInfo;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCanonicalRegion(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->canonicalRegion:Ljava/lang/String;

    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->version:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UdfImageInfo [version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->version:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", canonicalRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->canonicalRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfImageInfo;->creationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
