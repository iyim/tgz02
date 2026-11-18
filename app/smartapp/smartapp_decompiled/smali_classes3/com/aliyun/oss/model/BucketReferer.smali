.class public Lcom/aliyun/oss/model/BucketReferer;
.super Lcom/aliyun/oss/model/GenericResult;
.source "BucketReferer.java"


# instance fields
.field private allowEmptyReferer:Z

.field private refererList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/aliyun/oss/model/BucketReferer;->allowEmptyReferer:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/BucketReferer;->refererList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/aliyun/oss/model/BucketReferer;->allowEmptyReferer:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/BucketReferer;->refererList:Ljava/util/List;

    .line 42
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/BucketReferer;->setAllowEmptyReferer(Z)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/aliyun/oss/model/BucketReferer;->setRefererList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public allowEmpty()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcom/aliyun/oss/model/BucketReferer;->allowEmptyReferer:Z

    return v0
.end method

.method public clearRefererList()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketReferer;->refererList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getRefererList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketReferer;->refererList:Ljava/util/List;

    return-object v0
.end method

.method public isAllowEmptyReferer()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/aliyun/oss/model/BucketReferer;->allowEmptyReferer:Z

    return v0
.end method

.method public setAllowEmptyReferer(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/aliyun/oss/model/BucketReferer;->allowEmptyReferer:Z

    return-void
.end method

.method public setRefererList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketReferer;->refererList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketReferer;->refererList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
