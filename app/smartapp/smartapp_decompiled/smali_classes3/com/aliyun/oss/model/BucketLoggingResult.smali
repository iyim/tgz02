.class public Lcom/aliyun/oss/model/BucketLoggingResult;
.super Lcom/aliyun/oss/model/GenericResult;
.source "BucketLoggingResult.java"


# instance fields
.field private targetBucket:Ljava/lang/String;

.field private targetPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getTargetBucket()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketLoggingResult;->targetBucket:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPrefix()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketLoggingResult;->targetPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public setTargetBucket(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketLoggingResult;->targetBucket:Ljava/lang/String;

    return-void
.end method

.method public setTargetPrefix(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketLoggingResult;->targetPrefix:Ljava/lang/String;

    return-void
.end method
