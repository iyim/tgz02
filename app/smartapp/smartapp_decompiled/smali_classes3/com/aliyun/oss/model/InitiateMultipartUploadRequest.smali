.class public Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "InitiateMultipartUploadRequest.java"


# instance fields
.field private objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/ObjectMetadata;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p3, p0, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public setObjectMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method
