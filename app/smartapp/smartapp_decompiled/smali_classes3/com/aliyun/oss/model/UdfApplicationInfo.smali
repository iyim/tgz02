.class public Lcom/aliyun/oss/model/UdfApplicationInfo;
.super Lcom/aliyun/oss/model/GenericResult;
.source "UdfApplicationInfo.java"


# instance fields
.field private creationDate:Ljava/util/Date;

.field private flavor:Lcom/aliyun/oss/model/InstanceFlavor;

.field private id:Ljava/lang/String;

.field private imageVersion:Ljava/lang/Integer;

.field private instanceNum:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;Lcom/aliyun/oss/model/InstanceFlavor;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->id:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->region:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->status:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->imageVersion:Ljava/lang/Integer;

    .line 37
    iput-object p6, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->instanceNum:Ljava/lang/Integer;

    .line 38
    iput-object p7, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->creationDate:Ljava/util/Date;

    .line 39
    iput-object p8, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->flavor:Lcom/aliyun/oss/model/InstanceFlavor;

    return-void
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFlavor()Lcom/aliyun/oss/model/InstanceFlavor;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->flavor:Lcom/aliyun/oss/model/InstanceFlavor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageVersion()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->imageVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInstanceNum()Ljava/lang/Integer;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->instanceNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setFlavor(Lcom/aliyun/oss/model/InstanceFlavor;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->flavor:Lcom/aliyun/oss/model/InstanceFlavor;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->imageVersion:Ljava/lang/Integer;

    return-void
.end method

.method public setInstanceNum(Ljava/lang/Integer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->instanceNum:Ljava/lang/Integer;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->region:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UdfApplicationInfo [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->imageVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->instanceNum:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->creationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flavor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/UdfApplicationInfo;->flavor:Lcom/aliyun/oss/model/InstanceFlavor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
