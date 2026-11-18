.class public Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;
.super Ljava/lang/Object;
.source "GeneratePresignedUrlRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private contentMD5:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private expiration:Ljava/util/Date;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field private method:Lcom/aliyun/oss/HttpMethod;

.field private process:Ljava/lang/String;

.field private queryParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

.field private userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    sget-object v0, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-direct {p0, p1, p2, v0}, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/HttpMethod;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/HttpMethod;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    invoke-direct {v0}, Lcom/aliyun/oss/model/ResponseHeaderOverrides;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->userMetadata:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->queryParam:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->headers:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->method:Lcom/aliyun/oss/HttpMethod;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->queryParam:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->userMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->contentMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/aliyun/oss/HttpMethod;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->method:Lcom/aliyun/oss/HttpMethod;

    return-object v0
.end method

.method public getProcess()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->process:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParameter()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->queryParam:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/aliyun/oss/model/ResponseHeaderOverrides;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public getUserMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->userMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->contentMD5:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 320
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->headers:Ljava/util/Map;

    return-void

    .line 318
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The argument \'queryParameter\' is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Lcom/aliyun/oss/HttpMethod;)V
    .locals 1

    .line 109
    sget-object v0, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only GET or PUT is supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->method:Lcom/aliyun/oss/HttpMethod;

    return-void
.end method

.method public setProcess(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->process:Ljava/lang/String;

    return-void
.end method

.method public setQueryParameter(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->queryParam:Ljava/util/Map;

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The argument \'queryParameter\' is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResponseHeaders(Lcom/aliyun/oss/model/ResponseHeaderOverrides;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    return-void
.end method

.method public setUserMetadata(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 243
    iput-object p1, p0, Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;->userMetadata:Ljava/util/Map;

    return-void

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The argument \'userMeta\' is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
