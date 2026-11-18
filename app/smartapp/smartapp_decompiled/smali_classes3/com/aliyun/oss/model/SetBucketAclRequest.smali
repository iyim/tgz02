.class public Lcom/aliyun/oss/model/SetBucketAclRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetBucketAclRequest.java"


# instance fields
.field private cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/aliyun/oss/model/SetBucketAclRequest;-><init>(Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/aliyun/oss/model/SetBucketAclRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-void
.end method


# virtual methods
.method public getCannedACL()Lcom/aliyun/oss/model/CannedAccessControlList;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketAclRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-object v0
.end method

.method public setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketAclRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-void
.end method

.method public withCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)Lcom/aliyun/oss/model/SetBucketAclRequest;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/SetBucketAclRequest;->setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V

    return-object p0
.end method
