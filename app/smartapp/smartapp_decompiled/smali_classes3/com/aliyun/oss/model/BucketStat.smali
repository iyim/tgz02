.class public Lcom/aliyun/oss/model/BucketStat;
.super Lcom/aliyun/oss/model/GenericResult;
.source "BucketStat.java"


# instance fields
.field private multipartUploadCount:Ljava/lang/Long;

.field private objectCount:Ljava/lang/Long;

.field private storageSize:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketStat;->storageSize:Ljava/lang/Long;

    .line 30
    iput-object p2, p0, Lcom/aliyun/oss/model/BucketStat;->objectCount:Ljava/lang/Long;

    .line 31
    iput-object p3, p0, Lcom/aliyun/oss/model/BucketStat;->multipartUploadCount:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getMultipartUploadCount()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketStat;->multipartUploadCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getObjectCount()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketStat;->objectCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageSize()Ljava/lang/Long;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketStat;->storageSize:Ljava/lang/Long;

    return-object v0
.end method
