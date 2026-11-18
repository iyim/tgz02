.class public Lcom/aliyun/oss/model/AbortMultipartUploadRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "AbortMultipartUploadRequest.java"


# instance fields
.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-object p3, p0, Lcom/aliyun/oss/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/aliyun/oss/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aliyun/oss/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-void
.end method
