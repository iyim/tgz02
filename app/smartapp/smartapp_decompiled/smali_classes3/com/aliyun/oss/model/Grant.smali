.class public Lcom/aliyun/oss/model/Grant;
.super Ljava/lang/Object;
.source "Grant.java"


# instance fields
.field private grantee:Lcom/aliyun/oss/model/Grantee;

.field private permission:Lcom/aliyun/oss/model/Permission;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/model/Grantee;Lcom/aliyun/oss/model/Permission;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 42
    iput-object p1, p0, Lcom/aliyun/oss/model/Grant;->grantee:Lcom/aliyun/oss/model/Grantee;

    .line 43
    iput-object p2, p0, Lcom/aliyun/oss/model/Grant;->permission:Lcom/aliyun/oss/model/Permission;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 64
    instance-of v0, p1, Lcom/aliyun/oss/model/Grant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    check-cast p1, Lcom/aliyun/oss/model/Grant;

    .line 68
    invoke-virtual {p0}, Lcom/aliyun/oss/model/Grant;->getGrantee()Lcom/aliyun/oss/model/Grantee;

    move-result-object v0

    invoke-interface {v0}, Lcom/aliyun/oss/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aliyun/oss/model/Grant;->getGrantee()Lcom/aliyun/oss/model/Grantee;

    move-result-object v2

    invoke-interface {v2}, Lcom/aliyun/oss/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Grant;->getPermission()Lcom/aliyun/oss/model/Permission;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aliyun/oss/model/Grant;->getPermission()Lcom/aliyun/oss/model/Permission;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/model/Permission;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getGrantee()Lcom/aliyun/oss/model/Grantee;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/Grant;->grantee:Lcom/aliyun/oss/model/Grantee;

    return-object v0
.end method

.method public getPermission()Lcom/aliyun/oss/model/Permission;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/aliyun/oss/model/Grant;->permission:Lcom/aliyun/oss/model/Permission;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/oss/model/Grant;->grantee:Lcom/aliyun/oss/model/Grantee;

    invoke-interface {v1}, Lcom/aliyun/oss/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Grant;->getPermission()Lcom/aliyun/oss/model/Permission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/oss/model/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grant [grantee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Grant;->getGrantee()Lcom/aliyun/oss/model/Grantee;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/Grant;->getPermission()Lcom/aliyun/oss/model/Permission;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
