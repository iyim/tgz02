.class public Lcom/aliyun/oss/model/ListPartsRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "ListPartsRequest.java"


# instance fields
.field private encodingType:Ljava/lang/String;

.field private maxParts:Ljava/lang/Integer;

.field private partNumberMarker:Ljava/lang/Integer;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p3, p0, Lcom/aliyun/oss/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/aliyun/oss/model/ListPartsRequest;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxParts()Ljava/lang/Integer;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aliyun/oss/model/ListPartsRequest;->maxParts:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPartNumberMarker()Ljava/lang/Integer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/aliyun/oss/model/ListPartsRequest;->partNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/aliyun/oss/model/ListPartsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setMaxParts(I)V
    .locals 0

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/ListPartsRequest;->maxParts:Ljava/lang/Integer;

    return-void
.end method

.method public setPartNumberMarker(Ljava/lang/Integer;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/aliyun/oss/model/ListPartsRequest;->partNumberMarker:Ljava/lang/Integer;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/oss/model/ListPartsRequest;->uploadId:Ljava/lang/String;

    return-void
.end method
