.class public Lcom/aliyun/oss/model/SimplifiedObjectMeta;
.super Lcom/aliyun/oss/model/GenericResult;
.source "SimplifiedObjectMeta.java"


# instance fields
.field private eTag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->size:J

    return-wide v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectMeta [ETag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->eTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", LastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->getLastModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
