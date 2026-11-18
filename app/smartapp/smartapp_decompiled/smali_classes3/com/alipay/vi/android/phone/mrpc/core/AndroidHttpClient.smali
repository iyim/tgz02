.class public final Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;,
        Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J = 0xa0L

.field private static a:[Ljava/lang/String;

.field private static final b:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final c:Lorg/apache/http/client/HttpClient;

.field private d:Ljava/lang/RuntimeException;

.field private volatile e:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "text/"

    const-string v1, "application/xml"

    const-string v2, "application/json"

    .line 87
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->a:[Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$1;

    invoke-direct {v0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$1;-><init>()V

    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->b:Lorg/apache/http/HttpRequestInterceptor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->d:Ljava/lang/RuntimeException;

    .line 175
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$2;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    .line 233
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 8

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "curl "

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    if-nez p1, :cond_0

    .line 476
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Authorization"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cookie"

    .line 477
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "--header \""

    .line 480
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" "

    .line 482
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 485
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p1

    .line 490
    instance-of v1, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v1, :cond_3

    .line 491
    move-object v1, p0

    nop

    nop

    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v1

    .line 492
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_3

    .line 493
    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p1

    :cond_3
    const-string v1, "\""

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    instance-of p1, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz p1, :cond_6

    .line 502
    move-object p1, p0

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 503
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 504
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 505
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    cmp-long v2, v4, v6

    if-gez v2, :cond_5

    .line 506
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    invoke-interface {p1, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 509
    invoke-static {p0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 510
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' | base64 -d > /tmp/$$.bin; "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --data-binary @/tmp/$$.bin"

    .line 512
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 514
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, " --data-ascii \""

    .line 515
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string p0, " [TOO MUCH DATA TO INCLUDE]"

    .line 518
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a()V
    .locals 1

    .line 571
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 10

    const-string v0, "content-encoding"

    .line 528
    invoke-interface {p0, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 530
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 531
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "content-type"

    .line 537
    invoke-interface {p0, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 539
    array-length v0, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v4, p0, v3

    .line 540
    sget-object v5, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->a:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 541
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    return v1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method static synthetic access$000()Lorg/apache/http/HttpRequestInterceptor;
    .locals 1

    .line 72
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->b:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;)Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->e:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-static {p0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 5

    const-string v0, "RPC_PERF"

    const-string v1, "gzip..."

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    array-length v1, p0

    int-to-long v1, v1

    invoke-static {p1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    .line 370
    new-instance p1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p1, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    goto :goto_0

    .line 372
    :cond_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 373
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 374
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 375
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 376
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string p1, "gzip"

    .line 377
    invoke-virtual {v1, p1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gzip size:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/entity/AbstractHttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
    .locals 2

    .line 388
    sget-wide v0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    return-wide v0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 2

    .line 277
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v0

    .line 281
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 285
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const-string v1, "gzip"

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 290
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_3
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .locals 2

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 244
    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V
    .locals 2

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    .line 263
    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-static {p0, v0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;
    .locals 7

    const-string v0, "AndroidHttpClient"

    const-string v1, "AndroidHttpClient newInstance"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 117
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const/4 v2, 0x0

    .line 118
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const/4 v3, 0x1

    .line 121
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const-string v4, "AndroidHttpClient newInstance1"

    .line 122
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x4e20

    .line 123
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v4, 0x7530

    .line 124
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v5, 0x2000

    .line 125
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 129
    invoke-static {v1, v3}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 130
    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V

    const-string v2, "AndroidHttpClient newInstance2"

    .line 131
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 134
    new-instance p0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {p0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    const-string v2, "AndroidHttpClient newInstance3"

    .line 135
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const-string v5, "http"

    const/16 v6, 0x50

    invoke-direct {v2, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "AndroidHttpClient newInstance4"

    .line 138
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/net/SSLSessionCache;

    invoke-direct {v3, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    move-object p1, v3

    .line 140
    :goto_0
    invoke-static {v4, p1}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object p1

    const/16 v3, 0x1bb

    const-string v4, "https"

    invoke-direct {v2, v4, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 139
    invoke-virtual {p0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    const-string p1, "AndroidHttpClient newInstance5"

    .line 141
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance p1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p1, v1, p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    const-wide/32 v2, 0xea60

    .line 143
    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 144
    new-instance p0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, p0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 p0, 0x32

    .line 145
    invoke-static {v1, p0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    const-string p0, "AndroidHttpClient newInstance6"

    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 148
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "networkaddress.cache.ttl"

    invoke-static {v2, p0}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->a()V

    const-string p0, "AndroidHttpClient newInstance7"

    .line 152
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    invoke-direct {p0, p1, v1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 2

    .line 566
    invoke-static {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpDateTime;->parse(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->d:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->d:Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method public disableCurlLogging()V
    .locals 1

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->e:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    .line 441
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$1;)V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->e:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 437
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Level is out of range [2..7]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 254
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-void
.end method
