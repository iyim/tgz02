.class Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;
.super Ljava/lang/Object;
.source "OSSDownloadOperation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSDownloadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectStat"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x28043b3a650616efL


# instance fields
.field public digest:Ljava/lang/String;

.field public lastModified:Ljava/util/Date;

.field public size:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getFileStat(Lcom/aliyun/oss/internal/OSSObjectOperation;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;
    .locals 2

    .line 178
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getSimplifiedObjectMeta(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;

    move-result-object p0

    .line 181
    new-instance p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    invoke-direct {p1}, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->getSize()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->size:J

    .line 183
    invoke-virtual {p0}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->getLastModified()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->lastModified:Ljava/util/Date;

    .line 184
    invoke-virtual {p0}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->getETag()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->digest:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public hashCode()I
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->digest:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 171
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->lastModified:Ljava/util/Date;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget-wide v1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->size:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
