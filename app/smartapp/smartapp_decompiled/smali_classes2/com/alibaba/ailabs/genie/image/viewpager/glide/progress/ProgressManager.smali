.class public Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;
.super Ljava/lang/Object;
.source "ProgressManager.java"


# static fields
.field private static final LISTENER:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;

.field private static listenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/OnProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->listenersMap:Ljava/util/Map;

    .line 26
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->LISTENER:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;
    .locals 1

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->LISTENER:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;

    return-object v0
.end method

.method public static addListener(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/OnProgressListener;)V
    .locals 9

    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 68
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->listenersMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    .line 69
    invoke-interface/range {v1 .. v8}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/OnProgressListener;->onProgress(Ljava/lang/String;ZIJJ)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 47
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 48
    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager$2;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager$2;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 58
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/SSLSocketClient;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/SSLSocketClient;->geX509tTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/SSLSocketClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 60
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 61
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 62
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getProgressListener(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/OnProgressListener;
    .locals 1

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->listenersMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->listenersMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/OnProgressListener;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeListener(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->listenersMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
