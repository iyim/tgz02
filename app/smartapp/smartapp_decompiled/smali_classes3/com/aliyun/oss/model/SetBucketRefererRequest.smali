.class public Lcom/aliyun/oss/model/SetBucketRefererRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetBucketRefererRequest.java"


# instance fields
.field private referer:Lcom/aliyun/oss/model/BucketReferer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/aliyun/oss/model/SetBucketRefererRequest;-><init>(Ljava/lang/String;Lcom/aliyun/oss/model/BucketReferer;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/aliyun/oss/model/BucketReferer;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/aliyun/oss/model/SetBucketRefererRequest;->referer:Lcom/aliyun/oss/model/BucketReferer;

    return-void
.end method


# virtual methods
.method public getReferer()Lcom/aliyun/oss/model/BucketReferer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketRefererRequest;->referer:Lcom/aliyun/oss/model/BucketReferer;

    return-object v0
.end method

.method public setReferer(Lcom/aliyun/oss/model/BucketReferer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketRefererRequest;->referer:Lcom/aliyun/oss/model/BucketReferer;

    return-void
.end method

.method public withReferer(Lcom/aliyun/oss/model/BucketReferer;)Lcom/aliyun/oss/model/SetBucketRefererRequest;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/SetBucketRefererRequest;->setReferer(Lcom/aliyun/oss/model/BucketReferer;)V

    return-object p0
.end method
