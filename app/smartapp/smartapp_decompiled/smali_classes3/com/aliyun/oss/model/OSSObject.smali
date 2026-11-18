.class public Lcom/aliyun/oss/model/OSSObject;
.super Lcom/aliyun/oss/model/GenericResult;
.source "OSSObject.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private metadata:Lcom/aliyun/oss/model/ObjectMetadata;

.field private objectContent:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 53
    new-instance v0, Lcom/aliyun/oss/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/aliyun/oss/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/OSSObject;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObject;->objectContent:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public forcedClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObject;->response:Lcom/aliyun/oss/common/comm/ResponseMessage;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->abort()V

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObject;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObject;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectContent()Ljava/io/InputStream;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObject;->objectContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aliyun/oss/model/OSSObject;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObject;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObject;->key:Ljava/lang/String;

    return-void
.end method

.method public setObjectContent(Ljava/io/InputStream;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObject;->objectContent:Ljava/io/InputStream;

    return-void
.end method

.method public setObjectMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/aliyun/oss/model/OSSObject;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSSObject [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/OSSObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/OSSObject;->bucketName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "<Unknown>"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
