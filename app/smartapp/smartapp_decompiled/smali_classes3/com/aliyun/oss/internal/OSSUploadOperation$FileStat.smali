.class Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;
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
    name = "FileStat"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10fbd90520041ac7L


# instance fields
.field public digest:Ljava/lang/String;

.field public lastModified:J

.field public size:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getFileStat(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;
    .locals 4

    .line 184
    new-instance v0, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;-><init>()V

    .line 185
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->size:J

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->lastModified:J

    return-object v0
.end method


# virtual methods
.method public hashCode()I
    .locals 7

    .line 177
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->digest:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 178
    iget-wide v2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->lastModified:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 179
    iget-wide v1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->size:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
