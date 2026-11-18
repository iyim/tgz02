.class public Lcom/taobao/phenix/request/ImageUriInfo;
.super Ljava/lang/Object;
.source "ImageUriInfo.java"


# static fields
.field private static final LEVEL_MODEL_SIZES:[I


# instance fields
.field private mBaseCacheCatalog:I

.field private final mCacheKeyInspector:Lcom/taobao/phenix/cache/CacheKeyInspector;

.field private mDiskCacheKey:Ljava/lang/String;

.field private mMaxViewHeight:I

.field private mMaxViewWidth:I

.field private mMemoryCacheKey:Ljava/lang/String;

.field private mMemoryCacheKeySuffix:Ljava/lang/String;

.field private mRequestPath:Ljava/lang/String;

.field private final mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 13
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/phenix/request/ImageUriInfo;->LEVEL_MODEL_SIZES:[I

    return-void

    :array_0
    .array-data 4
        0xa
        0x1e
        0x3c
        0x64
        0xc8
        0x12c
        0x1f4
        0x320
        0x44c
        0x5dc
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mCacheKeyInspector:Lcom/taobao/phenix/cache/CacheKeyInspector;

    .line 35
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mRequestPath:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/taobao/phenix/request/SchemeInfo;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/taobao/phenix/request/SchemeInfo;-><init>(I)V

    iput-object p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/taobao/phenix/request/SchemeInfo;->parse(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    .line 40
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    invoke-virtual {p1}, Lcom/taobao/phenix/request/SchemeInfo;->isNetworkUri()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget-boolean p1, p1, Lcom/taobao/phenix/request/SchemeInfo;->isCdnSize:Z

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget p1, p1, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    iget-object p2, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget p2, p2, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    invoke-static {p1, p2}, Lcom/taobao/phenix/common/SizeUtil;->mergeWH(II)I

    move-result p1

    iput p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mBaseCacheCatalog:I

    :cond_1
    :goto_0
    return-void
.end method

.method private findBestLevel(I)I
    .locals 6

    .line 53
    sget-object v0, Lcom/taobao/phenix/request/ImageUriInfo;->LEVEL_MODEL_SIZES:[I

    array-length v0, v0

    .line 54
    div-int/lit8 v1, v0, 0x2

    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ltz v1, :cond_5

    if-ge v1, v0, :cond_5

    .line 58
    sget-object v5, Lcom/taobao/phenix/request/ImageUriInfo;->LEVEL_MODEL_SIZES:[I

    aget v5, v5, v1

    if-le p1, v5, :cond_2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-ne v2, v3, :cond_1

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ge p1, v5, :cond_5

    if-gez v2, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    if-ne v2, v4, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-gez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    if-lt v1, v0, :cond_7

    add-int/lit8 v1, v0, -0x1

    goto :goto_4

    :cond_7
    if-ne v2, v4, :cond_8

    .line 83
    sget-object v0, Lcom/taobao/phenix/request/ImageUriInfo;->LEVEL_MODEL_SIZES:[I

    add-int/lit8 v4, v1, -0x1

    aget v4, v0, v4

    aget v0, v0, v1

    add-int/2addr v4, v0

    div-int/2addr v4, v3

    if-gt p1, v4, :cond_8

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_8
    if-ne v2, v3, :cond_9

    .line 85
    sget-object v0, Lcom/taobao/phenix/request/ImageUriInfo;->LEVEL_MODEL_SIZES:[I

    aget v2, v0, v1

    add-int/lit8 v4, v1, 0x1

    aget v0, v0, v4

    add-int/2addr v2, v0

    div-int/2addr v2, v3

    if-le p1, v2, :cond_9

    move v1, v4

    .line 88
    :cond_9
    :goto_4
    sget-object p1, Lcom/taobao/phenix/request/ImageUriInfo;->LEVEL_MODEL_SIZES:[I

    aget p1, p1, v1

    return p1
.end method


# virtual methods
.method public addMemoryCacheKeySuffix(Ljava/lang/String;)V
    .locals 2

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKeySuffix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 96
    iput-object p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKeySuffix:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKeySuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKeySuffix:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public containsCdnSize()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget-boolean v0, v0, Lcom/taobao/phenix/request/SchemeInfo;->isCdnSize:Z

    return v0
.end method

.method public getCacheKeyInspector()Lcom/taobao/phenix/cache/CacheKeyInspector;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mCacheKeyInspector:Lcom/taobao/phenix/cache/CacheKeyInspector;

    return-object v0
.end method

.method public getDiskCacheCatalog()I
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mCacheKeyInspector:Lcom/taobao/phenix/cache/CacheKeyInspector;

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mRequestPath:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mBaseCacheCatalog:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/phenix/cache/CacheKeyInspector;->inspectDiskCacheCatalog(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 147
    :cond_0
    iget v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mBaseCacheCatalog:I

    return v0
.end method

.method public getDiskCacheKey()Ljava/lang/String;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mDiskCacheKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget-object v0, v0, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget-object v1, v1, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget-object v1, v1, Lcom/taobao/phenix/request/SchemeInfo;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mDiskCacheKey:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mCacheKeyInspector:Lcom/taobao/phenix/cache/CacheKeyInspector;

    if-eqz v0, :cond_1

    .line 137
    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mRequestPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mDiskCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/phenix/cache/CacheKeyInspector;->inspectDiskCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mDiskCacheKey:Ljava/lang/String;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mDiskCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget v0, v0, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    return v0
.end method

.method public getImageExtension()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget-object v0, v0, Lcom/taobao/phenix/request/SchemeInfo;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryCacheKey()Ljava/lang/String;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKey:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget-object v0, v0, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget-object v1, v1, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    :goto_0
    iget v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mBaseCacheCatalog:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMaxViewWidth:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMaxViewHeight:I

    if-eqz v1, :cond_2

    .line 111
    :cond_1
    iget v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMaxViewWidth:I

    invoke-direct {p0, v1}, Lcom/taobao/phenix/request/ImageUriInfo;->findBestLevel(I)I

    move-result v1

    iget v2, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMaxViewHeight:I

    invoke-direct {p0, v2}, Lcom/taobao/phenix/request/ImageUriInfo;->findBestLevel(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/phenix/common/SizeUtil;->mergeWH(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 113
    :cond_2
    iget v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mBaseCacheCatalog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKey:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mCacheKeyInspector:Lcom/taobao/phenix/cache/CacheKeyInspector;

    if-eqz v0, :cond_3

    .line 117
    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mRequestPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/phenix/cache/CacheKeyInspector;->inspectMemoryCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKey:Ljava/lang/String;

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKeySuffix:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKeySuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKey:Ljava/lang/String;

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMemoryCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mRequestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget v0, v0, Lcom/taobao/phenix/request/SchemeInfo;->quality:I

    return v0
.end method

.method public getSchemeInfo()Lcom/taobao/phenix/request/SchemeInfo;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    iget v0, v0, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    return v0
.end method

.method public isLocalUri()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/SchemeInfo;->isLocalUri()Z

    move-result v0

    return v0
.end method

.method setMaxViewSize(II)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMaxViewWidth:I

    .line 48
    iput p2, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mMaxViewHeight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mRequestPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nscheme info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/ImageUriInfo;->mSchemeInfo:Lcom/taobao/phenix/request/SchemeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nbase cache catalog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheCatalog()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmemory cache key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageUriInfo;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndisk cache key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndisk cache catalog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheCatalog()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
