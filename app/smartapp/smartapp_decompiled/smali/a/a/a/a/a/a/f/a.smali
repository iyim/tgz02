.class public final La/a/a/a/a/a/f/a;
.super Ljava/lang/Object;
.source "GenieHttpClient.java"

# interfaces
.implements Lcom/alibaba/genie/waft/gcs/network/api/Network;


# static fields
.field public static volatile a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lokhttp3/Response;)Lcom/alibaba/genie/waft/gcs/network/api/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 31
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [B

    .line 39
    :cond_1
    new-instance v3, Lcom/alibaba/genie/waft/gcs/network/api/Response;

    invoke-direct {v3, p0, v1, v2}, Lcom/alibaba/genie/waft/gcs/network/api/Response;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;[BLcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)V

    goto :goto_1

    .line 40
    :cond_2
    new-instance v1, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    .line 42
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;-><init>(ILjava/lang/String;)V

    .line 43
    invoke-static {p0, v1}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v3

    .line 44
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    move-object v2, v1

    goto :goto_2

    :catchall_0
    nop

    .line 50
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 51
    iget-object p0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Request;->c:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 52
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 53
    new-instance p0, Lcom/alibaba/genie/waft/gcs/network/api/Response$Header;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/genie/waft/gcs/network/api/Response$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p1, v3, Lcom/alibaba/genie/waft/gcs/network/api/Response;->c:Ljava/util/Map;

    .line 55
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Request$Header;->a:Ljava/lang/String;

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Request$Header;->b:Ljava/lang/String;

    .line 57
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v3
.end method

.method public static a()Lokhttp3/OkHttpClient;
    .locals 5

    .line 1
    sget-object v0, La/a/a/a/a/a/f/a;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 2
    const-class v0, La/a/a/a/a/a/f/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, La/a/a/a/a/a/f/a;->a:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    .line 5
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, La/a/a/a/a/a/f/a;->a:Lokhttp3/OkHttpClient;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 14
    :cond_1
    :goto_0
    sget-object v0, La/a/a/a/a/a/f/a;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static a(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lokhttp3/Request;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Request;->b:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/network/api/Request;->d:[B

    const-string v2, "POST"

    .line 17
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 19
    new-array v1, v0, [B

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Request;->c:Ljava/util/Map;

    const-string v2, "Content-Type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/network/api/Request;->a:Ljava/lang/String;

    .line 24
    invoke-static {v1}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 26
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 27
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 28
    iget-object p0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Request;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, p0, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public send(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Response;
    .locals 3
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send() called with: request = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    invoke-static {p1}, La/a/a/a/a/a/f/a;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lokhttp3/Request;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {}, La/a/a/a/a/a/f/a;->a()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    invoke-static {p1, v0}, La/a/a/a/a/a/f/a;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lokhttp3/Response;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 8
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 10
    :try_start_4
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    invoke-direct {v1, v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V
    .locals 1
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, La/a/a/a/a/a/f/a;->sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    return-void
.end method

.method public sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    .locals 3
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAsync() called with: request = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "listener = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    :try_start_0
    invoke-static {p1}, La/a/a/a/a/a/f/a;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lokhttp3/Request;

    move-result-object v0

    .line 9
    new-instance v1, La/a/a/a/a/a/f/b;

    invoke-direct {v1, p1, p2}, La/a/a/a/a/a/f/b;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    .line 11
    invoke-static {}, La/a/a/a/a/a/f/a;->a()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_0

    .line 14
    new-instance v1, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    invoke-direct {v1, v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;->onResponse(Lcom/alibaba/genie/waft/gcs/network/api/Response;)V

    return-void

    .line 19
    :cond_0
    throw v0
.end method
