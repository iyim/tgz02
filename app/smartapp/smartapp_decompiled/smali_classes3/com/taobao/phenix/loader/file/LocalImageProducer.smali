.class public Lcom/taobao/phenix/loader/file/LocalImageProducer;
.super Lcom/taobao/rxm/produce/BaseChainProducer;
.source "LocalImageProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/rxm/produce/BaseChainProducer<",
        "Lcom/taobao/phenix/entity/EncodedImage;",
        "Lcom/taobao/phenix/entity/EncodedImage;",
        "Lcom/taobao/phenix/request/ImageRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCAL_TYPE:I = 0x1

.field private static final NETWORK_TYPE:I = 0x0

.field private static final SECONDARY_LOCAL_TYPE:I = 0x2


# instance fields
.field private final mFileLoader:Lcom/taobao/phenix/loader/file/FileLoader;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/loader/file/FileLoader;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/taobao/rxm/produce/BaseChainProducer;-><init>(II)V

    .line 25
    iput-object p1, p0, Lcom/taobao/phenix/loader/file/LocalImageProducer;->mFileLoader:Lcom/taobao/phenix/loader/file/FileLoader;

    return-void
.end method

.method private readLocalData(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/request/SchemeInfo;Ljava/lang/String;)Lcom/taobao/phenix/entity/EncodedData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/entity/EncodedImage;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;Z",
            "Lcom/taobao/phenix/request/SchemeInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/taobao/phenix/entity/EncodedData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageRequest;

    .line 30
    iget-object v1, p0, Lcom/taobao/phenix/loader/file/LocalImageProducer;->mFileLoader:Lcom/taobao/phenix/loader/file/FileLoader;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getLoaderExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p3, p4, v2}, Lcom/taobao/phenix/loader/file/FileLoader;->load(Lcom/taobao/phenix/request/SchemeInfo;Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/phenix/entity/ResponseData;

    move-result-object p3

    .line 31
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->isCancelled()Z

    move-result p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    .line 32
    new-array p2, v2, [Ljava/lang/Object;

    const-string p4, "LocalFile"

    const-string v2, "Request is cancelled before reading file"

    invoke-static {p4, v0, v2, p2}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->onCancellation()V

    .line 34
    invoke-virtual {p3}, Lcom/taobao/phenix/entity/ResponseData;->release()V

    return-object v1

    .line 38
    :cond_0
    new-instance p4, Lcom/taobao/phenix/loader/StreamResultHandler;

    iget v3, p3, Lcom/taobao/phenix/entity/ResponseData;->length:I

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getProgressUpdateStep()I

    move-result v2

    :goto_0
    invoke-direct {p4, p1, v3, v2}, Lcom/taobao/phenix/loader/StreamResultHandler;-><init>(Lcom/taobao/rxm/consume/Consumer;II)V

    .line 39
    invoke-static {p3, p4}, Lcom/taobao/phenix/entity/EncodedData;->transformFrom(Lcom/taobao/phenix/entity/ResponseData;Lcom/taobao/phenix/loader/StreamResultHandler;)Lcom/taobao/phenix/entity/EncodedData;

    move-result-object p1

    .line 40
    invoke-virtual {p4}, Lcom/taobao/phenix/loader/StreamResultHandler;->isCancellationCalled()Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p1, v1

    :cond_2
    return-object p1
.end method


# virtual methods
.method protected conductResult(Lcom/taobao/rxm/consume/Consumer;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/entity/EncodedImage;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;)Z"
        }
    .end annotation

    .line 45
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageRequest;

    .line 46
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getSecondaryUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v2

    .line 48
    invoke-virtual {v1}, Lcom/taobao/phenix/request/ImageUriInfo;->getSchemeInfo()Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/taobao/phenix/request/SchemeInfo;->isLocalUri()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageUriInfo;->getSchemeInfo()Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/phenix/request/SchemeInfo;->isLocalUri()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    return v6

    :cond_2
    const/4 v8, 0x0

    .line 58
    invoke-virtual {v1}, Lcom/taobao/phenix/request/ImageUriInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/loader/file/LocalImageProducer;->onConductStart(Lcom/taobao/rxm/consume/Consumer;)V

    const-string v10, "LocalFile"

    if-eq v4, v7, :cond_5

    if-eq v4, v5, :cond_3

    :goto_1
    move-object v10, v9

    const/4 v2, 0x0

    :goto_2
    move-object v9, v8

    goto :goto_6

    .line 73
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageUriInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 74
    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageUriInfo;->getSchemeInfo()Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object v2

    invoke-direct {p0, p1, v7, v2, v9}, Lcom/taobao/phenix/loader/file/LocalImageProducer;->readLocalData(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/request/SchemeInfo;Ljava/lang/String;)Lcom/taobao/phenix/entity/EncodedData;

    move-result-object v8

    .line 75
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageRequest;->disableSecondary()V

    const-string v2, "load file(secondary) result=%B"

    .line 76
    new-array v3, v7, [Ljava/lang/Object;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/taobao/phenix/entity/EncodedData;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v3, v6

    invoke-static {v10, v9, v2, v3}, Lcom/taobao/phenix/common/UnitedLog;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 78
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v2, "load file(secondary) error=%s"

    invoke-static {v10, v9, v2, v3}, Lcom/taobao/phenix/common/UnitedLog;->ep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 64
    :cond_5
    :try_start_1
    invoke-direct {p0, p1, v6, v3, v9}, Lcom/taobao/phenix/loader/file/LocalImageProducer;->readLocalData(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/request/SchemeInfo;Ljava/lang/String;)Lcom/taobao/phenix/entity/EncodedData;

    move-result-object v8

    const-string v2, "load file result=%B"

    .line 65
    new-array v3, v7, [Ljava/lang/Object;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/taobao/phenix/entity/EncodedData;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v3, v6

    invoke-static {v10, v9, v2, v3}, Lcom/taobao/phenix/common/UnitedLog;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    .line 67
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v11, "load file error=%s"

    invoke-static {v10, v9, v11, v3}, Lcom/taobao/phenix/common/UnitedLog;->ep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-interface {p1, v2}, Lcom/taobao/rxm/consume/Consumer;->onFailure(Ljava/lang/Throwable;)V

    :goto_5
    move-object v10, v9

    const/4 v2, 0x1

    goto :goto_2

    .line 82
    :goto_6
    invoke-virtual {p0, p1, v2}, Lcom/taobao/phenix/loader/file/LocalImageProducer;->onConductFinish(Lcom/taobao/rxm/consume/Consumer;Z)V

    if-eqz v9, :cond_9

    if-eqz v2, :cond_7

    .line 87
    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getStatistics()Lcom/taobao/phenix/request/ImageStatistics;

    move-result-object v0

    iget v3, v9, Lcom/taobao/phenix/entity/EncodedData;->length:I

    invoke-virtual {v0, v3}, Lcom/taobao/phenix/request/ImageStatistics;->setSize(I)V

    .line 89
    :cond_7
    new-instance v0, Lcom/taobao/phenix/entity/EncodedImage;

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 94
    invoke-virtual {v1}, Lcom/taobao/phenix/request/ImageUriInfo;->getImageExtension()Ljava/lang/String;

    move-result-object v13

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/taobao/phenix/entity/EncodedImage;-><init>(Lcom/taobao/phenix/entity/EncodedData;Ljava/lang/String;IZLjava/lang/String;)V

    if-ne v4, v5, :cond_8

    const/4 v6, 0x1

    .line 96
    :cond_8
    iput-boolean v6, v0, Lcom/taobao/phenix/entity/EncodedImage;->isSecondary:Z

    .line 97
    invoke-interface {p1, v0, v2}, Lcom/taobao/rxm/consume/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    :cond_9
    return v2
.end method
