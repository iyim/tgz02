.class public Lanet/channel/session/HttpConnector;
.super Ljava/lang/Object;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/session/HttpConnector$Response;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.HttpConnector"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static connect(Lanet/channel/request/Request;)Lanet/channel/session/HttpConnector$Response;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0}, Lanet/channel/session/HttpConnector;->connectImpl(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/HttpConnector$Response;

    move-result-object p0

    return-object p0
.end method

.method public static connect(Lanet/channel/request/Request;Lanet/channel/RequestCb;)V
    .locals 0

    .line 72
    invoke-static {p0, p1}, Lanet/channel/session/HttpConnector;->connectImpl(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/HttpConnector$Response;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static connectImpl(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/HttpConnector$Response;
    .locals 20

    move-object/from16 v1, p1

    const-string v2, "Content-Encoding"

    const-string v3, "host"

    const-string v4, ""

    const-string v5, "http disconnect"

    const-string v6, "awcn.HttpConnector"

    .line 77
    new-instance v7, Lanet/channel/session/HttpConnector$Response;

    invoke-direct {v7}, Lanet/channel/session/HttpConnector$Response;-><init>()V

    const/4 v8, 0x0

    if-eqz p0, :cond_11

    .line 78
    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_1b

    :cond_0
    move-object/from16 v9, p0

    move-object v10, v8

    .line 89
    :goto_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v11

    if-nez v11, :cond_1

    const/16 v2, -0xc8

    .line 90
    invoke-static {v9, v7, v1, v2, v8}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    goto/16 :goto_18

    :cond_1
    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 93
    :try_start_0
    invoke-static {v9}, Lanet/channel/session/HttpConnector;->getConnection(Lanet/channel/request/Request;)Ljava/net/HttpURLConnection;

    move-result-object v10

    .line 94
    invoke-static {v13}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v16
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2d
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_29
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_25
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_23
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v16, :cond_2

    .line 95
    :try_start_1
    invoke-virtual {v9}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    const-string/jumbo v17, "request URL"

    aput-object v17, v12, v15

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v14

    invoke-static {v6, v4, v11, v12}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v9}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    const-string/jumbo v17, "request Method"

    aput-object v17, v12, v15

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v14

    invoke-static {v6, v4, v11, v12}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v9}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    const-string/jumbo v17, "request headers"

    aput-object v17, v12, v15

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v14

    invoke-static {v6, v4, v11, v12}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_11

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_13

    :catch_7
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_15

    :catch_8
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_17

    .line 100
    :cond_2
    :goto_1
    :try_start_2
    iget-object v11, v9, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v11, Lanet/channel/statist/RequestStatistic;->sendStart:J

    .line 101
    iget-object v11, v9, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v14, v9, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v14, v14, Lanet/channel/statist/RequestStatistic;->sendStart:J

    iget-object v12, v9, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2d
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_27
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_23
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v9

    :try_start_3
    iget-wide v8, v12, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v14, v8

    iput-wide v14, v11, Lanet/channel/statist/RequestStatistic;->processTime:J

    .line 102
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v8, v19

    .line 103
    :try_start_4
    invoke-static {v10, v8}, Lanet/channel/session/HttpConnector;->postData(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;)I

    .line 106
    iget-object v9, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v9, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    .line 107
    iget-object v9, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v11, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v11, v11, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    iget-object v14, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v14, v14, Lanet/channel/statist/RequestStatistic;->sendStart:J

    sub-long/2addr v11, v14

    iput-wide v11, v9, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 110
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    iput v9, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    .line 111
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lanet/channel/util/HttpHelper;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    iput-object v9, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    .line 113
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v11, v13, [Ljava/lang/Object;

    const-string/jumbo v12, "response code"

    const/4 v14, 0x0

    aput-object v12, v11, v14

    iget v12, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v11, v14

    invoke-static {v6, v4, v9, v11}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v11, v13, [Ljava/lang/Object;

    const-string/jumbo v14, "response headers"

    const/4 v15, 0x0

    aput-object v14, v11, v15

    iget-object v14, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    const/4 v12, 0x1

    aput-object v14, v11, v12

    invoke-static {v6, v4, v9, v11}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget v9, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    invoke-static {v8, v9}, Lanet/channel/util/HttpHelper;->checkRedirect(Lanet/channel/request/Request;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 117
    iget-object v9, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    const-string v11, "Location"

    invoke-static {v9, v11}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 119
    invoke-static {v9}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v11

    if-eqz v11, :cond_4

    const-string/jumbo v9, "redirect"

    .line 121
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v14

    new-array v15, v13, [Ljava/lang/Object;

    const-string/jumbo v18, "to url"

    const/16 v17, 0x0

    aput-object v18, v15, v17

    invoke-virtual {v11}, Lanet/channel/util/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v12, 0x1

    aput-object v18, v15, v12

    invoke-static {v6, v9, v14, v15}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v8}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v9

    const-string v14, "GET"

    invoke-virtual {v9, v14}, Lanet/channel/request/Request$Builder;->setMethod(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lanet/channel/request/Request$Builder;->setBody(Lanet/channel/request/BodyEntry;)Lanet/channel/request/Request$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Lanet/channel/request/Request$Builder;->setUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request$Builder;

    move-result-object v9

    invoke-virtual {v8}, Lanet/channel/request/Request;->getRedirectTimes()I

    move-result v15

    const/4 v12, 0x1

    add-int/2addr v15, v12

    invoke-virtual {v9, v15}, Lanet/channel/request/Request$Builder;->setRedirectTimes(I)Lanet/channel/request/Request$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Lanet/channel/request/Request$Builder;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/Request$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Lanet/channel/request/Request$Builder;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lanet/channel/request/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v9
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    :try_start_5
    iget-object v8, v9, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget v14, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    invoke-virtual {v11}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v14, v11}, Lanet/channel/statist/RequestStatistic;->recordRedirect(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_3

    .line 232
    :try_start_6
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v8, v0

    const/4 v11, 0x0

    .line 235
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v5, v12, v8, v11}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_7
    const-string/jumbo v11, "redirect url is invalid!"

    .line 133
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v14

    new-array v15, v13, [Ljava/lang/Object;

    const-string/jumbo v18, "redirect url"

    const/16 v17, 0x0

    aput-object v18, v15, v17

    const/4 v12, 0x1

    aput-object v9, v15, v12

    invoke-static {v6, v11, v14, v15}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_5
    iget-object v9, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v11, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    invoke-static {v11, v2}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lanet/channel/statist/RequestStatistic;->contentEncoding:Ljava/lang/String;

    .line 139
    iget-object v9, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v11, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    const-string v14, "Content-Type"

    invoke-static {v11, v14}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lanet/channel/statist/RequestStatistic;->contentType:Ljava/lang/String;

    const-string v9, "HEAD"

    .line 142
    invoke-virtual {v8}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    iget v9, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    const/16 v11, 0x130

    if-eq v9, v11, :cond_9

    iget v9, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    const/16 v11, 0xcc

    if-eq v9, v11, :cond_9

    iget v9, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    const/16 v11, 0x64

    if-lt v9, v11, :cond_6

    iget v9, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    const/16 v11, 0xc8

    if-ge v9, v11, :cond_6

    goto :goto_3

    .line 153
    :cond_6
    iget-object v9, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    invoke-static {v9}, Lanet/channel/util/HttpHelper;->parseContentLength(Ljava/util/Map;)I

    move-result v9

    iput v9, v7, Lanet/channel/session/HttpConnector$Response;->contentLength:I

    .line 154
    iget-object v9, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget v11, v7, Lanet/channel/session/HttpConnector$Response;->contentLength:I

    int-to-long v14, v11

    iput-wide v14, v9, Lanet/channel/statist/RequestStatistic;->contentLength:J

    const-string v9, "gzip"

    .line 155
    iget-object v11, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v11, v11, Lanet/channel/statist/RequestStatistic;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v7, Lanet/channel/session/HttpConnector$Response;->isGZip:Z

    .line 156
    iget-boolean v9, v7, Lanet/channel/session/HttpConnector$Response;->isGZip:Z

    if-eqz v9, :cond_7

    .line 157
    iget-object v9, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v2, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    const-string v9, "Content-Length"

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v1, :cond_8

    .line 161
    iget v2, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    iget-object v9, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    invoke-interface {v1, v2, v9}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 164
    :cond_8
    iget-object v2, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v2, Lanet/channel/statist/RequestStatistic;->rspStart:J

    .line 165
    invoke-static {v10, v8, v7, v1}, Lanet/channel/session/HttpConnector;->parseBody(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;)V

    goto :goto_4

    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    .line 147
    iget v2, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    iget-object v9, v7, Lanet/channel/session/HttpConnector$Response;->header:Ljava/util/Map;

    invoke-interface {v1, v2, v9}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 150
    :cond_a
    iget-object v2, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v2, Lanet/channel/statist/RequestStatistic;->rspStart:J

    .line 168
    :goto_4
    iget-object v2, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v9, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v14, v9, Lanet/channel/statist/RequestStatistic;->rspStart:J

    iget-object v9, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v12, v9, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    sub-long/2addr v14, v12

    iput-wide v14, v2, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 169
    iget-object v2, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v9, "SUCCESS"

    if-nez v2, :cond_b

    .line 170
    :try_start_8
    iget-object v2, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    const/4 v12, 0x1

    iput v12, v2, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 171
    iget-object v2, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget v13, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    iput v13, v2, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 172
    iget-object v2, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iput-object v9, v2, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 173
    iget-object v2, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v2, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    :cond_b
    if-eqz v1, :cond_c

    .line 177
    iget v2, v7, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    iget-object v13, v8, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-interface {v1, v2, v9, v13}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_c
    if-eqz v10, :cond_f

    .line 232
    :try_start_9
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    goto/16 :goto_18

    :catch_a
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_b
    move-exception v0

    goto :goto_5

    :catch_c
    move-exception v0

    goto/16 :goto_8

    :catch_d
    move-exception v0

    goto/16 :goto_a

    :catch_e
    move-exception v0

    goto/16 :goto_c

    :catch_f
    move-exception v0

    goto/16 :goto_e

    :catch_10
    move-exception v0

    goto/16 :goto_10

    :catch_11
    move-exception v0

    goto/16 :goto_12

    :catch_12
    move-exception v0

    goto/16 :goto_14

    :catch_13
    move-exception v0

    goto/16 :goto_16

    :catch_14
    move-exception v0

    move-object/from16 v8, v19

    goto :goto_5

    :catch_15
    move-exception v0

    move-object/from16 v8, v19

    goto/16 :goto_8

    :catch_16
    move-exception v0

    move-object/from16 v8, v19

    goto/16 :goto_a

    :catch_17
    move-exception v0

    move-object/from16 v8, v19

    goto/16 :goto_c

    :catch_18
    move-exception v0

    move-object/from16 v8, v19

    goto/16 :goto_e

    :catch_19
    move-exception v0

    move-object/from16 v8, v19

    goto/16 :goto_10

    :catch_1a
    move-exception v0

    move-object/from16 v8, v19

    goto/16 :goto_12

    :catch_1b
    move-exception v0

    move-object/from16 v8, v19

    goto/16 :goto_14

    :catch_1c
    move-exception v0

    move-object/from16 v8, v19

    goto/16 :goto_16

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_19

    :catch_1d
    move-exception v0

    move-object v8, v9

    :goto_5
    move-object v2, v0

    .line 220
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    :cond_d
    const-string v3, "not verified"

    .line 221
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 222
    invoke-static {}, Lanet/channel/strategy/SchemeGuesser;->getInstance()Lanet/channel/strategy/SchemeGuesser;

    move-result-object v3

    invoke-virtual {v8}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lanet/channel/strategy/SchemeGuesser;->onSslFail(Ljava/lang/String;)V

    const/16 v3, -0x193

    .line 223
    invoke-static {v8, v7, v1, v3, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    goto :goto_7

    :cond_e
    const/16 v3, -0x65

    .line 225
    invoke-static {v8, v7, v1, v3, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    :goto_7
    const-string v1, "HTTP Exception"

    .line 227
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v3, v2, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v10, :cond_f

    .line 232
    :try_start_b
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1e

    goto/16 :goto_18

    :catch_1e
    move-exception v0

    move-object v1, v0

    .line 235
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_1f
    move-exception v0

    move-object v8, v9

    :goto_8
    move-object v2, v0

    :goto_9
    const/16 v4, -0x194

    .line 215
    :try_start_c
    invoke-static {v8, v7, v1, v4, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "IO Exception"

    .line 216
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v9, v13

    invoke-virtual {v8}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v9, v8

    const/4 v3, 0x2

    aput-object v2, v9, v3

    invoke-static {v6, v1, v4, v9}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v10, :cond_f

    .line 232
    :try_start_d
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_20

    goto/16 :goto_18

    :catch_20
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_21
    move-exception v0

    move-object v8, v9

    :goto_a
    move-object v2, v0

    :goto_b
    const/16 v3, -0xcc

    .line 211
    :try_start_e
    invoke-static {v8, v7, v1, v3, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Request Cancel"

    .line 212
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v3, v2, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v10, :cond_f

    .line 232
    :try_start_f
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_22

    goto/16 :goto_18

    :catch_22
    move-exception v0

    move-object v1, v0

    .line 235
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_23
    move-exception v0

    move-object v8, v9

    :goto_c
    move-object v2, v0

    .line 206
    :goto_d
    :try_start_10
    invoke-static {}, Lanet/channel/strategy/SchemeGuesser;->getInstance()Lanet/channel/strategy/SchemeGuesser;

    move-result-object v4

    invoke-virtual {v8}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lanet/channel/strategy/SchemeGuesser;->onSslFail(Ljava/lang/String;)V

    const/16 v4, -0x192

    .line 207
    invoke-static {v8, v7, v1, v4, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "connect SSLException"

    .line 208
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v9, v13

    invoke-virtual {v8}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v9, v8

    const/4 v3, 0x2

    aput-object v2, v9, v3

    invoke-static {v6, v1, v4, v9}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v10, :cond_f

    .line 232
    :try_start_11
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_24

    goto/16 :goto_18

    :catch_24
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_25
    move-exception v0

    move-object v8, v9

    :goto_e
    move-object v2, v0

    .line 201
    :goto_f
    :try_start_12
    invoke-static {}, Lanet/channel/strategy/SchemeGuesser;->getInstance()Lanet/channel/strategy/SchemeGuesser;

    move-result-object v4

    invoke-virtual {v8}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lanet/channel/strategy/SchemeGuesser;->onSslFail(Ljava/lang/String;)V

    const/16 v4, -0x192

    .line 202
    invoke-static {v8, v7, v1, v4, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Connect SSLHandshakeException"

    .line 203
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v9, v13

    invoke-virtual {v8}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v9, v8

    const/4 v3, 0x2

    aput-object v2, v9, v3

    invoke-static {v6, v1, v4, v9}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v10, :cond_f

    .line 232
    :try_start_13
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_26

    goto/16 :goto_18

    :catch_26
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_27
    move-exception v0

    move-object v8, v9

    :goto_10
    move-object v2, v0

    :goto_11
    const/16 v3, -0x196

    .line 196
    :try_start_14
    invoke-static {v8, v7, v1, v3, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Connect Exception"

    .line 197
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v3, v2, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v10, :cond_f

    .line 232
    :try_start_15
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_28

    goto/16 :goto_18

    :catch_28
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_18

    :catch_29
    move-exception v0

    move-object v8, v9

    :goto_12
    move-object v2, v0

    :goto_13
    const/16 v3, -0x190

    .line 191
    :try_start_16
    invoke-static {v8, v7, v1, v3, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Connect Timeout"

    .line 192
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v3, v2, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v10, :cond_f

    .line 232
    :try_start_17
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2a

    goto :goto_18

    :catch_2a
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_18

    :catch_2b
    move-exception v0

    move-object v8, v9

    :goto_14
    move-object v2, v0

    :goto_15
    const/16 v3, -0x191

    .line 186
    :try_start_18
    invoke-static {v8, v7, v1, v3, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Socket Timeout"

    .line 187
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v3, v2, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v10, :cond_f

    .line 232
    :try_start_19
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2c

    goto :goto_18

    :catch_2c
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_18

    :catch_2d
    move-exception v0

    move-object v8, v9

    :goto_16
    move-object v2, v0

    :goto_17
    const/16 v4, -0x195

    .line 181
    :try_start_1a
    invoke-static {v8, v7, v1, v4, v2}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "Unknown Host Exception"

    .line 182
    invoke-virtual {v8}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v9, v13

    invoke-virtual {v8}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v9, v8

    const/4 v3, 0x2

    aput-object v2, v9, v3

    invoke-static {v6, v1, v4, v9}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz v10, :cond_f

    .line 232
    :try_start_1b
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2e

    goto :goto_18

    :catch_2e
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v5, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_f
    :goto_18
    return-object v7

    :goto_19
    if-eqz v10, :cond_10

    .line 232
    :try_start_1c
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2f

    goto :goto_1a

    :catch_2f
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    .line 235
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6, v5, v4, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 236
    :cond_10
    :goto_1a
    throw v1

    :cond_11
    :goto_1b
    move-object v4, v8

    if-eqz v1, :cond_12

    const/16 v2, -0x66

    .line 80
    invoke-static {v2}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lanet/channel/statist/RequestStatistic;

    invoke-direct {v5, v4, v4}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v5}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_12
    return-object v7
.end method

.method private static getConnection(Lanet/channel/request/Request;)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiProxy()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 278
    :goto_0
    invoke-static {}, Lanet/channel/util/ProxySetting;->get()Lanet/channel/util/ProxySetting;

    move-result-object v0

    .line 279
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Lanet/channel/util/ProxySetting;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    .line 284
    :cond_1
    invoke-virtual {p0}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 288
    :cond_2
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 291
    :goto_1
    invoke-virtual {p0}, Lanet/channel/request/Request;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 292
    invoke-virtual {p0}, Lanet/channel/request/Request;->getReadTimeout()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 293
    invoke-virtual {p0}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lanet/channel/request/Request;->containsBody()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 295
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 298
    :cond_3
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 301
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v4, "Host"

    .line 306
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_5

    .line 308
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 312
    :cond_5
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lanet/channel/util/HttpUrl;->containsNonDefaultPort()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 313
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lanet/channel/util/HttpUrl;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-static {v5, v7, v6}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v5

    .line 315
    :goto_3
    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getApn()Ljava/lang/String;

    move-result-object v4

    const-string v7, "cmwap"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "x-online-host"

    .line 317
    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v4, "Accept-Encoding"

    .line 321
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "gzip"

    .line 322
    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 327
    invoke-virtual {v0}, Lanet/channel/util/ProxySetting;->getBasicAuthorization()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_9
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 331
    invoke-static {v1, p0, v5}, Lanet/channel/session/HttpConnector;->supportHttps(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Ljava/lang/String;)V

    :cond_a
    const/4 p0, 0x0

    .line 334
    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object v1
.end method

.method private static onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V
    .locals 5

    .line 246
    invoke-static {p3}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "errorCode"

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v4, "errMsg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "url"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lanet/channel/request/Request;->getUrlString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    const-string v4, "host"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string v3, "awcn.HttpConnector"

    const-string v4, "onException"

    invoke-static {v3, v4, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 252
    iput p3, p1, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    .line 255
    :cond_0
    iget-object p1, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object p1, p1, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 256
    iget-object p1, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iput p3, p1, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 257
    iget-object p1, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iput-object v0, p1, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 258
    iget-object p1, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    const/16 p1, -0xcc

    if-eq p3, p1, :cond_1

    .line 261
    new-instance p1, Lanet/channel/statist/ExceptionStatistic;

    iget-object v1, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-direct {p1, p3, v0, v1, p4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    .line 262
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p4

    invoke-interface {p4, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 267
    iget-object p0, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p2, p3, v0, p0}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_2
    return-void
.end method

.method private static parseBody(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 398
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 400
    instance-of v4, v4, Ljava/io/FileNotFoundException;

    const-string v5, "awcn.HttpConnector"

    if-eqz v4, :cond_0

    .line 401
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "url"

    aput-object v7, v6, v2

    invoke-virtual {p1}, Lanet/channel/request/Request;->getUrlString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "File not found"

    invoke-static {v5, v7, v4, v6}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 406
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "get error stream failed."

    invoke-static {v5, v7, v4, p0, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object p0, v3

    :goto_0
    if-nez p0, :cond_1

    const/16 p0, -0x194

    .line 411
    invoke-static {p1, p2, p3, p0, v3}, Lanet/channel/session/HttpConnector;->onException(Lanet/channel/request/Request;Lanet/channel/session/HttpConnector$Response;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    return-void

    :cond_1
    if-nez p3, :cond_4

    .line 418
    iget v4, p2, Lanet/channel/session/HttpConnector$Response;->contentLength:I

    if-gtz v4, :cond_2

    const/16 v1, 0x400

    goto :goto_1

    :cond_2
    iget-boolean v4, p2, Lanet/channel/session/HttpConnector$Response;->isGZip:Z

    if-eqz v4, :cond_3

    iget v4, p2, Lanet/channel/session/HttpConnector$Response;->contentLength:I

    mul-int/lit8 v1, v4, 0x2

    goto :goto_1

    :cond_3
    iget v1, p2, Lanet/channel/session/HttpConnector$Response;->contentLength:I

    .line 420
    :goto_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 425
    :goto_2
    :try_start_2
    new-instance v1, Lanet/channel/util/ByteCounterInputStream;

    invoke-direct {v1, p0}, Lanet/channel/util/ByteCounterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 426
    :try_start_3
    iget-boolean v5, p2, Lanet/channel/session/HttpConnector$Response;->isGZip:Z

    if-eqz v5, :cond_5

    .line 427
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v5

    goto :goto_3

    :cond_5
    move-object p0, v1

    :goto_3
    move-object v5, v3

    .line 435
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_b

    if-nez v5, :cond_6

    .line 439
    invoke-static {}, Lanet/channel/bytes/ByteArrayPool;->getInstance()Lanet/channel/bytes/ByteArrayPool;

    move-result-object v5

    const/16 v6, 0x800

    invoke-virtual {v5, v6}, Lanet/channel/bytes/ByteArrayPool;->retrieve(I)Lanet/channel/bytes/ByteArray;

    move-result-object v5

    .line 441
    :cond_6
    invoke-virtual {v5, p0}, Lanet/channel/bytes/ByteArray;->readFrom(Ljava/io/InputStream;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    if-eqz v4, :cond_7

    .line 444
    invoke-virtual {v5, v4}, Lanet/channel/bytes/ByteArray;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_5

    .line 446
    :cond_7
    invoke-interface {p3, v5, v2}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    move-object v5, v3

    .line 449
    :goto_5
    iget-object v7, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v8, v7, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v7, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 450
    iget-object v6, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v7, v6, Lanet/channel/statist/RequestStatistic;->rspBodyInflateSize:J

    add-long/2addr v7, v10

    iput-wide v7, v6, Lanet/channel/statist/RequestStatistic;->rspBodyInflateSize:J

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_9

    .line 453
    invoke-virtual {v5}, Lanet/channel/bytes/ByteArray;->recycle()V

    goto :goto_6

    .line 455
    :cond_9
    invoke-interface {p3, v5, v0}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    :goto_6
    if-eqz v4, :cond_a

    .line 462
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    iput-object p3, p2, Lanet/channel/session/HttpConnector$Response;->out:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    :cond_a
    iget-object p2, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p3, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, p3, Lanet/channel/statist/RequestStatistic;->rspStart:J

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 466
    iget-object p1, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v1}, Lanet/channel/util/ByteCounterInputStream;->getReadByteCount()J

    move-result-wide p2

    iput-wide p2, p1, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    .line 469
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    return-void

    .line 436
    :cond_b
    :try_start_5
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string/jumbo p3, "task cancelled"

    invoke-direct {p2, p3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p2

    goto :goto_7

    :catchall_1
    move-exception p2

    move-object v1, v3

    .line 465
    :goto_7
    iget-object p3, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->rspStart:J

    sub-long/2addr v2, v4

    iput-wide v2, p3, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 466
    iget-object p1, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v1}, Lanet/channel/util/ByteCounterInputStream;->getReadByteCount()J

    move-result-wide v0

    iput-wide v0, p1, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    if-eqz p0, :cond_c

    .line 469
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 471
    :catch_3
    :cond_c
    goto :goto_9

    :goto_8
    throw p2

    :goto_9
    goto :goto_8
.end method

.method private static postData(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;)I
    .locals 7

    const-string v0, "postData"

    const-string v1, "awcn.HttpConnector"

    .line 369
    invoke-virtual {p1}, Lanet/channel/request/Request;->containsBody()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 372
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 373
    invoke-virtual {p1, v2}, Lanet/channel/request/Request;->postBody(Ljava/io/OutputStream;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 379
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 380
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 382
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    move v3, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_2
    const-string v4, "postData error"

    .line 375
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5, p0, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 379
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 380
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 382
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, p0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 386
    :cond_1
    :goto_1
    iget-object p0, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    int-to-long v0, v3

    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->reqBodyInflateSize:J

    .line 387
    iget-object p0, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->reqBodyDeflateSize:J

    .line 388
    iget-object p0, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    goto :goto_4

    :goto_2
    if-eqz v2, :cond_2

    .line 379
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 380
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 382
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, p1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 383
    :cond_2
    :goto_3
    throw p0

    :cond_3
    :goto_4
    return v3
.end method

.method private static supportHttps(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Ljava/lang/String;)V
    .locals 2

    .line 340
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    .line 341
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "awcn.HttpConnector"

    const-string/jumbo p2, "supportHttps"

    const-string v0, "[supportHttps]Froyo \u4ee5\u4e0b\u7248\u672c\u4e0d\u652f\u6301https"

    invoke-static {p1, p2, v0, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 344
    :cond_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 347
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0

    .line 349
    :cond_1
    invoke-static {}, Lanet/channel/util/HttpSslUtil;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 350
    invoke-static {}, Lanet/channel/util/HttpSslUtil;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 353
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_1

    .line 355
    :cond_3
    invoke-static {}, Lanet/channel/util/HttpSslUtil;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 356
    invoke-static {}, Lanet/channel/util/HttpSslUtil;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_1

    .line 358
    :cond_4
    new-instance p1, Lanet/channel/session/HttpConnector$1;

    invoke-direct {p1, p2}, Lanet/channel/session/HttpConnector$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :goto_1
    return-void
.end method
