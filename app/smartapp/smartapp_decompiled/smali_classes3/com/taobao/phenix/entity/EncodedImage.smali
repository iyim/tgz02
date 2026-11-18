.class public Lcom/taobao/phenix/entity/EncodedImage;
.super Lcom/taobao/phenix/entity/EncodedData;
.source "EncodedImage.java"


# static fields
.field public static final EXACT_SIZE_LEVEL:I = 0x1

.field public static final LARGE_SIZE_LEVEL:I = 0x4

.field public static final SMALL_SIZE_LEVEL:I = 0x2


# instance fields
.field public final extension:Ljava/lang/String;

.field public final fromDisk:Z

.field public final fromScale:Z

.field public isSecondary:Z

.field private mForcedNoCache:Z

.field private mMimeType:Lcom/taobao/pexode/mimetype/MimeType;

.field public final path:Ljava/lang/String;

.field public final sizeLevel:I

.field public targetHeight:I

.field public targetWidth:I


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/entity/EncodedData;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/taobao/phenix/entity/EncodedImage;-><init>(Lcom/taobao/phenix/entity/EncodedData;Ljava/lang/String;IZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/phenix/entity/EncodedData;Ljava/lang/String;IZLjava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lcom/taobao/phenix/entity/EncodedData;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1, v1}, Lcom/taobao/phenix/entity/EncodedData;-><init>(Z[BII)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/phenix/entity/EncodedData;-><init>(Lcom/taobao/phenix/entity/EncodedData;)V

    .line 35
    iput-object p2, p0, Lcom/taobao/phenix/entity/EncodedImage;->path:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/taobao/phenix/entity/EncodedImage;->sizeLevel:I

    .line 37
    iput-boolean p4, p0, Lcom/taobao/phenix/entity/EncodedImage;->fromDisk:Z

    .line 38
    iput-object p5, p0, Lcom/taobao/phenix/entity/EncodedImage;->extension:Ljava/lang/String;

    .line 39
    iput-boolean p6, p0, Lcom/taobao/phenix/entity/EncodedImage;->fromScale:Z

    return-void
.end method

.method public static getMimeTypeByExtension(Ljava/lang/String;)Lcom/taobao/pexode/mimetype/MimeType;
    .locals 3

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x2e

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 71
    :cond_0
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->ALL_EXTENSION_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/pexode/mimetype/MimeType;

    .line 72
    invoke-virtual {v1, p0}, Lcom/taobao/pexode/mimetype/MimeType;->isMyExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public cloneExcept(Lcom/taobao/phenix/entity/EncodedData;I)Lcom/taobao/phenix/entity/EncodedImage;
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->fromScale:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/phenix/entity/EncodedImage;->cloneExcept(Lcom/taobao/phenix/entity/EncodedData;IZ)Lcom/taobao/phenix/entity/EncodedImage;

    move-result-object p1

    return-object p1
.end method

.method public cloneExcept(Lcom/taobao/phenix/entity/EncodedData;IZ)Lcom/taobao/phenix/entity/EncodedImage;
    .locals 8

    .line 47
    new-instance v7, Lcom/taobao/phenix/entity/EncodedImage;

    iget-object v2, p0, Lcom/taobao/phenix/entity/EncodedImage;->path:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/taobao/phenix/entity/EncodedImage;->fromDisk:Z

    iget-object v5, p0, Lcom/taobao/phenix/entity/EncodedImage;->extension:Ljava/lang/String;

    move-object v0, v7

    move-object v1, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/taobao/phenix/entity/EncodedImage;-><init>(Lcom/taobao/phenix/entity/EncodedData;Ljava/lang/String;IZLjava/lang/String;Z)V

    .line 48
    iget p1, p0, Lcom/taobao/phenix/entity/EncodedImage;->targetWidth:I

    iput p1, v7, Lcom/taobao/phenix/entity/EncodedImage;->targetWidth:I

    .line 49
    iget p1, p0, Lcom/taobao/phenix/entity/EncodedImage;->targetHeight:I

    iput p1, v7, Lcom/taobao/phenix/entity/EncodedImage;->targetHeight:I

    .line 50
    iget-boolean p1, p0, Lcom/taobao/phenix/entity/EncodedImage;->isSecondary:Z

    iput-boolean p1, v7, Lcom/taobao/phenix/entity/EncodedImage;->isSecondary:Z

    return-object v7
.end method

.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/taobao/phenix/entity/EncodedImage;->release(Z)V

    .line 95
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public forceNoCache(Z)Lcom/taobao/phenix/entity/EncodedImage;
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/taobao/phenix/entity/EncodedImage;->mForcedNoCache:Z

    return-object p0
.end method

.method public getMimeType()Lcom/taobao/pexode/mimetype/MimeType;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->mMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->extension:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/phenix/entity/EncodedImage;->getMimeTypeByExtension(Ljava/lang/String;)Lcom/taobao/pexode/mimetype/MimeType;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->mMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->mMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    return-object v0
.end method

.method public notNeedCache()Z
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->mForcedNoCache:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->type:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->fromDisk:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->fromScale:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->completed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/phenix/entity/EncodedImage;->bytes:[B

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public setMimeType(Lcom/taobao/pexode/mimetype/MimeType;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/taobao/phenix/entity/EncodedImage;->mMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    return-void
.end method
