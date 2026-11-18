.class public Lcom/aliyun/oss/model/BucketList;
.super Lcom/aliyun/oss/model/GenericResult;
.source "BucketList.java"


# instance fields
.field private buckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private isTruncated:Z

.field private marker:Ljava/lang/String;

.field private maxKeys:Ljava/lang/Integer;

.field private nextMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/BucketList;->buckets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearBucketList()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketList;->buckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Bucket;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketList;->buckets:Ljava/util/List;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketList;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketList;->maxKeys:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketList;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketList;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/aliyun/oss/model/BucketList;->isTruncated:Z

    return v0
.end method

.method public setBucketList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Bucket;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketList;->buckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketList;->buckets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketList;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(Ljava/lang/Integer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketList;->maxKeys:Ljava/lang/Integer;

    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketList;->nextMarker:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketList;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/aliyun/oss/model/BucketList;->isTruncated:Z

    return-void
.end method
