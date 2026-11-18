.class public Lcom/aliyun/oss/model/ListMultipartUploadsRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "ListMultipartUploadsRequest.java"


# instance fields
.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private maxUploads:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;

.field private uploadIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUploads()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->keyMarker:Ljava/lang/String;

    return-void
.end method

.method public setMaxUploads(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->maxUploads:Ljava/lang/Integer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setUploadIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->uploadIdMarker:Ljava/lang/String;

    return-void
.end method
