.class public Lcom/aliyun/oss/model/CreateBucketRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "CreateBucketRequest.java"


# instance fields
.field private cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

.field private locationConstraint:Ljava/lang/String;

.field private storageClass:Lcom/aliyun/oss/model/StorageClass;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->setLocationConstraint(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V

    return-void
.end method


# virtual methods
.method public getCannedACL()Lcom/aliyun/oss/model/CannedAccessControlList;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateBucketRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-object v0
.end method

.method public getLocationConstraint()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateBucketRequest;->locationConstraint:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Lcom/aliyun/oss/model/StorageClass;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateBucketRequest;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    return-object v0
.end method

.method public setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateBucketRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-void
.end method

.method public setLocationConstraint(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateBucketRequest;->locationConstraint:Ljava/lang/String;

    return-void
.end method

.method public setStorageClass(Lcom/aliyun/oss/model/StorageClass;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateBucketRequest;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    return-void
.end method

.method public withCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)Lcom/aliyun/oss/model/CreateBucketRequest;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V

    return-object p0
.end method

.method public withLocationConstraint(Ljava/lang/String;)Lcom/aliyun/oss/model/CreateBucketRequest;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->setLocationConstraint(Ljava/lang/String;)V

    return-object p0
.end method

.method public withStorageType(Lcom/aliyun/oss/model/StorageClass;)Lcom/aliyun/oss/model/CreateBucketRequest;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->setStorageClass(Lcom/aliyun/oss/model/StorageClass;)V

    return-object p0
.end method
