.class public Lcom/aliyun/oss/model/SetBucketLoggingRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetBucketLoggingRequest.java"


# instance fields
.field private targetBucket:Ljava/lang/String;

.field private targetPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getTargetBucket()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketLoggingRequest;->targetBucket:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPrefix()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketLoggingRequest;->targetPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public setTargetBucket(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketLoggingRequest;->targetBucket:Ljava/lang/String;

    return-void
.end method

.method public setTargetPrefix(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketLoggingRequest;->targetPrefix:Ljava/lang/String;

    return-void
.end method

.method public withTargetBucket(Ljava/lang/String;)Lcom/aliyun/oss/model/SetBucketLoggingRequest;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/SetBucketLoggingRequest;->setTargetBucket(Ljava/lang/String;)V

    return-object p0
.end method

.method public withTargetPrefix(Ljava/lang/String;)Lcom/aliyun/oss/model/SetBucketLoggingRequest;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/SetBucketLoggingRequest;->setTargetPrefix(Ljava/lang/String;)V

    return-object p0
.end method
