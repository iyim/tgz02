.class Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;
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
    name = "DownloadCheckPoint"
.end annotation


# static fields
.field private static final DOWNLOAD_MAGIC:Ljava/lang/String; = "92611BED-89E2-46B6-89E5-72F273D4B0A3"

.field private static final serialVersionUID:J = 0x40fad8fd251937c5L


# instance fields
.field public bucketName:Ljava/lang/String;

.field public downloadFile:Ljava/lang/String;

.field public downloadParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;",
            ">;"
        }
    .end annotation
.end field

.field public magic:Ljava/lang/String;

.field public md5:I

.field public objectKey:Ljava/lang/String;

.field public objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private assign(Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;)V
    .locals 1

    .line 143
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->magic:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->magic:Ljava/lang/String;

    .line 144
    iget v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->md5:I

    iput v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->md5:I

    .line 145
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadFile:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->bucketName:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->bucketName:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    .line 148
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    .line 149
    iget-object p1, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->md5:I

    .line 90
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 92
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V

    .line 94
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hashCode()I
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->bucketName:Ljava/lang/String;

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

    .line 134
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadFile:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->magic:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget-object v2, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isValid(Lcom/aliyun/oss/internal/OSSObjectOperation;)Z
    .locals 6

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->magic:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->magic:Ljava/lang/String;

    const-string v2, "92611BED-89E2-46B6-89E5-72F273D4B0A3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->md5:I

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    new-instance v0, Lcom/aliyun/oss/model/GenericRequest;

    iget-object v2, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->bucketName:Ljava/lang/String;

    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getSimplifiedObjectMeta(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    iget-wide v2, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->size:J

    invoke-virtual {p1}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->getSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    iget-object v0, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->lastModified:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->getLastModified()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    iget-object v0, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->digest:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->getETag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 126
    monitor-exit p0

    return p1

    .line 123
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 113
    :cond_3
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;

    .line 80
    invoke-direct {p0, v1}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->assign(Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    .line 82
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;

    iput-boolean p2, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->isCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
