.class public Lcom/aliyun/oss/model/ObjectAcl;
.super Lcom/aliyun/oss/model/GenericResult;
.source "ObjectAcl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ee930efaee733bL


# instance fields
.field private owner:Lcom/aliyun/oss/model/Owner;

.field private permission:Lcom/aliyun/oss/model/ObjectPermission;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getOwner()Lcom/aliyun/oss/model/Owner;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectAcl;->owner:Lcom/aliyun/oss/model/Owner;

    return-object v0
.end method

.method public getPermission()Lcom/aliyun/oss/model/ObjectPermission;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/aliyun/oss/model/ObjectAcl;->permission:Lcom/aliyun/oss/model/ObjectPermission;

    return-object v0
.end method

.method public setOwner(Lcom/aliyun/oss/model/Owner;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/aliyun/oss/model/ObjectAcl;->owner:Lcom/aliyun/oss/model/Owner;

    return-void
.end method

.method public setPermission(Lcom/aliyun/oss/model/ObjectPermission;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aliyun/oss/model/ObjectAcl;->permission:Lcom/aliyun/oss/model/ObjectPermission;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessControlList [owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/ObjectAcl;->owner:Lcom/aliyun/oss/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/ObjectAcl;->permission:Lcom/aliyun/oss/model/ObjectPermission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
