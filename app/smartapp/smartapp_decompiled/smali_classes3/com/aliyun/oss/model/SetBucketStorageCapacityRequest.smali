.class public Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetBucketStorageCapacityRequest.java"


# instance fields
.field private userQos:Lcom/aliyun/oss/model/UserQos;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getUserQos()Lcom/aliyun/oss/model/UserQos;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;->userQos:Lcom/aliyun/oss/model/UserQos;

    return-object v0
.end method

.method public setUserQos(Lcom/aliyun/oss/model/UserQos;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;->userQos:Lcom/aliyun/oss/model/UserQos;

    return-void
.end method

.method public withUserQos(Lcom/aliyun/oss/model/UserQos;)Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;->setUserQos(Lcom/aliyun/oss/model/UserQos;)V

    return-object p0
.end method
