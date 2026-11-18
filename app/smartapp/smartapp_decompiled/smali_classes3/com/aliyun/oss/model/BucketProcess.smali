.class public Lcom/aliyun/oss/model/BucketProcess;
.super Lcom/aliyun/oss/model/GenericResult;
.source "BucketProcess.java"


# instance fields
.field private imageProcess:Lcom/aliyun/oss/model/ImageProcess;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/model/ImageProcess;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketProcess;->imageProcess:Lcom/aliyun/oss/model/ImageProcess;

    return-void
.end method


# virtual methods
.method public getImageProcess()Lcom/aliyun/oss/model/ImageProcess;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketProcess;->imageProcess:Lcom/aliyun/oss/model/ImageProcess;

    return-object v0
.end method

.method public setImageProcess(Lcom/aliyun/oss/model/ImageProcess;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketProcess;->imageProcess:Lcom/aliyun/oss/model/ImageProcess;

    return-void
.end method
