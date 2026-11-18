.class public Lcom/aliyun/oss/model/CompleteMultipartUploadResult;
.super Lcom/aliyun/oss/model/GenericResult;
.source "CompleteMultipartUploadResult.java"

# interfaces
.implements Lcom/aliyun/oss/model/CallbackResult;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private callbackResponseBody:Ljava/io/InputStream;

.field private eTag:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackResponseBody()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->callbackResponseBody:Ljava/io/InputStream;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCallbackResponseBody(Ljava/io/InputStream;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->callbackResponseBody:Ljava/io/InputStream;

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->key:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->location:Ljava/lang/String;

    return-void
.end method
