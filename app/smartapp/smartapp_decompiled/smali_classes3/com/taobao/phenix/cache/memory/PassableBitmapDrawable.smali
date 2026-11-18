.class public Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "PassableBitmapDrawable.java"


# instance fields
.field private mBitmapPadding:Landroid/graphics/Rect;

.field private mDiskCacheCatalog:I

.field private mDiskCacheKey:Ljava/lang/String;

.field private mDiskPriority:I

.field private mFromDisk:Z

.field private mFromMemory:Z

.field private mFromSecondary:Z

.field private mIsNinePatch:Z

.field private mMemoryCacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 32
    iput-object p3, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mBitmapPadding:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mIsNinePatch:Z

    .line 34
    invoke-direct {p0, p4, p5, p6, p7}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->init(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->init(Ljava/lang/String;Ljava/lang/String;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mMemoryCacheKey:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mDiskCacheKey:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mDiskCacheCatalog:I

    .line 46
    iput p4, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mDiskPriority:I

    return-void
.end method


# virtual methods
.method public convert2NinePatchDrawable()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 5

    .line 50
    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mIsNinePatch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mBitmapPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    invoke-direct {v2, v0, v3, v4, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method public fromDisk(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mFromDisk:Z

    return-void
.end method

.method public fromMemory(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mFromMemory:Z

    return-void
.end method

.method public fromSecondary(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mFromSecondary:Z

    return-void
.end method

.method public getDiskCacheCatalog()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mDiskCacheCatalog:I

    return v0
.end method

.method public getDiskCacheKey()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mDiskCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskPriority()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mDiskPriority:I

    return v0
.end method

.method public getMemoryCacheKey()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mMemoryCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public isFromDisk()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mFromDisk:Z

    return v0
.end method

.method public isFromMemory()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mFromMemory:Z

    return v0
.end method

.method public isFromSecondary()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mFromSecondary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;->mMemoryCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
