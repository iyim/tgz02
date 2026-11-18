.class public Lcom/taobao/android/PhenixAdapter;
.super Ljava/lang/Object;
.source "PhenixAdapter.java"

# interfaces
.implements Lcom/taobao/android/AliImageInterface;


# instance fields
.field private final mPhenix:Lcom/taobao/phenix/intf/Phenix;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/intf/Phenix;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    return-void
.end method

.method public static instance()Lcom/taobao/phenix/intf/Phenix;
    .locals 1

    .line 37
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applicationContext()Landroid/content/Context;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bitmapPoolBuilder()Lcom/taobao/phenix/builder/BitmapPoolBuilder;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->bitmapPoolBuilder()Lcom/taobao/phenix/builder/BitmapPoolBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->build()V

    return-void
.end method

.method public bytesPoolBuilder()Lcom/taobao/phenix/builder/BytesPoolBuilder;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->bytesPoolBuilder()Lcom/taobao/phenix/builder/BytesPoolBuilder;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Lcom/taobao/phenix/intf/PhenixTicket;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->cancel(Lcom/taobao/phenix/intf/PhenixTicket;)V

    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->clearAll()V

    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->clearCache(Ljava/lang/String;)V

    return-void
.end method

.method public clearCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/phenix/intf/Phenix;->clearCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clearMemory(Ljava/lang/String;Z)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/phenix/intf/Phenix;->clearMemory(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public diskCacheBuilder()Lcom/taobao/phenix/builder/DiskCacheBuilder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->diskCacheBuilder()Lcom/taobao/phenix/builder/DiskCacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fetchDiskCache(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/taobao/phenix/entity/ResponseData;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/phenix/intf/Phenix;->fetchDiskCache(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/taobao/phenix/entity/ResponseData;

    move-result-object p1

    return-object p1
.end method

.method public fetchMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->fetchMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public fileLoaderBuilder()Lcom/taobao/phenix/builder/FileLoaderBuilder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->fileLoaderBuilder()Lcom/taobao/phenix/builder/FileLoaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedDataInspector()Lcom/taobao/phenix/decode/EncodedDataInspector;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->getEncodedDataInspector()Lcom/taobao/phenix/decode/EncodedDataInspector;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedSchemeHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/phenix/loader/LocalSchemeHandler;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->getExtendedSchemeHandlers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCategorys(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/phenix/intf/ImageInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->hasCategorys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public httpLoaderBuilder()Lcom/taobao/phenix/builder/HttpLoaderBuilder;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->httpLoaderBuilder()Lcom/taobao/phenix/builder/HttpLoaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public isGenericTypeCheckEnabled()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->isGenericTypeCheckEnabled()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 2

    .line 142
    new-instance v0, Lcom/taobao/android/PhenixCreatorAdapter;

    iget-object v1, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v1, p1}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/PhenixCreatorAdapter;-><init>(Lcom/taobao/phenix/intf/PhenixCreator;)V

    return-object v0
.end method

.method public load(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 2

    .line 133
    new-instance v0, Lcom/taobao/android/PhenixCreatorAdapter;

    iget-object v1, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/PhenixCreatorAdapter;-><init>(Lcom/taobao/phenix/intf/PhenixCreator;)V

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 2

    .line 137
    new-instance v0, Lcom/taobao/android/PhenixCreatorAdapter;

    iget-object v1, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/PhenixCreatorAdapter;-><init>(Lcom/taobao/phenix/intf/PhenixCreator;)V

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 2

    .line 129
    new-instance v0, Lcom/taobao/android/PhenixCreatorAdapter;

    iget-object v1, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v1, p1, p2, p3}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/PhenixCreatorAdapter;-><init>(Lcom/taobao/phenix/intf/PhenixCreator;)V

    return-object v0
.end method

.method public memCacheBuilder()Lcom/taobao/phenix/builder/MemCacheBuilder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->memCacheBuilder()Lcom/taobao/phenix/builder/MemCacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public preload(Ljava/lang/String;Ljava/util/List;)Lcom/taobao/phenix/intf/PrefetchCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/phenix/intf/PrefetchCreator;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/phenix/intf/Phenix;->preload(Ljava/lang/String;Ljava/util/List;)Lcom/taobao/phenix/intf/PrefetchCreator;

    move-result-object p1

    return-object p1
.end method

.method public preloadWithLowImage(Z)Lcom/taobao/phenix/intf/Phenix;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->preloadWithLowImage(Z)Lcom/taobao/phenix/intf/Phenix;

    move-result-object p1

    return-object p1
.end method

.method public registerLocalSchemeHandler(Lcom/taobao/phenix/loader/LocalSchemeHandler;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->registerLocalSchemeHandler(Lcom/taobao/phenix/loader/LocalSchemeHandler;)Z

    move-result p1

    return p1
.end method

.method public scaleWithLargeImage(Z)Lcom/taobao/phenix/intf/Phenix;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->scaleWithLargeImage(Z)Lcom/taobao/phenix/intf/Phenix;

    move-result-object p1

    return-object p1
.end method

.method public schedulerBuilder()Lcom/taobao/phenix/builder/SchedulerBuilder;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->schedulerBuilder()Lcom/taobao/phenix/builder/SchedulerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setCacheKeyInspector(Lcom/taobao/phenix/cache/CacheKeyInspector;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->setCacheKeyInspector(Lcom/taobao/phenix/cache/CacheKeyInspector;)V

    return-void
.end method

.method public setEncodedDataInspector(Lcom/taobao/phenix/decode/EncodedDataInspector;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->setEncodedDataInspector(Lcom/taobao/phenix/decode/EncodedDataInspector;)V

    return-void
.end method

.method public setImageDecodingListener(Lcom/taobao/phenix/chain/ImageDecodingListener;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->setImageDecodingListener(Lcom/taobao/phenix/chain/ImageDecodingListener;)V

    return-void
.end method

.method public setImageFlowMonitor(Lcom/taobao/phenix/request/ImageFlowMonitor;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->setImageFlowMonitor(Lcom/taobao/phenix/request/ImageFlowMonitor;)V

    return-void
.end method

.method public setModuleStrategySupplier(Lcom/taobao/phenix/strategy/ModuleStrategySupplier;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->setModuleStrategySupplier(Lcom/taobao/phenix/strategy/ModuleStrategySupplier;)V

    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->shutdown()V

    return-void
.end method

.method public skipGenericTypeCheck(Z)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->skipGenericTypeCheck(Z)V

    return-void
.end method

.method public unregisterLocalSchemeHandler(Lcom/taobao/phenix/loader/LocalSchemeHandler;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->unregisterLocalSchemeHandler(Lcom/taobao/phenix/loader/LocalSchemeHandler;)Z

    move-result p1

    return p1
.end method

.method public with(Landroid/content/Context;)Lcom/taobao/phenix/intf/Phenix;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/taobao/android/PhenixAdapter;->mPhenix:Lcom/taobao/phenix/intf/Phenix;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->with(Landroid/content/Context;)Lcom/taobao/phenix/intf/Phenix;

    move-result-object p1

    return-object p1
.end method
