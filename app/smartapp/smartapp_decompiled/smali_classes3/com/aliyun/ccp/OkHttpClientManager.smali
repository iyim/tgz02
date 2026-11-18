.class public Lcom/aliyun/ccp/OkHttpClientManager;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# static fields
.field private static final JSON_TYPE:Lokhttp3/MediaType;

.field private static volatile mInstance:Lcom/aliyun/ccp/OkHttpClientManager;

.field private static sTimeout:J

.field private static sUserAgent:Ljava/lang/String;


# instance fields
.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    .line 21
    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/aliyun/ccp/OkHttpClientManager;->JSON_TYPE:Lokhttp3/MediaType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 47
    sget-wide v1, Lcom/aliyun/ccp/OkHttpClientManager;->sTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 48
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 49
    sget-wide v1, Lcom/aliyun/ccp/OkHttpClientManager;->sTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 50
    sget-wide v1, Lcom/aliyun/ccp/OkHttpClientManager;->sTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 51
    sget-wide v1, Lcom/aliyun/ccp/OkHttpClientManager;->sTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/ccp/OkHttpClientManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static getInstance()Lcom/aliyun/ccp/OkHttpClientManager;
    .locals 2

    .line 27
    sget-object v0, Lcom/aliyun/ccp/OkHttpClientManager;->mInstance:Lcom/aliyun/ccp/OkHttpClientManager;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/aliyun/ccp/OkHttpClientManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/aliyun/ccp/OkHttpClientManager;->mInstance:Lcom/aliyun/ccp/OkHttpClientManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/aliyun/ccp/OkHttpClientManager;

    invoke-direct {v1}, Lcom/aliyun/ccp/OkHttpClientManager;-><init>()V

    sput-object v1, Lcom/aliyun/ccp/OkHttpClientManager;->mInstance:Lcom/aliyun/ccp/OkHttpClientManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/aliyun/ccp/OkHttpClientManager;->mInstance:Lcom/aliyun/ccp/OkHttpClientManager;

    return-object v0
.end method

.method public static setTimeout(J)V
    .locals 0

    .line 38
    sput-wide p0, Lcom/aliyun/ccp/OkHttpClientManager;->sTimeout:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/aliyun/ccp/OkHttpClientManager;->sUserAgent:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Response;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/aliyun/ccp/OkHttpClientManager;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 89
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 91
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 93
    sget-object p1, Lcom/aliyun/ccp/OkHttpClientManager;->JSON_TYPE:Lokhttp3/MediaType;

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    if-eqz p3, :cond_0

    .line 96
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p3, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 101
    :cond_0
    sget-object p1, Lcom/aliyun/ccp/OkHttpClientManager;->sUserAgent:Ljava/lang/String;

    invoke-static {p1}, Lcom/aliyun/ccp/api/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 102
    sget-object p1, Lcom/aliyun/ccp/OkHttpClientManager;->sUserAgent:Ljava/lang/String;

    const-string p2, "User-Agent"

    invoke-virtual {v1, p2, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 105
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 108
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public doRequestWithSign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lokhttp3/Response;"
        }
    .end annotation

    .line 72
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-static {v1, v2, v0, p4}, Lcom/aliyun/ccp/api/util/SignUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p3, :cond_0

    .line 75
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "authorization"

    .line 77
    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/aliyun/ccp/OkHttpClientManager;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/aliyun/ccp/OkHttpClientManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method
