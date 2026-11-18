.class Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;
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
    name = "UploadPart"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5ce1d454674741a7L


# instance fields
.field public isCompleted:Z

.field public number:I

.field public offset:J

.field public size:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public hashCode()I
    .locals 7

    .line 203
    iget-boolean v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->isCompleted:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 204
    iget v2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->number:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 205
    iget-wide v2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->offset:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 206
    iget-wide v1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->size:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
