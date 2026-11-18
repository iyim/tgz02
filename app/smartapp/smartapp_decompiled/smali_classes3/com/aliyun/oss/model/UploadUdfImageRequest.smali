.class public Lcom/aliyun/oss/model/UploadUdfImageRequest;
.super Lcom/aliyun/oss/model/UdfGenericRequest;
.source "UploadUdfImageRequest.java"


# instance fields
.field private udfImage:Ljava/io/InputStream;

.field private udfImageDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/aliyun/oss/model/UploadUdfImageRequest;->udfImage:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/aliyun/oss/model/UploadUdfImageRequest;->udfImageDesc:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/aliyun/oss/model/UploadUdfImageRequest;->udfImage:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getUdfImage()Ljava/io/InputStream;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadUdfImageRequest;->udfImage:Ljava/io/InputStream;

    return-object v0
.end method

.method public getUdfImageDesc()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/oss/model/UploadUdfImageRequest;->udfImageDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setUdfImage(Ljava/io/InputStream;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadUdfImageRequest;->udfImage:Ljava/io/InputStream;

    return-void
.end method

.method public setUdfImageDesc(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/aliyun/oss/model/UploadUdfImageRequest;->udfImageDesc:Ljava/lang/String;

    return-void
.end method
