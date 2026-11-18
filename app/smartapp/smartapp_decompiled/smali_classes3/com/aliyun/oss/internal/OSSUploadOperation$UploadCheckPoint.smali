.class Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;
.super Ljava/lang/Object;
.source "OSSUploadOperation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSUploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadCheckPoint"
.end annotation


# static fields
.field private static final UPLOAD_MAGIC:Ljava/lang/String; = "FE8BB4EA-B593-4FAC-AD7A-2459A36E2E62"

.field private static final serialVersionUID:J = 0x4b4921f5d31f649cL


# instance fields
.field public key:Ljava/lang/String;

.field public magic:Ljava/lang/String;

.field public md5:I

.field public partETags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aliyun/oss/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field public uploadFile:Ljava/lang/String;

.field public uploadFileStat:Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

.field public uploadID:Ljava/lang/String;

.field public uploadParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private assign(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;)V
    .locals 1

    .line 149
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->magic:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->magic:Ljava/lang/String;

    .line 150
    iget v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->md5:I

    iput v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->md5:I

    .line 151
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFileStat:Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFileStat:Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

    .line 153
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->key:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadID:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadID:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    .line 156
    iget-object p1, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->partETags:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->partETags:Ljava/util/ArrayList;

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

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->md5:I

    .line 89
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 91
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V

    .line 93
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hashCode()I
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->key:Ljava/lang/String;

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

    .line 139
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->magic:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->partETags:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFileStat:Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadID:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-object v2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isValid(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->magic:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->magic:Ljava/lang/String;

    const-string v2, "FE8BB4EA-B593-4FAC-AD7A-2459A36E2E62"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->md5:I

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 120
    monitor-exit p0

    return v1

    .line 125
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFileStat:Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

    iget-wide v2, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->size:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFileStat:Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

    iget-wide v2, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->lastModified:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 131
    monitor-exit p0

    return p1

    .line 128
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 114
    :cond_4
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

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;

    .line 79
    invoke-direct {p0, v1}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->assign(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;)V

    .line 80
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    .line 81
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(ILcom/aliyun/oss/model/PartETag;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->partETags:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object p2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;

    iput-boolean p3, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->isCompleted:Z
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
