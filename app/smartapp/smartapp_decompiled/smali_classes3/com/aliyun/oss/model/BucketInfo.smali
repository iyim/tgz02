.class public Lcom/aliyun/oss/model/BucketInfo;
.super Lcom/aliyun/oss/model/GenericResult;
.source "BucketInfo.java"


# instance fields
.field private bucket:Lcom/aliyun/oss/model/Bucket;

.field private cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

.field private grants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/aliyun/oss/model/Grant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/BucketInfo;->grants:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getBucket()Lcom/aliyun/oss/model/Bucket;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketInfo;->bucket:Lcom/aliyun/oss/model/Bucket;

    return-object v0
.end method

.method public getCannedACL()Lcom/aliyun/oss/model/CannedAccessControlList;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketInfo;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

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

    .line 39
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketInfo;->grants:Ljava/util/Set;

    return-object v0
.end method

.method public grantPermission(Lcom/aliyun/oss/model/Grantee;Lcom/aliyun/oss/model/Permission;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketInfo;->grants:Ljava/util/Set;

    new-instance v1, Lcom/aliyun/oss/model/Grant;

    invoke-direct {v1, p1, p2}, Lcom/aliyun/oss/model/Grant;-><init>(Lcom/aliyun/oss/model/Grantee;Lcom/aliyun/oss/model/Permission;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setBucket(Lcom/aliyun/oss/model/Bucket;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketInfo;->bucket:Lcom/aliyun/oss/model/Bucket;

    return-void
.end method

.method public setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketInfo;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-void
.end method
