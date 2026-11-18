.class public Lcom/aliyun/oss/OSSClient;
.super Ljava/lang/Object;
.source "OSSClient.java"

# interfaces
.implements Lcom/aliyun/oss/OSS;


# instance fields
.field private bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

.field private corsOperation:Lcom/aliyun/oss/internal/CORSOperation;

.field private credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

.field private downloadOperation:Lcom/aliyun/oss/internal/OSSDownloadOperation;

.field private endpoint:Ljava/net/URI;

.field private liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

.field private multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

.field private objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

.field private serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

.field private udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

.field private uploadOperation:Lcom/aliyun/oss/internal/OSSUploadOperation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2, v0}, Lcom/aliyun/oss/OSSClient;-><init>(Ljava/lang/String;Lcom/aliyun/oss/common/auth/CredentialsProvider;Lcom/aliyun/oss/ClientConfiguration;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/aliyun/oss/common/auth/CredentialsProvider;Lcom/aliyun/oss/ClientConfiguration;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    if-nez p3, :cond_0

    .line 205
    new-instance p3, Lcom/aliyun/oss/ClientConfiguration;

    invoke-direct {p3}, Lcom/aliyun/oss/ClientConfiguration;-><init>()V

    .line 206
    :cond_0
    invoke-virtual {p3}, Lcom/aliyun/oss/ClientConfiguration;->isRequestTimeoutEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 207
    new-instance p2, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;

    invoke-direct {p2, p3}, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;-><init>(Lcom/aliyun/oss/ClientConfiguration;)V

    iput-object p2, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    goto :goto_0

    .line 209
    :cond_1
    new-instance p2, Lcom/aliyun/oss/common/comm/DefaultServiceClient;

    invoke-direct {p2, p3}, Lcom/aliyun/oss/common/comm/DefaultServiceClient;-><init>(Lcom/aliyun/oss/ClientConfiguration;)V

    iput-object p2, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    .line 211
    :goto_0
    invoke-direct {p0}, Lcom/aliyun/oss/OSSClient;->initOperations()V

    .line 212
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/OSSClient;->setEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    new-instance v0, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "http://oss.aliyuncs.com"

    invoke-direct {p0, p1, v0}, Lcom/aliyun/oss/OSSClient;-><init>(Ljava/lang/String;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 129
    new-instance v0, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;

    invoke-direct {v0, p2, p3}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/aliyun/oss/OSSClient;-><init>(Ljava/lang/String;Lcom/aliyun/oss/common/auth/CredentialsProvider;Lcom/aliyun/oss/ClientConfiguration;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/ClientConfiguration;)V
    .locals 1

    .line 164
    new-instance v0, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;

    invoke-direct {v0, p2, p3}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/aliyun/oss/OSSClient;-><init>(Ljava/lang/String;Lcom/aliyun/oss/common/auth/CredentialsProvider;Lcom/aliyun/oss/ClientConfiguration;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    new-instance v0, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;

    invoke-direct {v0, p2, p3, p4}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/aliyun/oss/OSSClient;-><init>(Ljava/lang/String;Lcom/aliyun/oss/common/auth/CredentialsProvider;Lcom/aliyun/oss/ClientConfiguration;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/ClientConfiguration;)V
    .locals 1

    .line 184
    new-instance v0, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;

    invoke-direct {v0, p2, p3, p4}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p5}, Lcom/aliyun/oss/OSSClient;-><init>(Ljava/lang/String;Lcom/aliyun/oss/common/auth/CredentialsProvider;Lcom/aliyun/oss/ClientConfiguration;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initOperations()V
    .locals 3

    .line 281
    new-instance v0, Lcom/aliyun/oss/internal/OSSBucketOperation;

    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    iget-object v2, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-direct {v0, v1, v2}, Lcom/aliyun/oss/internal/OSSBucketOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    iput-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    .line 282
    new-instance v0, Lcom/aliyun/oss/internal/OSSObjectOperation;

    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    iget-object v2, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-direct {v0, v1, v2}, Lcom/aliyun/oss/internal/OSSObjectOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    iput-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    .line 283
    new-instance v0, Lcom/aliyun/oss/internal/OSSMultipartOperation;

    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    iget-object v2, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-direct {v0, v1, v2}, Lcom/aliyun/oss/internal/OSSMultipartOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    iput-object v0, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    .line 284
    new-instance v0, Lcom/aliyun/oss/internal/CORSOperation;

    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    iget-object v2, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-direct {v0, v1, v2}, Lcom/aliyun/oss/internal/CORSOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    iput-object v0, p0, Lcom/aliyun/oss/OSSClient;->corsOperation:Lcom/aliyun/oss/internal/CORSOperation;

    .line 285
    new-instance v0, Lcom/aliyun/oss/internal/OSSUploadOperation;

    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSUploadOperation;-><init>(Lcom/aliyun/oss/internal/OSSMultipartOperation;)V

    iput-object v0, p0, Lcom/aliyun/oss/OSSClient;->uploadOperation:Lcom/aliyun/oss/internal/OSSUploadOperation;

    .line 286
    new-instance v0, Lcom/aliyun/oss/internal/OSSDownloadOperation;

    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSDownloadOperation;-><init>(Lcom/aliyun/oss/internal/OSSObjectOperation;)V

    iput-object v0, p0, Lcom/aliyun/oss/OSSClient;->downloadOperation:Lcom/aliyun/oss/internal/OSSDownloadOperation;

    .line 287
    new-instance v0, Lcom/aliyun/oss/internal/LiveChannelOperation;

    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    iget-object v2, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-direct {v0, v1, v2}, Lcom/aliyun/oss/internal/LiveChannelOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    iput-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    .line 288
    new-instance v0, Lcom/aliyun/oss/internal/OSSUdfOperation;

    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    iget-object v2, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-direct {v0, v1, v2}, Lcom/aliyun/oss/internal/OSSUdfOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    iput-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    return-void
.end method

.method private isIpOrLocalhost(Ljava/net/URI;)Z
    .locals 3

    .line 249
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 255
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :catch_0
    :cond_1
    return v0
.end method

.method private toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "://"

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {v1}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/aliyun/oss/ClientConfiguration;->getProtocol()Lcom/aliyun/oss/common/comm/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/oss/common/comm/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/aliyun/oss/model/AbortMultipartUploadRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->abortMultipartUpload(Lcom/aliyun/oss/model/AbortMultipartUploadRequest;)V

    return-void
.end method

.method public addBucketCname(Lcom/aliyun/oss/model/AddBucketCnameRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->addBucketCname(Lcom/aliyun/oss/model/AddBucketCnameRequest;)V

    return-void
.end method

.method public addBucketReplication(Lcom/aliyun/oss/model/AddBucketReplicationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->addBucketReplication(Lcom/aliyun/oss/model/AddBucketReplicationRequest;)V

    return-void
.end method

.method public appendObject(Lcom/aliyun/oss/model/AppendObjectRequest;)Lcom/aliyun/oss/model/AppendObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->appendObject(Lcom/aliyun/oss/model/AppendObjectRequest;)Lcom/aliyun/oss/model/AppendObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public calculatePostSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    :try_start_0
    const-string v0, "utf-8"

    .line 1023
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1024
    invoke-static {p1}, Lcom/aliyun/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object p1

    .line 1025
    invoke-static {}, Lcom/aliyun/oss/common/auth/ServiceSignature;->create()Lcom/aliyun/oss/common/auth/ServiceSignature;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-interface {v1}, Lcom/aliyun/oss/common/auth/CredentialsProvider;->getCredentials()Lcom/aliyun/oss/common/auth/Credentials;

    move-result-object v1

    invoke-interface {v1}, Lcom/aliyun/oss/common/auth/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/aliyun/oss/common/auth/ServiceSignature;->computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1028
    new-instance v0, Lcom/aliyun/oss/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public completeMultipartUpload(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->completeMultipartUpload(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public copyObject(Lcom/aliyun/oss/model/CopyObjectRequest;)Lcom/aliyun/oss/model/CopyObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->copyObject(Lcom/aliyun/oss/model/CopyObjectRequest;)Lcom/aliyun/oss/model/CopyObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/CopyObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 527
    new-instance v0, Lcom/aliyun/oss/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/aliyun/oss/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->copyObject(Lcom/aliyun/oss/model/CopyObjectRequest;)Lcom/aliyun/oss/model/CopyObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public createBucket(Lcom/aliyun/oss/model/CreateBucketRequest;)Lcom/aliyun/oss/model/Bucket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->createBucket(Lcom/aliyun/oss/model/CreateBucketRequest;)Lcom/aliyun/oss/model/Bucket;

    move-result-object p1

    return-object p1
.end method

.method public createBucket(Ljava/lang/String;)Lcom/aliyun/oss/model/Bucket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 311
    new-instance v0, Lcom/aliyun/oss/model/CreateBucketRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/CreateBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->createBucket(Lcom/aliyun/oss/model/CreateBucketRequest;)Lcom/aliyun/oss/model/Bucket;

    move-result-object p1

    return-object p1
.end method

.method public createLiveChannel(Lcom/aliyun/oss/model/CreateLiveChannelRequest;)Lcom/aliyun/oss/model/CreateLiveChannelResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->createLiveChannel(Lcom/aliyun/oss/model/CreateLiveChannelRequest;)Lcom/aliyun/oss/model/CreateLiveChannelResult;

    move-result-object p1

    return-object p1
.end method

.method public createSymlink(Lcom/aliyun/oss/model/CreateSymlinkRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1365
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->createSymlink(Lcom/aliyun/oss/model/CreateSymlinkRequest;)V

    return-void
.end method

.method public createSymlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1358
    new-instance v0, Lcom/aliyun/oss/model/CreateSymlinkRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/aliyun/oss/model/CreateSymlinkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->createSymlink(Lcom/aliyun/oss/model/CreateSymlinkRequest;)V

    return-void
.end method

.method public createUdf(Lcom/aliyun/oss/model/CreateUdfRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->createUdf(Lcom/aliyun/oss/model/CreateUdfRequest;)V

    return-void
.end method

.method public createUdfApplication(Lcom/aliyun/oss/model/CreateUdfApplicationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1430
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->createUdfApplication(Lcom/aliyun/oss/model/CreateUdfApplicationRequest;)V

    return-void
.end method

.method public deleteBucket(Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteBucket(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucket(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 323
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteBucket(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketCORSRules(Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->corsOperation:Lcom/aliyun/oss/internal/CORSOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/CORSOperation;->deleteBucketCORS(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketCORSRules(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 844
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteBucketCORSRules(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketCname(Lcom/aliyun/oss/model/DeleteBucketCnameRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteBucketCname(Lcom/aliyun/oss/model/DeleteBucketCnameRequest;)V

    return-void
.end method

.method public deleteBucketCname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1185
    new-instance v0, Lcom/aliyun/oss/model/DeleteBucketCnameRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/DeleteBucketCnameRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteBucketCname(Lcom/aliyun/oss/model/DeleteBucketCnameRequest;)V

    return-void
.end method

.method public deleteBucketImage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 909
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    new-instance v1, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v1}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteBucketImage(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketImage(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteBucketImage(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketLifecycle(Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1059
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteBucketLifecycle(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketLifecycle(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1053
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteBucketLifecycle(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketLogging(Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 886
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteBucketLogging(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketLogging(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 880
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteBucketLogging(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketReplication(Lcom/aliyun/oss/model/DeleteBucketReplicationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteBucketReplication(Lcom/aliyun/oss/model/DeleteBucketReplicationRequest;)V

    return-void
.end method

.method public deleteBucketReplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1126
    new-instance v0, Lcom/aliyun/oss/model/DeleteBucketReplicationRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/DeleteBucketReplicationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteBucketReplication(Lcom/aliyun/oss/model/DeleteBucketReplicationRequest;)V

    return-void
.end method

.method public deleteBucketTagging(Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteBucketTagging(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketTagging(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1096
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteBucketTagging(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketWebsite(Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteBucketWebsite(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteBucketWebsite(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 999
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteBucketWebsite(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteImageStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    new-instance v1, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v1}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteImageStyle(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteImageStyle(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aliyun/oss/internal/OSSBucketOperation;->deleteImageStyle(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteLiveChannel(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->deleteLiveChannel(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)V

    return-void
.end method

.method public deleteLiveChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1297
    new-instance v0, Lcom/aliyun/oss/model/LiveChannelGenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteLiveChannel(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)V

    return-void
.end method

.method public deleteObject(Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->deleteObject(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 594
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->deleteObject(Lcom/aliyun/oss/model/GenericRequest;)V

    return-void
.end method

.method public deleteObjects(Lcom/aliyun/oss/model/DeleteObjectsRequest;)Lcom/aliyun/oss/model/DeleteObjectsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->deleteObjects(Lcom/aliyun/oss/model/DeleteObjectsRequest;)Lcom/aliyun/oss/model/DeleteObjectsResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteUdf(Lcom/aliyun/oss/model/UdfGenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->deleteUdf(Lcom/aliyun/oss/model/UdfGenericRequest;)V

    return-void
.end method

.method public deleteUdfApplication(Lcom/aliyun/oss/model/UdfGenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->deleteUdfApplication(Lcom/aliyun/oss/model/UdfGenericRequest;)V

    return-void
.end method

.method public deleteUdfImage(Lcom/aliyun/oss/model/UdfGenericRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->deleteUdfImage(Lcom/aliyun/oss/model/UdfGenericRequest;)V

    return-void
.end method

.method public doesBucketExist(Lcom/aliyun/oss/model/GenericRequest;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->doesBucketExists(Lcom/aliyun/oss/model/GenericRequest;)Z

    move-result p1

    return p1
.end method

.method public doesBucketExist(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 412
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->doesBucketExist(Lcom/aliyun/oss/model/GenericRequest;)Z

    move-result p1

    return p1
.end method

.method public doesObjectExist(Lcom/aliyun/oss/model/GenericRequest;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doesObjectExist(Lcom/aliyun/oss/model/GenericRequest;)Z

    move-result p1

    return p1
.end method

.method public doesObjectExist(Lcom/aliyun/oss/model/HeadObjectRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/HeadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/HeadObjectRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->doesObjectExist(Lcom/aliyun/oss/model/GenericRequest;)Z

    move-result p1

    return p1
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 612
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->doesObjectExist(Lcom/aliyun/oss/model/GenericRequest;)Z

    move-result p1

    return p1
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/oss/OSSClient;->doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 620
    :cond_0
    iget-object p3, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {p3, p1, p2}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doesObjectExistWithRedirect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public downloadFile(Lcom/aliyun/oss/model/DownloadFileRequest;)Lcom/aliyun/oss/model/DownloadFileResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->downloadOperation:Lcom/aliyun/oss/internal/OSSDownloadOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->downloadFile(Lcom/aliyun/oss/model/DownloadFileRequest;)Lcom/aliyun/oss/model/DownloadFileResult;

    move-result-object p1

    return-object p1
.end method

.method public generatePostPolicy(Ljava/util/Date;Lcom/aliyun/oss/model/PolicyConditions;)Ljava/lang/String;
    .locals 4

    .line 1010
    invoke-static {p1}, Lcom/aliyun/oss/common/utils/DateUtil;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1011
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\"expiration\":\"%s\""

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1012
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PolicyConditions;->jsonize()Ljava/lang/String;

    move-result-object p2

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    .line 1015
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v0

    const-string p1, "{%s,%s}"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generatePresignedUrl(Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;)Ljava/net/URL;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "request"

    move-object/from16 v2, p1

    .line 693
    invoke-static {v2, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 705
    iget-object v3, v1, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-interface {v3}, Lcom/aliyun/oss/common/auth/CredentialsProvider;->getCredentials()Lcom/aliyun/oss/common/auth/Credentials;

    move-result-object v3

    .line 706
    invoke-interface {v3}, Lcom/aliyun/oss/common/auth/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-interface {v3}, Lcom/aliyun/oss/common/auth/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v5

    .line 708
    invoke-interface {v3}, Lcom/aliyun/oss/common/auth/Credentials;->useSecurityToken()Z

    move-result v6

    .line 709
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getMethod()Lcom/aliyun/oss/HttpMethod;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getMethod()Lcom/aliyun/oss/HttpMethod;

    move-result-object v7

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    .line 711
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 712
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 713
    iget-object v10, v1, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {v10}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object v10

    .line 714
    invoke-virtual {v10}, Lcom/aliyun/oss/ClientConfiguration;->isSLDEnabled()Z

    move-result v11

    invoke-static {v0, v9, v11}, Lcom/aliyun/oss/internal/OSSUtils;->determineResourcePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 716
    new-instance v12, Lcom/aliyun/oss/common/comm/RequestMessage;

    invoke-direct {v12}, Lcom/aliyun/oss/common/comm/RequestMessage;-><init>()V

    .line 717
    iget-object v13, v1, Lcom/aliyun/oss/OSSClient;->endpoint:Ljava/net/URI;

    invoke-static {v13, v0, v10}, Lcom/aliyun/oss/internal/OSSUtils;->determineFinalEndpoint(Ljava/net/URI;Ljava/lang/String;Lcom/aliyun/oss/ClientConfiguration;)Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/aliyun/oss/common/comm/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    .line 718
    invoke-virtual {v12, v7}, Lcom/aliyun/oss/common/comm/RequestMessage;->setMethod(Lcom/aliyun/oss/HttpMethod;)V

    .line 719
    invoke-virtual {v12, v11}, Lcom/aliyun/oss/common/comm/RequestMessage;->setResourcePath(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getHeaders()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/aliyun/oss/common/comm/RequestMessage;->setHeaders(Ljava/util/Map;)V

    const-string v10, "Date"

    .line 722
    invoke-virtual {v12, v10, v8}, Lcom/aliyun/oss/common/comm/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v10

    const-string v13, ""

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 724
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v10

    const-string v14, "Content-Type"

    invoke-virtual {v12, v14, v10}, Lcom/aliyun/oss/common/comm/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 727
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v10

    const-string v14, "Content-MD5"

    invoke-virtual {v12, v14, v10}, Lcom/aliyun/oss/common/comm/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getUserMetadata()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 730
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x-oss-meta-"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v1, v14}, Lcom/aliyun/oss/common/comm/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    goto :goto_1

    .line 733
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 734
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getResponseHeaders()Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/aliyun/oss/internal/OSSUtils;->populateResponseHeaderParameters(Ljava/util/Map;Lcom/aliyun/oss/model/ResponseHeaderOverrides;)V

    .line 735
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 736
    invoke-virtual {v12, v1}, Lcom/aliyun/oss/common/comm/RequestMessage;->setParameters(Ljava/util/Map;)V

    .line 739
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getQueryParameter()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getQueryParameter()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getQueryParameter()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 741
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v14, v10}, Lcom/aliyun/oss/common/comm/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 745
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getProcess()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getProcess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 746
    invoke-virtual/range {p1 .. p1}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->getProcess()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-oss-process"

    invoke-virtual {v12, v2, v1}, Lcom/aliyun/oss/common/comm/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v6, :cond_7

    .line 750
    invoke-interface {v3}, Lcom/aliyun/oss/common/auth/Credentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "security-token"

    invoke-virtual {v12, v2, v1}, Lcom/aliyun/oss/common/comm/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move-object v0, v13

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_9
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-virtual {v7}, Lcom/aliyun/oss/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v12, v8}, Lcom/aliyun/oss/internal/SignUtils;->buildCanonicalString(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/common/comm/RequestMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-static {}, Lcom/aliyun/oss/common/auth/ServiceSignature;->create()Lcom/aliyun/oss/common/auth/ServiceSignature;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/aliyun/oss/common/auth/ServiceSignature;->computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "Expires"

    .line 760
    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "OSSAccessKeyId"

    .line 761
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Signature"

    .line 762
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-virtual {v12}, Lcom/aliyun/oss/common/comm/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "utf-8"

    .line 765
    invoke-static {v1, v0}, Lcom/aliyun/oss/common/utils/HttpUtil;->paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-virtual {v12}, Lcom/aliyun/oss/common/comm/RequestMessage;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 777
    new-instance v1, Lcom/aliyun/oss/ClientException;

    invoke-direct {v1, v0}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 702
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v2, "MustSetExpiration"

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v2, "MustSetBucketName"

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 676
    sget-object v0, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/aliyun/oss/OSSClient;->generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/aliyun/oss/HttpMethod;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/aliyun/oss/HttpMethod;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 682
    new-instance v0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p3}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 684
    invoke-virtual {v0, p4}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->setMethod(Lcom/aliyun/oss/HttpMethod;)V

    .line 686
    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->generatePresignedUrl(Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public generateRtmpUri(Lcom/aliyun/oss/model/GenerateRtmpUriRequest;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->generateRtmpUri(Lcom/aliyun/oss/model/GenerateRtmpUriRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateRtmpUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1345
    new-instance v6, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v6}, Lcom/aliyun/oss/OSSClient;->generateRtmpUri(Lcom/aliyun/oss/model/GenerateRtmpUriRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateVodPlaylist(Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->generateVodPlaylist(Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;)V

    return-void
.end method

.method public generateVodPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1332
    new-instance v8, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object v0, p0

    invoke-virtual {p0, v8}, Lcom/aliyun/oss/OSSClient;->generateVodPlaylist(Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;)V

    return-void
.end method

.method public getBucketAcl(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/AccessControlList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketAcl(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public getBucketAcl(Ljava/lang/String;)Lcom/aliyun/oss/model/AccessControlList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 364
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketAcl(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/AccessControlList;

    move-result-object p1

    return-object p1
.end method

.method public getBucketCORSRules(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->corsOperation:Lcom/aliyun/oss/internal/CORSOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/CORSOperation;->getBucketCORSRules(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketCORSRules(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 832
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketCORSRules(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketCname(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/CnameConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketCname(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketCname(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/CnameConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1173
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketCname(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketImage(Ljava/lang/String;)Lcom/aliyun/oss/model/GetBucketImageResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    new-instance v1, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v1}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketImage(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/GetBucketImageResult;

    move-result-object p1

    return-object p1
.end method

.method public getBucketImage(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/GetBucketImageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketImage(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/GetBucketImageResult;

    move-result-object p1

    return-object p1
.end method

.method public getBucketInfo(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketInfo(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketInfo;

    move-result-object p1

    return-object p1
.end method

.method public getBucketInfo(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1197
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketInfo(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketInfo;

    move-result-object p1

    return-object p1
.end method

.method public getBucketLifecycle(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketLifecycle(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketLifecycle(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1041
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketLifecycle(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketLocation(Lcom/aliyun/oss/model/GenericRequest;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketLocation(Lcom/aliyun/oss/model/GenericRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBucketLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 400
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketLocation(Lcom/aliyun/oss/model/GenericRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBucketLogging(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketLoggingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketLogging(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketLoggingResult;

    move-result-object p1

    return-object p1
.end method

.method public getBucketLogging(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketLoggingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 868
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketLogging(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketLoggingResult;

    move-result-object p1

    return-object p1
.end method

.method public getBucketProcess(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketProcess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketProcess(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketProcess;

    move-result-object p1

    return-object p1
.end method

.method public getBucketProcess(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketProcess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 969
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketProcess(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketProcess;

    move-result-object p1

    return-object p1
.end method

.method public getBucketReferer(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketReferer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketReferer(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketReferer;

    move-result-object p1

    return-object p1
.end method

.method public getBucketReferer(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketReferer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketReferer(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketReferer;

    move-result-object p1

    return-object p1
.end method

.method public getBucketReplication(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/ReplicationRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketReplication(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketReplication(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/ReplicationRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1114
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketReplication(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketReplicationLocation(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketReplicationLocation(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketReplicationLocation(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1155
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketReplicationLocation(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBucketReplicationProgress(Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;)Lcom/aliyun/oss/model/BucketReplicationProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1149
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketReplicationProgress(Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;)Lcom/aliyun/oss/model/BucketReplicationProgress;

    move-result-object p1

    return-object p1
.end method

.method public getBucketReplicationProgress(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/BucketReplicationProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1141
    new-instance v0, Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketReplicationProgress(Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;)Lcom/aliyun/oss/model/BucketReplicationProgress;

    move-result-object p1

    return-object p1
.end method

.method public getBucketStat(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketStat(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketStat;

    move-result-object p1

    return-object p1
.end method

.method public getBucketStat(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1209
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketStat(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketStat;

    move-result-object p1

    return-object p1
.end method

.method public getBucketStorageCapacity(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/UserQos;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketStorageCapacity(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/UserQos;

    move-result-object p1

    return-object p1
.end method

.method public getBucketStorageCapacity(Ljava/lang/String;)Lcom/aliyun/oss/model/UserQos;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1233
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketStorageCapacity(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/UserQos;

    move-result-object p1

    return-object p1
.end method

.method public getBucketTagging(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/TagSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketTagging(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/TagSet;

    move-result-object p1

    return-object p1
.end method

.method public getBucketTagging(Ljava/lang/String;)Lcom/aliyun/oss/model/TagSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1084
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketTagging(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/TagSet;

    move-result-object p1

    return-object p1
.end method

.method public getBucketWebsite(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketWebsiteResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getBucketWebsite(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketWebsiteResult;

    move-result-object p1

    return-object p1
.end method

.method public getBucketWebsite(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketWebsiteResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 987
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getBucketWebsite(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketWebsiteResult;

    move-result-object p1

    return-object p1
.end method

.method public getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialsProvider()Lcom/aliyun/oss/common/auth/CredentialsProvider;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    return-object v0
.end method

.method public declared-synchronized getEndpoint()Ljava/net/URI;
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageStyle(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/GetImageStyleResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    new-instance v1, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v1}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getImageStyle(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/GetImageStyleResult;

    move-result-object p1

    return-object p1
.end method

.method public getImageStyle(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/GetImageStyleResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aliyun/oss/internal/OSSBucketOperation;->getImageStyle(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/GetImageStyleResult;

    move-result-object p1

    return-object p1
.end method

.method public getLiveChannelHistory(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/LiveChannelGenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1326
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getLiveChannelHistory(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLiveChannelHistory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1320
    new-instance v0, Lcom/aliyun/oss/model/LiveChannelGenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getLiveChannelHistory(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLiveChannelInfo(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1279
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getLiveChannelInfo(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLiveChannelInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/LiveChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1273
    new-instance v0, Lcom/aliyun/oss/model/LiveChannelGenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getLiveChannelInfo(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLiveChannelStat(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getLiveChannelStat(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelStat;

    move-result-object p1

    return-object p1
.end method

.method public getLiveChannelStat(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/LiveChannelStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1285
    new-instance v0, Lcom/aliyun/oss/model/LiveChannelGenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getLiveChannelStat(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelStat;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/OSSObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 539
    new-instance v0, Lcom/aliyun/oss/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/net/URL;Ljava/util/Map;)Lcom/aliyun/oss/model/OSSObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/model/OSSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 557
    new-instance v0, Lcom/aliyun/oss/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GetObjectRequest;-><init>(Ljava/net/URL;Ljava/util/Map;)V

    .line 558
    iget-object p1, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Lcom/aliyun/oss/model/GetObjectRequest;Ljava/io/File;)Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getObject(Lcom/aliyun/oss/model/GetObjectRequest;Ljava/io/File;)Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getObjectAcl(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectAcl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getObjectAcl(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectAcl;

    move-result-object p1

    return-object p1
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/ObjectAcl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 652
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getObjectAcl(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectAcl;

    move-result-object p1

    return-object p1
.end method

.method public getObjectMetadata(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getObjectMetadata(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 576
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getObjectMetadata(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getSimplifiedObjectMeta(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getSimplifiedObjectMeta(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;

    move-result-object p1

    return-object p1
.end method

.method public getSimplifiedObjectMeta(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 564
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getSimplifiedObjectMeta(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;

    move-result-object p1

    return-object p1
.end method

.method public getSymlink(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/OSSSymlink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1377
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getSymlink(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/OSSSymlink;

    move-result-object p1

    return-object p1
.end method

.method public getSymlink(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/OSSSymlink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1371
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->getSymlink(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/OSSSymlink;

    move-result-object p1

    return-object p1
.end method

.method public getUdfApplicationInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Lcom/aliyun/oss/model/UdfApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1436
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getUdfApplicationInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Lcom/aliyun/oss/model/UdfApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getUdfApplicationLog(Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;)Lcom/aliyun/oss/model/UdfApplicationLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1465
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getUdfApplicationLog(Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;)Lcom/aliyun/oss/model/UdfApplicationLog;

    move-result-object p1

    return-object p1
.end method

.method public getUdfImageInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/UdfGenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfImageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1418
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getUdfImageInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUdfInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Lcom/aliyun/oss/model/UdfInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1395
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getUdfInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Lcom/aliyun/oss/model/UdfInfo;

    move-result-object p1

    return-object p1
.end method

.method public initiateMultipartUpload(Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;)Lcom/aliyun/oss/model/InitiateMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->initiateMultipartUpload(Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;)Lcom/aliyun/oss/model/InitiateMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public isBucketExist(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/OSSClient;->doesBucketExist(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public listBuckets(Lcom/aliyun/oss/model/ListBucketsRequest;)Lcom/aliyun/oss/model/BucketList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->listBuckets(Lcom/aliyun/oss/model/ListBucketsRequest;)Lcom/aliyun/oss/model/BucketList;

    move-result-object p1

    return-object p1
.end method

.method public listBuckets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/aliyun/oss/model/BucketList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    new-instance v1, Lcom/aliyun/oss/model/ListBucketsRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/aliyun/oss/model/ListBucketsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->listBuckets(Lcom/aliyun/oss/model/ListBucketsRequest;)Lcom/aliyun/oss/model/BucketList;

    move-result-object p1

    return-object p1
.end method

.method public listBuckets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Bucket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSBucketOperation;->listBuckets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listImageStyle(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Style;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 951
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    new-instance v1, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v1}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->listImageStyle(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public listImageStyle(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Style;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 957
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/internal/OSSBucketOperation;->listImageStyle(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public listLiveChannels(Lcom/aliyun/oss/model/ListLiveChannelsRequest;)Lcom/aliyun/oss/model/LiveChannelListing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1314
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->listLiveChannels(Lcom/aliyun/oss/model/ListLiveChannelsRequest;)Lcom/aliyun/oss/model/LiveChannelListing;

    move-result-object p1

    return-object p1
.end method

.method public listLiveChannels(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1308
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->listLiveChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public listMultipartUploads(Lcom/aliyun/oss/model/ListMultipartUploadsRequest;)Lcom/aliyun/oss/model/MultipartUploadListing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->listMultipartUploads(Lcom/aliyun/oss/model/ListMultipartUploadsRequest;)Lcom/aliyun/oss/model/MultipartUploadListing;

    move-result-object p1

    return-object p1
.end method

.method public listObjects(Lcom/aliyun/oss/model/ListObjectsRequest;)Lcom/aliyun/oss/model/ObjectListing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->listObjects(Lcom/aliyun/oss/model/ListObjectsRequest;)Lcom/aliyun/oss/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public listObjects(Ljava/lang/String;)Lcom/aliyun/oss/model/ObjectListing;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 433
    new-instance v6, Lcom/aliyun/oss/model/ListObjectsRequest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v6}, Lcom/aliyun/oss/OSSClient;->listObjects(Lcom/aliyun/oss/model/ListObjectsRequest;)Lcom/aliyun/oss/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public listObjects(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/ObjectListing;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 439
    new-instance v6, Lcom/aliyun/oss/model/ListObjectsRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v6}, Lcom/aliyun/oss/OSSClient;->listObjects(Lcom/aliyun/oss/model/ListObjectsRequest;)Lcom/aliyun/oss/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public listParts(Lcom/aliyun/oss/model/ListPartsRequest;)Lcom/aliyun/oss/model/PartListing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->listParts(Lcom/aliyun/oss/model/ListPartsRequest;)Lcom/aliyun/oss/model/PartListing;

    move-result-object p1

    return-object p1
.end method

.method public listUdfApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->listUdfApplication()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listUdfs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1400
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->listUdfs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public optionsObject(Lcom/aliyun/oss/model/OptionsRequest;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->corsOperation:Lcom/aliyun/oss/internal/CORSOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/CORSOperation;->optionsObject(Lcom/aliyun/oss/model/OptionsRequest;)Lcom/aliyun/oss/common/comm/ResponseMessage;

    move-result-object p1

    return-object p1
.end method

.method public processObject(Lcom/aliyun/oss/model/ProcessObjectRequest;)Lcom/aliyun/oss/model/GenericResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->processObject(Lcom/aliyun/oss/model/ProcessObjectRequest;)Lcom/aliyun/oss/model/GenericResult;

    move-result-object p1

    return-object p1
.end method

.method public putBucketImage(Lcom/aliyun/oss/model/PutBucketImageRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->putBucketImage(Lcom/aliyun/oss/model/PutBucketImageRequest;)V

    return-void
.end method

.method public putImageStyle(Lcom/aliyun/oss/model/PutImageStyleRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->putImageStyle(Lcom/aliyun/oss/model/PutImageStyleRequest;)V

    return-void
.end method

.method public putObject(Lcom/aliyun/oss/model/PutObjectRequest;)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->putObject(Lcom/aliyun/oss/model/PutObjectRequest;)Lcom/aliyun/oss/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/aliyun/oss/OSSClient;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/aliyun/oss/model/ObjectMetadata;)Lcom/aliyun/oss/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/aliyun/oss/model/ObjectMetadata;)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 463
    new-instance v0, Lcom/aliyun/oss/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/aliyun/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/aliyun/oss/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->putObject(Lcom/aliyun/oss/model/PutObjectRequest;)Lcom/aliyun/oss/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/aliyun/oss/OSSClient;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/aliyun/oss/model/ObjectMetadata;)Lcom/aliyun/oss/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/aliyun/oss/model/ObjectMetadata;)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/aliyun/oss/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/aliyun/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/aliyun/oss/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->putObject(Lcom/aliyun/oss/model/PutObjectRequest;)Lcom/aliyun/oss/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/net/URL;Ljava/io/InputStream;JLjava/util/Map;)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 514
    invoke-virtual/range {v0 .. v6}, Lcom/aliyun/oss/OSSClient;->putObject(Ljava/net/URL;Ljava/io/InputStream;JLjava/util/Map;Z)Lcom/aliyun/oss/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/net/URL;Ljava/io/InputStream;JLjava/util/Map;Z)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/aliyun/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/aliyun/oss/internal/OSSObjectOperation;->putObject(Ljava/net/URL;Ljava/io/InputStream;JLjava/util/Map;Z)Lcom/aliyun/oss/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/aliyun/oss/OSSClient;->putObject(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Z)Lcom/aliyun/oss/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Z)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/aliyun/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 490
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-static {v1}, Lcom/aliyun/oss/common/utils/IOUtils;->checkFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 495
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    move v9, p4

    .line 497
    :try_start_1
    invoke-virtual/range {v3 .. v9}, Lcom/aliyun/oss/OSSClient;->putObject(Ljava/net/URL;Ljava/io/InputStream;JLjava/util/Map;Z)Lcom/aliyun/oss/model/PutObjectResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, p2

    goto :goto_0

    .line 492
    :cond_0
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal file path: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 499
    :goto_0
    :try_start_4
    new-instance p2, Lcom/aliyun/oss/ClientException;

    invoke-direct {p2, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    if-eqz v0, :cond_1

    .line 503
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 505
    :catch_3
    :cond_1
    throw p1
.end method

.method public resizeUdfApplication(Lcom/aliyun/oss/model/ResizeUdfApplicationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1459
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->resizeUdfApplication(Lcom/aliyun/oss/model/ResizeUdfApplicationRequest;)V

    return-void
.end method

.method public restoreObject(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/RestoreObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->restoreObject(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/RestoreObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public restoreObject(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/RestoreObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 664
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->restoreObject(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/RestoreObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public setBucketAcl(Lcom/aliyun/oss/model/SetBucketAclRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->setBucketAcl(Lcom/aliyun/oss/model/SetBucketAclRequest;)V

    return-void
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/aliyun/oss/model/SetBucketAclRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/SetBucketAclRequest;-><init>(Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->setBucketAcl(Lcom/aliyun/oss/model/SetBucketAclRequest;)V

    return-void
.end method

.method public setBucketCORS(Lcom/aliyun/oss/model/SetBucketCORSRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->corsOperation:Lcom/aliyun/oss/internal/CORSOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/CORSOperation;->setBucketCORS(Lcom/aliyun/oss/model/SetBucketCORSRequest;)V

    return-void
.end method

.method public setBucketLifecycle(Lcom/aliyun/oss/model/SetBucketLifecycleRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->setBucketLifecycle(Lcom/aliyun/oss/model/SetBucketLifecycleRequest;)V

    return-void
.end method

.method public setBucketLogging(Lcom/aliyun/oss/model/SetBucketLoggingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->setBucketLogging(Lcom/aliyun/oss/model/SetBucketLoggingRequest;)V

    return-void
.end method

.method public setBucketProcess(Lcom/aliyun/oss/model/SetBucketProcessRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 963
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->setBucketProcess(Lcom/aliyun/oss/model/SetBucketProcessRequest;)V

    return-void
.end method

.method public setBucketReferer(Lcom/aliyun/oss/model/SetBucketRefererRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->setBucketReferer(Lcom/aliyun/oss/model/SetBucketRefererRequest;)V

    return-void
.end method

.method public setBucketReferer(Ljava/lang/String;Lcom/aliyun/oss/model/BucketReferer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 376
    new-instance v0, Lcom/aliyun/oss/model/SetBucketRefererRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/SetBucketRefererRequest;-><init>(Ljava/lang/String;Lcom/aliyun/oss/model/BucketReferer;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->setBucketReferer(Lcom/aliyun/oss/model/SetBucketRefererRequest;)V

    return-void
.end method

.method public setBucketStorageCapacity(Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1227
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->setBucketStorageCapacity(Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;)V

    return-void
.end method

.method public setBucketStorageCapacity(Ljava/lang/String;Lcom/aliyun/oss/model/UserQos;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1221
    new-instance v0, Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;->withUserQos(Lcom/aliyun/oss/model/UserQos;)Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/OSSClient;->setBucketStorageCapacity(Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;)V

    return-void
.end method

.method public setBucketTagging(Lcom/aliyun/oss/model/SetBucketTaggingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->setBucketTagging(Lcom/aliyun/oss/model/SetBucketTaggingRequest;)V

    return-void
.end method

.method public setBucketTagging(Ljava/lang/String;Lcom/aliyun/oss/model/TagSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1072
    new-instance v0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/SetBucketTaggingRequest;-><init>(Ljava/lang/String;Lcom/aliyun/oss/model/TagSet;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->setBucketTagging(Lcom/aliyun/oss/model/SetBucketTaggingRequest;)V

    return-void
.end method

.method public setBucketTagging(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1065
    new-instance v0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/SetBucketTaggingRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->setBucketTagging(Lcom/aliyun/oss/model/SetBucketTaggingRequest;)V

    return-void
.end method

.method public setBucketWebsite(Lcom/aliyun/oss/model/SetBucketWebsiteRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->setBucketWebsite(Lcom/aliyun/oss/model/SetBucketWebsiteRequest;)V

    return-void
.end method

.method public declared-synchronized setEndpoint(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 228
    :try_start_0
    invoke-direct {p0, p1}, Lcom/aliyun/oss/OSSClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 229
    iput-object p1, p0, Lcom/aliyun/oss/OSSClient;->endpoint:Ljava/net/URI;

    .line 231
    invoke-direct {p0, p1}, Lcom/aliyun/oss/OSSClient;->isIpOrLocalhost(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/ClientConfiguration;->setSLDEnabled(Z)Lcom/aliyun/oss/ClientConfiguration;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->bucketOperation:Lcom/aliyun/oss/internal/OSSBucketOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSBucketOperation;->setEndpoint(Ljava/net/URI;)V

    .line 236
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->setEndpoint(Ljava/net/URI;)V

    .line 237
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->setEndpoint(Ljava/net/URI;)V

    .line 238
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->corsOperation:Lcom/aliyun/oss/internal/CORSOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/CORSOperation;->setEndpoint(Ljava/net/URI;)V

    .line 239
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->setEndpoint(Ljava/net/URI;)V

    .line 240
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->setEndpoint(Ljava/net/URI;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLiveChannelStatus(Lcom/aliyun/oss/model/SetLiveChannelRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1267
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->liveChannelOperation:Lcom/aliyun/oss/internal/LiveChannelOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->setLiveChannelStatus(Lcom/aliyun/oss/model/SetLiveChannelRequest;)V

    return-void
.end method

.method public setLiveChannelStatus(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1261
    new-instance v0, Lcom/aliyun/oss/model/SetLiveChannelRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/aliyun/oss/model/SetLiveChannelRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->setLiveChannelStatus(Lcom/aliyun/oss/model/SetLiveChannelRequest;)V

    return-void
.end method

.method public setObjectAcl(Lcom/aliyun/oss/model/SetObjectAclRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->setObjectAcl(Lcom/aliyun/oss/model/SetObjectAclRequest;)V

    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 640
    new-instance v0, Lcom/aliyun/oss/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/aliyun/oss/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/OSSClient;->setObjectAcl(Lcom/aliyun/oss/model/SetObjectAclRequest;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1471
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->serviceClient:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ServiceClient;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "shutdown throw exception: "

    .line 1473
    invoke-static {v1, v0}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public switchCredentials(Lcom/aliyun/oss/common/auth/Credentials;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-interface {v0, p1}, Lcom/aliyun/oss/common/auth/CredentialsProvider;->setCredentials(Lcom/aliyun/oss/common/auth/Credentials;)V

    return-void

    .line 294
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "creds should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public upgradeUdfApplication(Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->upgradeUdfApplication(Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;)V

    return-void
.end method

.method public uploadFile(Lcom/aliyun/oss/model/UploadFileRequest;)Lcom/aliyun/oss/model/UploadFileResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->uploadOperation:Lcom/aliyun/oss/internal/OSSUploadOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUploadOperation;->uploadFile(Lcom/aliyun/oss/model/UploadFileRequest;)Lcom/aliyun/oss/model/UploadFileResult;

    move-result-object p1

    return-object p1
.end method

.method public uploadPart(Lcom/aliyun/oss/model/UploadPartRequest;)Lcom/aliyun/oss/model/UploadPartResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->uploadPart(Lcom/aliyun/oss/model/UploadPartRequest;)Lcom/aliyun/oss/model/UploadPartResult;

    move-result-object p1

    return-object p1
.end method

.method public uploadPartCopy(Lcom/aliyun/oss/model/UploadPartCopyRequest;)Lcom/aliyun/oss/model/UploadPartCopyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->uploadPartCopy(Lcom/aliyun/oss/model/UploadPartCopyRequest;)Lcom/aliyun/oss/model/UploadPartCopyResult;

    move-result-object p1

    return-object p1
.end method

.method public uploadUdfImage(Lcom/aliyun/oss/model/UploadUdfImageRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Lcom/aliyun/oss/OSSClient;->udfOperation:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->uploadUdfImage(Lcom/aliyun/oss/model/UploadUdfImageRequest;)V

    return-void
.end method
