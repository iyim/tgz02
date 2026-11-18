.class public Lcom/aliyun/oss/model/UdfInfo;
.super Lcom/aliyun/oss/model/GenericResult;
.source "UdfInfo.java"


# instance fields
.field private acl:Lcom/aliyun/oss/model/CannedUdfAcl;

.field private creationDate:Ljava/util/Date;

.field private desc:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private owner:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/CannedUdfAcl;Ljava/util/Date;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfInfo;->name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/aliyun/oss/model/UdfInfo;->owner:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/aliyun/oss/model/UdfInfo;->id:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/aliyun/oss/model/UdfInfo;->desc:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/aliyun/oss/model/UdfInfo;->acl:Lcom/aliyun/oss/model/CannedUdfAcl;

    .line 35
    iput-object p6, p0, Lcom/aliyun/oss/model/UdfInfo;->creationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getAcl()Lcom/aliyun/oss/model/CannedUdfAcl;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfInfo;->acl:Lcom/aliyun/oss/model/CannedUdfAcl;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfInfo;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfInfo;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public setAcl(Lcom/aliyun/oss/model/CannedUdfAcl;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfInfo;->acl:Lcom/aliyun/oss/model/CannedUdfAcl;

    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfInfo;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfInfo;->owner:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UdfInfo [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfInfo;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", acl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfInfo;->acl:Lcom/aliyun/oss/model/CannedUdfAcl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfInfo;->creationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
