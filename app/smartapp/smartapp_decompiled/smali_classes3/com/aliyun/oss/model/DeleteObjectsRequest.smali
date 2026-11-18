.class public Lcom/aliyun/oss/model/DeleteObjectsRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "DeleteObjectsRequest.java"


# static fields
.field public static final DELETE_OBJECTS_ONETIME_LIMIT:I = 0x3e8


# instance fields
.field private encodingType:Ljava/lang/String;

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private quiet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsRequest;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    return-object v0
.end method

.method public isQuiet()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/aliyun/oss/model/DeleteObjectsRequest;->quiet:Z

    return v0
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/aliyun/oss/model/DeleteObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeys(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_2

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->validateObjectKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The count of keys to delete exceed max limit 1000"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Keys to delete must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/aliyun/oss/model/DeleteObjectsRequest;->quiet:Z

    return-void
.end method

.method public withEncodingType(Ljava/lang/String;)Lcom/aliyun/oss/model/DeleteObjectsRequest;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/DeleteObjectsRequest;->setEncodingType(Ljava/lang/String;)V

    return-object p0
.end method

.method public withKeys(Ljava/util/List;)Lcom/aliyun/oss/model/DeleteObjectsRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/model/DeleteObjectsRequest;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/DeleteObjectsRequest;->setKeys(Ljava/util/List;)V

    return-object p0
.end method

.method public withQuiet(Z)Lcom/aliyun/oss/model/DeleteObjectsRequest;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/DeleteObjectsRequest;->setQuiet(Z)V

    return-object p0
.end method
