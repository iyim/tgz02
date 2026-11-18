.class public Lcom/aliyun/oss/model/AccessControlList;
.super Lcom/aliyun/oss/model/GenericResult;
.source "AccessControlList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ee930efaee733bL


# instance fields
.field private cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

.field private grants:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/aliyun/oss/model/Grant;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/aliyun/oss/model/Owner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/AccessControlList;->grants:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public getCannedACL()Lcom/aliyun/oss/model/CannedAccessControlList;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/aliyun/oss/model/AccessControlList;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-object v0
.end method

.method public getGrants()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/aliyun/oss/model/Grant;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/aliyun/oss/model/AccessControlList;->grants:Ljava/util/HashSet;

    return-object v0
.end method

.method public getOwner()Lcom/aliyun/oss/model/Owner;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/oss/model/AccessControlList;->owner:Lcom/aliyun/oss/model/Owner;

    return-object v0
.end method

.method public grantPermission(Lcom/aliyun/oss/model/Grantee;Lcom/aliyun/oss/model/Permission;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/aliyun/oss/model/AccessControlList;->grants:Ljava/util/HashSet;

    new-instance v1, Lcom/aliyun/oss/model/Grant;

    invoke-direct {v1, p1, p2}, Lcom/aliyun/oss/model/Grant;-><init>(Lcom/aliyun/oss/model/Grantee;Lcom/aliyun/oss/model/Permission;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public revokeAllPermissions(Lcom/aliyun/oss/model/Grantee;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/aliyun/oss/model/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/oss/model/Grant;

    .line 85
    invoke-virtual {v1}, Lcom/aliyun/oss/model/Grant;->getGrantee()Lcom/aliyun/oss/model/Grantee;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/aliyun/oss/model/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/aliyun/oss/model/AccessControlList;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-void
.end method

.method public setOwner(Lcom/aliyun/oss/model/Owner;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/aliyun/oss/model/AccessControlList;->owner:Lcom/aliyun/oss/model/Owner;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessControlList [owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/AccessControlList;->owner:Lcom/aliyun/oss/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ACL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/AccessControlList;->getCannedACL()Lcom/aliyun/oss/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
