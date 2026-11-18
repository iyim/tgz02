.class public Lcom/aliyun/oss/model/CnameConfiguration;
.super Ljava/lang/Object;
.source "CnameConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;
    }
.end annotation


# instance fields
.field private domain:Ljava/lang/String;

.field private lastMofiedTime:Ljava/util/Date;

.field private purgeCdnCache:Ljava/lang/Boolean;

.field private status:Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;->Unknown:Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;

    iput-object v0, p0, Lcom/aliyun/oss/model/CnameConfiguration;->status:Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/oss/model/CnameConfiguration;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMofiedTime()Ljava/util/Date;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/aliyun/oss/model/CnameConfiguration;->lastMofiedTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPurgeCdnCache()Ljava/lang/Boolean;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/CnameConfiguration;->purgeCdnCache:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/oss/model/CnameConfiguration;->status:Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/model/CnameConfiguration;->domain:Ljava/lang/String;

    return-void
.end method

.method public setLastMofiedTime(Ljava/util/Date;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/aliyun/oss/model/CnameConfiguration;->lastMofiedTime:Ljava/util/Date;

    return-void
.end method

.method public setPurgeCdnCache(Ljava/lang/Boolean;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/oss/model/CnameConfiguration;->purgeCdnCache:Ljava/lang/Boolean;

    return-void
.end method

.method public setStatus(Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/aliyun/oss/model/CnameConfiguration;->status:Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CnameConfiguration [domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/CnameConfiguration;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/CnameConfiguration;->status:Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastMofiedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/CnameConfiguration;->lastMofiedTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
