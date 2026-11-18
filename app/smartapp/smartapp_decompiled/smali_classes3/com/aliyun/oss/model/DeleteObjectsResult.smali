.class public Lcom/aliyun/oss/model/DeleteObjectsResult;
.super Lcom/aliyun/oss/model/GenericResult;
.source "DeleteObjectsResult.java"


# instance fields
.field private final deletedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encodingType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeletedObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsResult;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public setDeletedObjects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsResult;->deletedObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/aliyun/oss/model/DeleteObjectsResult;->encodingType:Ljava/lang/String;

    return-void
.end method
