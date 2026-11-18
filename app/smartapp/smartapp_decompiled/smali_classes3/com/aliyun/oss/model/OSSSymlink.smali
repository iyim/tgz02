.class public Lcom/aliyun/oss/model/OSSSymlink;
.super Lcom/aliyun/oss/model/GenericResult;
.source "OSSSymlink.java"


# instance fields
.field private metadata:Lcom/aliyun/oss/model/ObjectMetadata;

.field private symlink:Ljava/lang/String;

.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSSymlink;->symlink:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/aliyun/oss/model/OSSSymlink;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSSymlink;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getSymlink()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSSymlink;->symlink:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSSymlink;->target:Ljava/lang/String;

    return-object v0
.end method

.method public setMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSSymlink;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method

.method public setSymlink(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSSymlink;->symlink:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSSymlink;->target:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSSSymlink [symlink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/OSSSymlink;->getSymlink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/OSSSymlink;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
