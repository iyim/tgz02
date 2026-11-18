.class public Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;
.super Ljava/lang/Object;
.source "GenieStreamFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieStreamFetcher"

.field private static final TIMEOUT:I = 0x4e20


# instance fields
.field private mCallback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mFuture:Ljava/util/concurrent/Future;

.field private mInputStream:Ljava/io/InputStream;

.field private mNetwork:Lanetwork/channel/Network;

.field private mUrl:Lcom/bumptech/glide/load/model/GlideUrl;


# direct methods
.method public constructor <init>(Lanetwork/channel/Network;Lcom/bumptech/glide/load/model/GlideUrl;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mNetwork:Lanetwork/channel/Network;

    .line 43
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenieStreamFetcher() called with: network = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], url = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GenieStreamFetcher"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private close()V
    .locals 3

    const-string v0, "GenieStreamFetcher"

    const-string v1, "close() called"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "close: "

    .line 108
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 117
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const-string v0, "GenieStreamFetcher"

    const-string v1, "cancel() called"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->close()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mCallback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    const-string v0, "GenieStreamFetcher"

    const-string v1, "cleanup() called"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 126
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 132
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public synthetic lambda$loadData$0$GenieStreamFetcher(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 7

    const-string v0, "loadData: url = "

    const-string v1, "GenieStreamFetcher"

    .line 57
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mCallback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 59
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/model/GlideUrl;->toStringUrl()Ljava/lang/String;

    move-result-object v2

    .line 60
    new-instance v3, Lanetwork/channel/entity/RequestImpl;

    invoke-direct {v3, v2}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x4e20

    .line 61
    invoke-interface {v3, v4}, Lanetwork/channel/Request;->setConnectTimeout(I)V

    .line 62
    invoke-interface {v3, v4}, Lanetwork/channel/Request;->setReadTimeout(I)V

    .line 64
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mNetwork:Lanetwork/channel/Network;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lanetwork/channel/Network;->syncSend(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/Response;

    move-result-object v3

    .line 66
    invoke-interface {v3}, Lanetwork/channel/Response;->getStatusCode()I

    move-result v4

    .line 67
    invoke-interface {v3}, Lanetwork/channel/Response;->getDesc()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 68
    invoke-interface {v3}, Lanetwork/channel/Response;->getDesc()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v4}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    :goto_0
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mCallback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    if-nez v6, :cond_1

    return-void

    .line 73
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,code = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,desc = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc8

    if-lt v4, v2, :cond_2

    const/16 v2, 0x12b

    if-gt v4, v2, :cond_2

    .line 77
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-interface {v3}, Lanetwork/channel/Response;->getBytedata()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mInputStream:Ljava/io/InputStream;

    .line 78
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mCallback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mInputStream:Ljava/io/InputStream;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mCallback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    new-instance v3, Lcom/bumptech/glide/load/HttpException;

    invoke-direct {v3, v5, v4}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 83
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mCallback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    if-eqz v3, :cond_3

    .line 84
    new-instance v3, Lcom/bumptech/glide/load/HttpException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 87
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadData() called URL = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 53
    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenieStreamFetcher"

    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p1, Lcom/alibaba/ailabs/genie/image/-$$Lambda$GenieStreamFetcher$wR0vKJio1k24k2NdaFJCh4-YElo;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/image/-$$Lambda$GenieStreamFetcher$wR0vKJio1k24k2NdaFJCh4-YElo;-><init>(Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/GenieStreamFetcher;->mFuture:Ljava/util/concurrent/Future;

    return-void
.end method
