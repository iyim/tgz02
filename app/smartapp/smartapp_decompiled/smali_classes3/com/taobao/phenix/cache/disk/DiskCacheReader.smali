.class public Lcom/taobao/phenix/cache/disk/DiskCacheReader;
.super Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer;
.source "DiskCacheReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer<",
        "Lcom/taobao/phenix/entity/EncodedImage;",
        "Lcom/taobao/phenix/entity/EncodedImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, v0, v1, p1}, Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer;-><init>(IILcom/taobao/phenix/cache/disk/DiskCacheSupplier;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected conductResult(Lcom/taobao/rxm/consume/Consumer;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/entity/EncodedImage;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/phenix/request/ImageRequest;

    .line 22
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->isSkipCache()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/taobao/phenix/cache/disk/DiskCacheReader;->onConductStart(Lcom/taobao/rxm/consume/Consumer;)V

    .line 27
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v3

    .line 28
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getDiskCacheCatalog()I

    move-result v6

    const/4 v7, 0x1

    .line 31
    new-array v8, v7, [I

    .line 32
    invoke-virtual {v3}, Lcom/taobao/phenix/request/ImageUriInfo;->containsCdnSize()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getAllowedSizeLevel()I

    move-result v9

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    :goto_0
    aput v9, v8, v4

    .line 35
    invoke-virtual {v0, v2, v5, v6, v8}, Lcom/taobao/phenix/cache/disk/DiskCacheReader;->getCacheResult(Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;I[I)Lcom/taobao/phenix/entity/EncodedData;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 36
    invoke-virtual {v9}, Lcom/taobao/phenix/entity/EncodedData;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 38
    :goto_1
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    if-eqz v10, :cond_3

    .line 39
    aget v13, v8, v4

    if-eq v13, v12, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_4

    .line 41
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getProgressUpdateStep()I

    move-result v14

    if-lez v14, :cond_4

    const/high16 v14, 0x3f800000    # 1.0f

    .line 42
    invoke-interface {v1, v14}, Lcom/taobao/rxm/consume/Consumer;->onProgressUpdate(F)V

    .line 44
    :cond_4
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getStatistics()Lcom/taobao/phenix/request/ImageStatistics;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/taobao/phenix/request/ImageStatistics;->onDiskCacheLookedUp(Z)V

    const/4 v14, 0x5

    .line 45
    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v7

    aput-object v5, v14, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v14, v6

    const/4 v5, 0x4

    aget v15, v8, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v5

    const-string v5, "DiskCache"

    const-string v15, "read result=%B, isLast=%b, key=%s, catalog=%d, sizeLevel=%d"

    invoke-static {v5, v2, v15, v14}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v10, :cond_7

    .line 48
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getSecondaryUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 49
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getSecondaryUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/phenix/request/ImageUriInfo;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getSecondaryUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v9

    .line 51
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getSecondaryUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/phenix/request/ImageUriInfo;->getDiskCacheCatalog()I

    move-result v10

    aput v7, v8, v4

    .line 53
    invoke-virtual {v0, v2, v9, v10, v8}, Lcom/taobao/phenix/cache/disk/DiskCacheReader;->getCacheResult(Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;I[I)Lcom/taobao/phenix/entity/EncodedData;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 54
    invoke-virtual {v14}, Lcom/taobao/phenix/entity/EncodedData;->isAvailable()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_6

    .line 57
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->disableSecondary()V

    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    .line 59
    :goto_4
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getStatistics()Lcom/taobao/phenix/request/ImageStatistics;

    move-result-object v12

    invoke-virtual {v12, v15}, Lcom/taobao/phenix/request/ImageStatistics;->onDiskCacheLookedUp(Z)V

    .line 60
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v6, v4

    aput-object v9, v6, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v6, v10

    const-string v9, "secondary read result=%B, isLast=false, secondaryKey=%s, secondaryCatalog=%d"

    invoke-static {v5, v2, v9, v6}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v18, v11

    move/from16 v6, v16

    goto :goto_5

    :cond_7
    move-object v14, v9

    move v15, v10

    move-object/from16 v18, v11

    const/4 v6, 0x0

    .line 63
    :goto_5
    invoke-virtual {v0, v1, v13}, Lcom/taobao/phenix/cache/disk/DiskCacheReader;->onConductFinish(Lcom/taobao/rxm/consume/Consumer;Z)V

    if-eqz v15, :cond_9

    if-eqz v13, :cond_8

    .line 67
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->getStatistics()Lcom/taobao/phenix/request/ImageStatistics;

    move-result-object v9

    iget v10, v14, Lcom/taobao/phenix/entity/EncodedData;->length:I

    invoke-virtual {v9, v10}, Lcom/taobao/phenix/request/ImageStatistics;->setSize(I)V

    .line 69
    :cond_8
    new-instance v9, Lcom/taobao/phenix/entity/EncodedImage;

    aget v19, v8, v4

    const/16 v20, 0x1

    .line 74
    invoke-virtual {v3}, Lcom/taobao/phenix/request/ImageUriInfo;->getImageExtension()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v9

    move-object/from16 v17, v14

    invoke-direct/range {v16 .. v21}, Lcom/taobao/phenix/entity/EncodedImage;-><init>(Lcom/taobao/phenix/entity/EncodedData;Ljava/lang/String;IZLjava/lang/String;)V

    .line 76
    iput-boolean v6, v9, Lcom/taobao/phenix/entity/EncodedImage;->isSecondary:Z

    .line 77
    invoke-virtual {v3}, Lcom/taobao/phenix/request/ImageUriInfo;->getWidth()I

    move-result v4

    iput v4, v9, Lcom/taobao/phenix/entity/EncodedImage;->targetWidth:I

    .line 78
    invoke-virtual {v3}, Lcom/taobao/phenix/request/ImageUriInfo;->getHeight()I

    move-result v3

    iput v3, v9, Lcom/taobao/phenix/entity/EncodedImage;->targetHeight:I

    .line 79
    invoke-interface {v1, v9, v13}, Lcom/taobao/rxm/consume/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    :cond_9
    if-nez v13, :cond_a

    .line 83
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->isOnlyCache()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 84
    new-instance v2, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;

    invoke-direct {v2, v5}, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/taobao/rxm/consume/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return v7

    :cond_a
    return v13
.end method
