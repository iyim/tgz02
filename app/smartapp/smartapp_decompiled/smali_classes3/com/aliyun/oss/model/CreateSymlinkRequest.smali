.class public Lcom/aliyun/oss/model/CreateSymlinkRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "CreateSymlinkRequest.java"


# instance fields
.field private metadata:Lcom/aliyun/oss/model/ObjectMetadata;

.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p3, p0, Lcom/aliyun/oss/model/CreateSymlinkRequest;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateSymlinkRequest;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getSymlink()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CreateSymlinkRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateSymlinkRequest;->target:Ljava/lang/String;

    return-object v0
.end method

.method public setMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateSymlinkRequest;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method

.method public setSymlink(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/CreateSymlinkRequest;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateSymlinkRequest;->target:Ljava/lang/String;

    return-void
.end method
