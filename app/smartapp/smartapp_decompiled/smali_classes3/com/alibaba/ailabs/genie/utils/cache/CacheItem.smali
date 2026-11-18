.class public Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;
.super Ljava/lang/Object;
.source "CacheItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createTime:J

.field private deleteTime:J

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private updateTime:J

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;JJJ)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->key:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->value:Ljava/lang/Object;

    .line 16
    iput-wide p3, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->createTime:J

    .line 17
    iput-wide p5, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->updateTime:J

    .line 18
    iput-wide p7, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->deleteTime:J

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->createTime:J

    return-wide v0
.end method

.method public getDeleteTime()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->deleteTime:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->updateTime:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->createTime:J

    return-void
.end method

.method public setDeleteTime(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->deleteTime:J

    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->key:Ljava/lang/Object;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->updateTime:J

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->value:Ljava/lang/Object;

    return-void
.end method
