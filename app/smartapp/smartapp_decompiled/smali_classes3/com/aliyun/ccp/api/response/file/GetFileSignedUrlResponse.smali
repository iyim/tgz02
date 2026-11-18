.class public Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "GetFileSignedUrlResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;
    }
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bucket"
    .end annotation
.end field

.field private expiration:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "expiration"
    .end annotation
.end field

.field private headers:Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "headers"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "key"
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "method"
    .end annotation
.end field

.field private region:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "region"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->expiration:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->headers:Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->expiration:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->headers:Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse$Headers;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->key:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->method:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->region:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;->url:Ljava/lang/String;

    return-void
.end method
