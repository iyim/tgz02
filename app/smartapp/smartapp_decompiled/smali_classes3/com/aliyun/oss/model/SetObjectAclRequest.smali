.class public Lcom/aliyun/oss/model/SetObjectAclRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetObjectAclRequest.java"


# instance fields
.field private cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/aliyun/oss/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p3, p0, Lcom/aliyun/oss/model/SetObjectAclRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-void
.end method


# virtual methods
.method public getCannedACL()Lcom/aliyun/oss/model/CannedAccessControlList;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/oss/model/SetObjectAclRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-object v0
.end method

.method public setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/model/SetObjectAclRequest;->cannedACL:Lcom/aliyun/oss/model/CannedAccessControlList;

    return-void
.end method

.method public withCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)Lcom/aliyun/oss/model/SetObjectAclRequest;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/SetObjectAclRequest;->setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V

    return-object p0
.end method
