.class public Lcom/aliyun/oss/model/SetBucketProcessRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetBucketProcessRequest.java"


# instance fields
.field private imageProcess:Lcom/aliyun/oss/model/ImageProcess;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aliyun/oss/model/ImageProcess;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/aliyun/oss/model/SetBucketProcessRequest;->imageProcess:Lcom/aliyun/oss/model/ImageProcess;

    return-void
.end method


# virtual methods
.method public getImageProcess()Lcom/aliyun/oss/model/ImageProcess;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketProcessRequest;->imageProcess:Lcom/aliyun/oss/model/ImageProcess;

    return-object v0
.end method

.method public setImageProcess(Lcom/aliyun/oss/model/ImageProcess;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketProcessRequest;->imageProcess:Lcom/aliyun/oss/model/ImageProcess;

    return-void
.end method
