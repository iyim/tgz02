.class public Landroid/taobao/windvane/connect/HttpConnector;
.super Ljava/lang/Object;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/connect/HttpConnector$RedirectException;,
        Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;,
        Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;,
        Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;
    }
.end annotation


# static fields
.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final IF_MODIFY_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final REDIRECT_LOCATION:Ljava/lang/String; = "location"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "response-code"

.field public static final SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field private static TAG:Ljava/lang/String; = "HttpConnector"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private mListener:Landroid/taobao/windvane/connect/HttpConnectListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/connect/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private redirectTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    .line 58
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroid/taobao/windvane/connect/HttpConnector;->redirectTime:I

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    return-void
.end method

.method private dataConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;,
            Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;,
            Landroid/taobao/windvane/connect/HttpConnector$RedirectException;,
            Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "http"

    const-string/jumbo v4, "too many redirect"

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 133
    iget-object v6, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v6, :cond_0

    .line 134
    invoke-virtual {v6}, Landroid/taobao/windvane/connect/HttpConnectListener;->onStart()V

    .line 136
    :cond_0
    new-instance v6, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {v6}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    .line 137
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 143
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 145
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_0 .. :try_end_0} :catch_37
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_0 .. :try_end_0} :catch_36
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2a
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v7, :cond_3

    .line 149
    :try_start_1
    sget-object v7, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    const-string v14, "proxy or https"

    invoke-static {v7, v14}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v7, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v7}, Landroid/taobao/windvane/util/NetWork;->getHttpsProxyInfo(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 156
    new-instance v14, Landroid/taobao/windvane/security/SSLTunnelSocketFactory;

    invoke-virtual {v7}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    const-string/jumbo v9, "taobao_hybrid_8.5.0"

    invoke-direct {v14, v15, v7, v11, v9}, Landroid/taobao/windvane/security/SSLTunnelSocketFactory;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    sget-object v7, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    const-string v9, "https:proxy: none"

    invoke-static {v7, v9}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v11

    .line 162
    :goto_0
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v14, :cond_2

    .line 166
    invoke-virtual {v7, v14}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 168
    :cond_2
    new-instance v9, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-virtual {v7, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v9, "Connection"

    const-string v12, "Keep-Alive"

    .line 171
    invoke-virtual {v7, v9, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v7, v3

    move-object/from16 v16, v7

    goto/16 :goto_29

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v4, v3

    move-object/from16 v16, v4

    goto/16 :goto_16

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v7, v3

    move-object/from16 v16, v7

    goto/16 :goto_18

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v7, v3

    move-object/from16 v16, v7

    goto/16 :goto_1e

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v4, v3

    move-object/from16 v16, v4

    goto/16 :goto_26

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v5, v3

    move-object/from16 v16, v5

    goto/16 :goto_28

    .line 175
    :cond_3
    :try_start_3
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_3 .. :try_end_3} :catch_37
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_3 .. :try_end_3} :catch_36
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2a
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 178
    :goto_1
    :try_start_4
    invoke-direct {v1, v7, v2}, Landroid/taobao/windvane/connect/HttpConnector;->setConnectProp(Ljava/net/HttpURLConnection;Landroid/taobao/windvane/connect/HttpRequest;)V

    .line 179
    iget-object v9, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;
    :try_end_4
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_4 .. :try_end_4} :catch_29
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_4 .. :try_end_4} :catch_28
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_25
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v9, :cond_4

    .line 180
    :try_start_5
    iget-object v9, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    invoke-virtual {v9, v10}, Landroid/taobao/windvane/connect/HttpConnectListener;->onProcess(I)V
    :try_end_5
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object/from16 v16, v3

    goto/16 :goto_29

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v4, v3

    move-object/from16 v16, v4

    :goto_2
    move-object v11, v7

    goto/16 :goto_16

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object/from16 v16, v3

    goto/16 :goto_18

    :catch_7
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object/from16 v16, v3

    goto/16 :goto_1e

    :catch_8
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v4, v3

    move-object/from16 v16, v4

    :goto_3
    move-object v11, v7

    goto/16 :goto_26

    :catch_9
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    move-object v5, v3

    move-object/from16 v16, v5

    :goto_4
    move-object v11, v7

    goto/16 :goto_28

    :cond_4
    :goto_5
    :try_start_6
    const-string v9, "post"

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v12, 0x1

    if-eqz v9, :cond_5

    .line 184
    sget-object v9, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "post data: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->getPostData()[B

    move-result-object v11

    invoke-direct {v15, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 187
    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v9, "POST"

    .line 188
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 192
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->getPostData()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/OutputStream;->write([B)V

    .line 194
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 195
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_6 .. :try_end_6} :catch_29
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_6 .. :try_end_6} :catch_28
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_25
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    .line 198
    :cond_5
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_7
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_24
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_7 .. :try_end_7} :catch_29
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_7 .. :try_end_7} :catch_28
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_25
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 205
    :goto_6
    :try_start_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 206
    sget-object v11, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "responeCode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x12c

    if-lt v9, v11, :cond_b

    const/16 v14, 0x190

    if-ge v9, v14, :cond_b

    const/16 v14, 0x130

    if-eq v9, v14, :cond_b

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/taobao/windvane/connect/HttpRequest;->isRedirect()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 211
    iget v14, v1, Landroid/taobao/windvane/connect/HttpConnector;->redirectTime:I

    const/4 v15, 0x5

    if-gt v14, v15, :cond_a

    .line 214
    iget v14, v1, Landroid/taobao/windvane/connect/HttpConnector;->redirectTime:I

    add-int/2addr v14, v12

    iput v14, v1, Landroid/taobao/windvane/connect/HttpConnector;->redirectTime:I

    const-string v14, "location"

    .line 215
    invoke-virtual {v7, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 217
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 218
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3, v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_6
    const/16 v3, 0x131

    if-eq v9, v3, :cond_8

    .line 221
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/connect/HttpRequest;->setUri(Landroid/net/Uri;)V

    .line 222
    invoke-direct/range {p0 .. p1}, Landroid/taobao/windvane/connect/HttpConnector;->dataConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object v2
    :try_end_8
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_8 .. :try_end_8} :catch_29
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_8 .. :try_end_8} :catch_28
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_25
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 344
    :try_start_9
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v3, v0

    .line 346
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    if-eqz v7, :cond_7

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object v2

    .line 224
    :cond_8
    :try_start_a
    new-instance v2, Landroid/taobao/windvane/connect/HttpRequest;

    invoke-direct {v2, v14}, Landroid/taobao/windvane/connect/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/taobao/windvane/connect/HttpConnector;->dataConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object v2
    :try_end_a
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_a .. :try_end_a} :catch_29
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_a .. :try_end_a} :catch_28
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_a} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_25
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 344
    :try_start_b
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 346
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    if-eqz v7, :cond_9

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-object v2

    .line 212
    :cond_a
    :try_start_c
    new-instance v2, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;

    invoke-direct {v2, v1, v4}, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_b
    invoke-virtual {v6, v9}, Landroid/taobao/windvane/connect/HttpResponse;->setHttpCode(I)V

    .line 233
    :cond_c
    :goto_9
    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    const/16 v2, 0xc8

    if-lt v9, v2, :cond_12

    if-ge v9, v11, :cond_12

    .line 247
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    const/high16 v3, 0x500000

    if-gt v2, v3, :cond_11

    .line 250
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_c
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_c .. :try_end_c} :catch_29
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_c .. :try_end_c} :catch_28
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_c .. :try_end_c} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_25
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 251
    :try_start_d
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v5, "gzip"

    .line 252
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 253
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_d .. :try_end_d} :catch_19
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_d .. :try_end_d} :catch_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_16
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 254
    :try_start_e
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_e .. :try_end_e} :catch_10
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v16, v3

    move-object v3, v5

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_14

    :catch_c
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v3

    move-object v3, v11

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v11

    goto/16 :goto_c

    :catch_e
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v11

    goto/16 :goto_d

    :catch_f
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v3

    move-object v3, v11

    const/4 v4, 0x0

    goto/16 :goto_3

    :catch_10
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v3

    move-object v3, v11

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 256
    :cond_d
    :try_start_f
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_f .. :try_end_f} :catch_1a
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_f .. :try_end_f} :catch_19
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_16
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/16 v16, 0x0

    :goto_a
    const/16 v5, 0x800

    .line 261
    :try_start_10
    new-array v9, v5, [B

    move v12, v2

    const/4 v2, 0x0

    .line 262
    :cond_e
    :goto_b
    invoke-virtual {v3, v9, v10, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_10

    .line 263
    invoke-virtual {v8, v9, v10, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 264
    iget-object v14, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v14, :cond_e

    add-int/2addr v2, v13

    if-le v2, v12, :cond_f

    move v12, v2

    :cond_f
    int-to-float v13, v2

    int-to-float v14, v12

    div-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    float-to-int v13, v13

    .line 270
    iget-object v14, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    invoke-virtual {v14, v13}, Landroid/taobao/windvane/connect/HttpConnectListener;->onProcess(I)V

    goto :goto_b

    .line 273
    :cond_10
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/taobao/windvane/connect/HttpResponse;->setData([B)V
    :try_end_10
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object/from16 v2, v16

    move-object/from16 v16, v11

    move-object v11, v3

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    goto/16 :goto_29

    :catch_11
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    move-object v3, v11

    goto/16 :goto_2

    :catch_12
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v11

    move-object v11, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v17

    goto/16 :goto_18

    :catch_13
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v11

    move-object v11, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v17

    goto/16 :goto_1e

    :catch_14
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    move-object v3, v11

    goto/16 :goto_3

    :catch_15
    move-exception v0

    move-object v2, v0

    move-object v5, v3

    move-object v3, v11

    goto/16 :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto/16 :goto_14

    :catch_16
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    const/4 v4, 0x0

    const/16 v16, 0x0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v11

    const/4 v3, 0x0

    :goto_c
    const/4 v11, 0x0

    goto/16 :goto_18

    :catch_18
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v11

    const/4 v3, 0x0

    :goto_d
    const/4 v11, 0x0

    goto/16 :goto_1e

    :catch_19
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    const/4 v4, 0x0

    const/16 v16, 0x0

    goto/16 :goto_3

    :catch_1a
    move-exception v0

    move-object v2, v0

    move-object v3, v11

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto/16 :goto_4

    .line 249
    :cond_11
    :try_start_11
    new-instance v3, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Content-Length is too large:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v3
    :try_end_11
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_11 .. :try_end_11} :catch_29
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_11 .. :try_end_11} :catch_28
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_11 .. :try_end_11} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_25
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_12
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 275
    :goto_e
    :try_start_12
    iget-object v3, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v3, :cond_13

    .line 276
    iget-object v3, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    invoke-virtual {v3, v6, v10}, Landroid/taobao/windvane/connect/HttpConnectListener;->onFinish(Ljava/lang/Object;I)V
    :try_end_12
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_12 .. :try_end_12} :catch_23
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_12 .. :try_end_12} :catch_22
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_12 .. :try_end_12} :catch_21
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1f
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_13
    if-eqz v11, :cond_14

    .line 323
    :try_start_13
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b

    goto :goto_f

    :catch_1b
    move-exception v0

    move-object v3, v0

    .line 325
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_f
    if-eqz v16, :cond_15

    .line 330
    :try_start_14
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c

    goto :goto_10

    :catch_1c
    move-exception v0

    move-object v3, v0

    .line 332
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_10
    if-eqz v2, :cond_16

    .line 337
    :try_start_15
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1d

    goto :goto_11

    :catch_1d
    move-exception v0

    move-object v2, v0

    .line 339
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    :cond_16
    :goto_11
    :try_start_16
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1e

    goto :goto_12

    :catch_1e
    move-exception v0

    move-object v2, v0

    .line 346
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    if-eqz v7, :cond_17

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    return-object v6

    :catchall_5
    move-exception v0

    move-object v3, v2

    goto/16 :goto_24

    :catch_1f
    move-exception v0

    move-object v4, v11

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object v11, v7

    move-object v2, v0

    goto/16 :goto_16

    :catch_20
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_18

    :catch_21
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_1e

    :catch_22
    move-exception v0

    move-object v4, v11

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object v11, v7

    move-object v2, v0

    goto/16 :goto_26

    :catch_23
    move-exception v0

    move-object v5, v11

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object v11, v7

    move-object v2, v0

    goto/16 :goto_28

    :cond_18
    add-int/lit8 v12, v12, 0x1

    .line 237
    :try_start_17
    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v6, v2, v3}, Landroid/taobao/windvane/connect/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Set-Cookie"

    .line 239
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 240
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/taobao/windvane/WVCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_24
    move-exception v0

    move-object v2, v0

    .line 200
    new-instance v3, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;

    invoke-virtual {v2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v3
    :try_end_17
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_17 .. :try_end_17} :catch_29
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_17 .. :try_end_17} :catch_28
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_17 .. :try_end_17} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_25
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_13

    :catch_25
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_15

    :catch_26
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_17

    :catch_27
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto/16 :goto_1d

    :catch_28
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_25

    :catch_29
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_27

    :catchall_7
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_13
    const/4 v11, 0x0

    :goto_14
    const/16 v16, 0x0

    goto/16 :goto_29

    :catch_2a
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_15
    const/16 v16, 0x0

    .line 310
    :goto_16
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 311
    iget-object v6, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v6, :cond_19

    .line 312
    iget-object v6, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    const/4 v7, -0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "network exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 314
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 318
    new-instance v2, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;

    invoke-direct {v2, v1, v5}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :catch_2b
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_17
    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 302
    :goto_18
    :try_start_19
    iget-object v4, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v4, :cond_1a

    .line 303
    iget-object v4, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    const/4 v5, -0x5

    const-string v6, "out of memory error"

    invoke-virtual {v4, v5, v6}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 305
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 307
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-eqz v11, :cond_1b

    .line 323
    :try_start_1a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2c

    goto :goto_19

    :catch_2c
    move-exception v0

    move-object v2, v0

    .line 325
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_19
    if-eqz v16, :cond_1c

    .line 330
    :try_start_1b
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2d

    goto :goto_1a

    :catch_2d
    move-exception v0

    move-object v2, v0

    .line 332
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_1a
    if-eqz v3, :cond_1d

    .line 337
    :try_start_1c
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2e

    goto :goto_1b

    :catch_2e
    move-exception v0

    move-object v2, v0

    .line 339
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    :cond_1d
    :goto_1b
    :try_start_1d
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2f

    goto :goto_1c

    :catch_2f
    move-exception v0

    move-object v2, v0

    .line 346
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    if-eqz v7, :cond_22

    goto :goto_23

    :catch_30
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_1d
    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 290
    :goto_1e
    :try_start_1e
    iget-object v4, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v4, :cond_1e

    .line 291
    iget-object v4, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    const/4 v5, -0x3

    const-string/jumbo v6, "ssl handshake exception"

    invoke-virtual {v4, v5, v6}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 293
    :cond_1e
    invoke-virtual {v2}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    if-nez v2, :cond_24

    if-eqz v11, :cond_1f

    .line 323
    :try_start_1f
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_31

    goto :goto_1f

    :catch_31
    move-exception v0

    move-object v2, v0

    .line 325
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_1f
    if-eqz v16, :cond_20

    .line 330
    :try_start_20
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_32

    goto :goto_20

    :catch_32
    move-exception v0

    move-object v2, v0

    .line 332
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    if-eqz v3, :cond_21

    .line 337
    :try_start_21
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_33

    goto :goto_21

    :catch_33
    move-exception v0

    move-object v2, v0

    .line 339
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    :cond_21
    :goto_21
    :try_start_22
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_34

    goto :goto_22

    :catch_34
    move-exception v0

    move-object v2, v0

    .line 346
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    if-eqz v7, :cond_22

    .line 350
    :goto_23
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 353
    :cond_22
    iget-object v2, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v2, :cond_23

    .line 354
    new-instance v3, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {v3}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    invoke-virtual {v2, v3, v10}, Landroid/taobao/windvane/connect/HttpConnectListener;->onFinish(Ljava/lang/Object;I)V

    .line 356
    :cond_23
    new-instance v2, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {v2}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    return-object v2

    .line 296
    :cond_24
    :try_start_23
    throw v2
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_35
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    :catch_35
    move-exception v0

    move-object v2, v0

    .line 298
    :try_start_24
    new-instance v4, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;-><init>(Landroid/taobao/windvane/connect/HttpConnector;Ljava/lang/String;)V

    throw v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    :catchall_8
    move-exception v0

    :goto_24
    move-object v2, v0

    move-object/from16 v17, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    goto :goto_29

    :catch_36
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_25
    const/16 v16, 0x0

    .line 285
    :goto_26
    :try_start_25
    iget-object v5, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v5, :cond_25

    .line 286
    iget-object v5, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    const/4 v6, -0x2

    const-string v7, "connect file is too large"

    invoke-virtual {v5, v6, v7}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 288
    :cond_25
    throw v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    :catchall_9
    move-exception v0

    move-object v2, v0

    move-object v7, v11

    move-object v11, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v4

    goto :goto_29

    :catch_37
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_27
    const/16 v16, 0x0

    .line 280
    :goto_28
    :try_start_26
    iget-object v6, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    if-eqz v6, :cond_26

    .line 281
    iget-object v6, v1, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v4}, Landroid/taobao/windvane/connect/HttpConnectListener;->onError(ILjava/lang/String;)V

    .line 283
    :cond_26
    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    move-object v7, v11

    move-object v11, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v5

    :goto_29
    if-eqz v16, :cond_27

    .line 323
    :try_start_27
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_38

    goto :goto_2a

    :catch_38
    move-exception v0

    move-object v4, v0

    .line 325
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    :goto_2a
    if-eqz v11, :cond_28

    .line 330
    :try_start_28
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_39

    goto :goto_2b

    :catch_39
    move-exception v0

    move-object v4, v0

    .line 332
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_2b
    if-eqz v3, :cond_29

    .line 337
    :try_start_29
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3a

    goto :goto_2c

    :catch_3a
    move-exception v0

    move-object v3, v0

    .line 339
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    :cond_29
    :goto_2c
    :try_start_2a
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_3b

    goto :goto_2d

    :catch_3b
    move-exception v0

    move-object v3, v0

    .line 346
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2d
    if-eqz v7, :cond_2a

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2a
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method private setConnectProp(Ljava/net/HttpURLConnection;Landroid/taobao/windvane/connect/HttpRequest;)V
    .locals 3

    .line 367
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getRetryTime()I

    move-result v0

    .line 368
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getConnectTimeout()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    mul-int v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 369
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getReadTimeout()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 373
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "close"

    .line 374
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 375
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/windvane/WVCookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Cookie"

    .line 378
    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 382
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 383
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method


# virtual methods
.method public syncConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/connect/HttpConnector;->syncConnect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncConnect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/connect/HttpRequest;",
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/connect/HttpResponse;",
            ">;)",
            "Landroid/taobao/windvane/connect/HttpResponse;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 91
    iput-object p2, p0, Landroid/taobao/windvane/connect/HttpConnector;->mListener:Landroid/taobao/windvane/connect/HttpConnectListener;

    const/4 p2, 0x0

    .line 92
    iput p2, p0, Landroid/taobao/windvane/connect/HttpConnector;->redirectTime:I

    .line 93
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpRequest;->getRetryTime()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 97
    :try_start_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/connect/HttpConnector;->dataConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;->printStackTrace()V

    .line 111
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 106
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;->printStackTrace()V

    .line 107
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception p1

    .line 102
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;->printStackTrace()V

    .line 103
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 99
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;->printStackTrace()V

    .line 100
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 v2, p2, 0x2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 120
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 122
    :catch_4
    sget-object v2, Landroid/taobao/windvane/connect/HttpConnector;->TAG:Ljava/lang/String;

    const-string v3, "HttpConnector retry Sleep has been interrupted, go ahead"

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    :goto_1
    new-instance p1, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-direct {p1}, Landroid/taobao/windvane/connect/HttpResponse;-><init>()V

    .line 126
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/connect/HttpResponse;->setErrorMsg(Ljava/lang/String;)V

    return-object p1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Http connect error, request is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public syncConnect(Ljava/lang/String;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 1

    .line 71
    new-instance v0, Landroid/taobao/windvane/connect/HttpRequest;

    invoke-direct {v0, p1}, Landroid/taobao/windvane/connect/HttpRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, v0, p1}, Landroid/taobao/windvane/connect/HttpConnector;->syncConnect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object p1

    return-object p1
.end method
