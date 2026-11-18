.class public Lcom/aliyun/oss/internal/OSSRequestSigner;
.super Ljava/lang/Object;
.source "OSSRequestSigner.java"

# interfaces
.implements Lcom/aliyun/oss/common/auth/RequestSigner;


# instance fields
.field private creds:Lcom/aliyun/oss/common/auth/Credentials;

.field private httpMethod:Ljava/lang/String;

.field private resourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/common/auth/Credentials;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSRequestSigner;->httpMethod:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/aliyun/oss/internal/OSSRequestSigner;->resourcePath:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/aliyun/oss/internal/OSSRequestSigner;->creds:Lcom/aliyun/oss/common/auth/Credentials;

    return-void
.end method


# virtual methods
.method public sign(Lcom/aliyun/oss/common/comm/RequestMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSRequestSigner;->creds:Lcom/aliyun/oss/common/auth/Credentials;

    invoke-interface {v0}, Lcom/aliyun/oss/common/auth/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/aliyun/oss/internal/OSSRequestSigner;->creds:Lcom/aliyun/oss/common/auth/Credentials;

    invoke-interface {v1}, Lcom/aliyun/oss/common/auth/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/aliyun/oss/internal/OSSRequestSigner;->httpMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSRequestSigner;->resourcePath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4}, Lcom/aliyun/oss/internal/SignUtils;->buildCanonicalString(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/common/comm/RequestMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {}, Lcom/aliyun/oss/common/auth/ServiceSignature;->create()Lcom/aliyun/oss/common/auth/ServiceSignature;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/aliyun/oss/common/auth/ServiceSignature;->computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/aliyun/oss/internal/OSSUtils;->composeRequestAuthorization(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
