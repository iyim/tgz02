.class public Lcom/taobao/phenix/request/ImageStatistics;
.super Ljava/lang/Object;
.source "ImageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/request/ImageStatistics$FromType;
    }
.end annotation


# static fields
.field public static final KEY_BITMAP_DECODE:Ljava/lang/String; = "decode"

.field public static final KEY_BITMAP_PROCESS:Ljava/lang/String; = "bitmapProcess"

.field public static final KEY_BITMAP_SCALE:Ljava/lang/String; = "scaleTime"

.field public static final KEY_DECODE_WAIT_SIZE:Ljava/lang/String; = "decodeWaitSize"

.field public static final KEY_MASTER_WAIT_SIZE:Ljava/lang/String; = "masterWaitSize"

.field public static final KEY_NETWORK_CONNECT:Ljava/lang/String; = "connect"

.field public static final KEY_NETWORK_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final KEY_NETWORK_WAIT_SIZE:Ljava/lang/String; = "networkWaitSize"

.field public static final KEY_READ_DISK_CACHE:Ljava/lang/String; = "cacheLookup"

.field public static final KEY_READ_LOCAL_FILE:Ljava/lang/String; = "localFile"

.field public static final KEY_READ_MEMORY_CACHE:Ljava/lang/String; = "memoryLookup"

.field public static final KEY_SCHEDULE_TIME:Ljava/lang/String; = "scheduleTime"

.field public static final KEY_TOTAL_TIME:Ljava/lang/String; = "totalTime"

.field public static final KEY_WAIT_FOR_MAIN:Ljava/lang/String; = "waitForMain"


# instance fields
.field private mBitmapPoolHitCount:I

.field private mBitmapPoolMissCount:I

.field private mDetailCost:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDiskCacheHitCount:I

.field private mDiskCacheMissCount:I

.field private mDiskCachePriority:I

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFormat:Lcom/taobao/pexode/mimetype/MimeType;

.field private mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field private mIsDuplicated:Z

.field private final mIsRetrying:Z

.field private mRequestStartTime:J

.field private mSize:I

.field private final mUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/request/ImageUriInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/taobao/phenix/request/ImageStatistics;-><init>(Lcom/taobao/phenix/request/ImageUriInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/phenix/request/ImageUriInfo;Z)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 100
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    .line 101
    iput-boolean p2, p0, Lcom/taobao/phenix/request/ImageStatistics;->mIsRetrying:Z

    return-void
.end method


# virtual methods
.method public duplicate(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mIsDuplicated:Z

    return-void
.end method

.method public fromType(Lcom/taobao/phenix/request/ImageStatistics$FromType;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    return-void
.end method

.method public getBitmapPoolHitCount()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mBitmapPoolHitCount:I

    return v0
.end method

.method public getBitmapPoolMissCount()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mBitmapPoolMissCount:I

    return v0
.end method

.method public getDetailCost()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDetailCost:Ljava/util/Map;

    return-object v0
.end method

.method public getDiskCacheHitCount()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDiskCacheHitCount:I

    return v0
.end method

.method public getDiskCacheMissCount()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDiskCacheMissCount:I

    return v0
.end method

.method public getDiskCachePriority()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDiskCachePriority:I

    return v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mExtras:Ljava/util/Map;

    return-object v0
.end method

.method public getFormat()Lcom/taobao/pexode/mimetype/MimeType;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mFormat:Lcom/taobao/pexode/mimetype/MimeType;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getImageExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/phenix/entity/EncodedImage;->getMimeTypeByExtension(Ljava/lang/String;)Lcom/taobao/pexode/mimetype/MimeType;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mFormat:Lcom/taobao/pexode/mimetype/MimeType;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mFormat:Lcom/taobao/pexode/mimetype/MimeType;

    return-object v0
.end method

.method public getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    return-object v0
.end method

.method public getRequestStartTime()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mRequestStartTime:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mSize:I

    return v0
.end method

.method public getUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mUriInfo:Lcom/taobao/phenix/request/ImageUriInfo;

    return-object v0
.end method

.method public isDuplicated()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mIsDuplicated:Z

    return v0
.end method

.method public isRetrying()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/taobao/phenix/request/ImageStatistics;->mIsRetrying:Z

    return v0
.end method

.method public onBitmapPoolLookedUp(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 162
    iget p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mBitmapPoolHitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mBitmapPoolHitCount:I

    goto :goto_0

    .line 164
    :cond_0
    iget p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mBitmapPoolMissCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mBitmapPoolMissCount:I

    :goto_0
    return-void
.end method

.method public onDiskCacheLookedUp(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 154
    iget p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDiskCacheHitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDiskCacheHitCount:I

    goto :goto_0

    .line 156
    :cond_0
    iget p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDiskCacheMissCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDiskCacheMissCount:I

    :goto_0
    return-void
.end method

.method public setCompressFormat(Lcom/taobao/pexode/mimetype/MimeType;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mFormat:Lcom/taobao/pexode/mimetype/MimeType;

    return-void
.end method

.method public setDetailCost(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDetailCost:Ljava/util/Map;

    return-void
.end method

.method public setDiskCachePriority(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDiskCachePriority:I

    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mExtras:Ljava/util/Map;

    return-void
.end method

.method public setRequestStartTime(J)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mRequestStartTime:J

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageStatistics(FromType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Duplicated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mIsDuplicated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Retrying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mIsRetrying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mFormat:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", DetailCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageStatistics;->mDetailCost:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
