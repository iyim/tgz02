.class public Lcom/ta/audid/upload/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final MAX_CONNECTION_TIME_OUT:I = 0x2710

.field private static final MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0x2710

.field private static final TIME_SCOPE:J = 0x1b7740L

.field private static mUtdidSslSocketFactory:Lcom/ta/audid/upload/UtdidSslSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    .line 40
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/ta/audid/upload/HttpUtils;->mUtdidSslSocketFactory:Lcom/ta/audid/upload/UtdidSslSocketFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendRequest(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ta/audid/upload/HttpResponse;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, ""

    .line 49
    new-instance v2, Lcom/ta/audid/upload/HttpResponse;

    invoke-direct {v2}, Lcom/ta/audid/upload/HttpResponse;-><init>()V

    .line 50
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 57
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 60
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_2

    .line 61
    sget-object v6, Lcom/ta/audid/upload/HttpUtils;->mUtdidSslSocketFactory:Lcom/ta/audid/upload/UtdidSslSocketFactory;

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 62
    new-instance v6, Lcom/ta/audid/upload/UtdidSslSocketFactory;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/ta/audid/upload/UtdidSslSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/ta/audid/upload/HttpUtils;->mUtdidSslSocketFactory:Lcom/ta/audid/upload/UtdidSslSocketFactory;

    .line 64
    :cond_1
    move-object v4, v5

    nop

    nop

    sget-object v6, Lcom/ta/audid/upload/HttpUtils;->mUtdidSslSocketFactory:Lcom/ta/audid/upload/UtdidSslSocketFactory;

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_12

    :cond_2
    if-eqz v5, :cond_10

    const/4 v4, 0x1

    .line 78
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p2, :cond_3

    .line 80
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :try_start_1
    const-string v6, "POST"

    .line 82
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :cond_3
    :try_start_2
    const-string v6, "GET"

    .line 89
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_11

    .line 95
    :goto_0
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v6, 0x2710

    .line 96
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 97
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 98
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    .line 99
    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "UTF-8"

    const-string v7, "Charset"

    .line 100
    invoke-virtual {v5, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ta/audid/Variables;->getAppkey()Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "x-audid-appkey"

    .line 105
    invoke-virtual {v5, v9, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_4
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 110
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    :try_start_3
    const-string/jumbo v9, "x-audid-appname"

    .line 112
    invoke-static {v8, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_5
    const-string v6, "2.0.6"

    const-string/jumbo v8, "x-audid-sdk"

    .line 119
    invoke-virtual {v5, v8, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ta/audid/Variables;->getCurrentTimeMillisString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "x-audid-timestamp"

    .line 123
    invoke-virtual {v5, v8, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-array v9, v4, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timestamp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v1, v9}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ta/audid/utils/MD5Utils;->getHmacMd5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v5, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v6, 0x0

    .line 134
    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz v0, :cond_6

    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 136
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 137
    :try_start_5
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v6, v11

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object v6, v11

    goto/16 :goto_c

    :cond_6
    move-object v11, v6

    :goto_1
    if-eqz v11, :cond_7

    .line 147
    :try_start_6
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v11, v0

    .line 149
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v11, v0, v3

    invoke-static {v1, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_7
    :goto_2
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v2, Lcom/ta/audid/upload/HttpResponse;->httpResponseCode:I

    .line 156
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ta/audid/upload/HttpResponse;->signature:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 159
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v1, v7}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :goto_3
    :try_start_8
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/ta/audid/upload/HttpResponse;->timestamp:J

    .line 165
    new-array v0, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "repsonse.timestamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v2, Lcom/ta/audid/upload/HttpResponse;->timestamp:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-static {v1, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getCurrentTimeMillis()J

    move-result-wide v7

    .line 167
    iget-wide v11, v2, Lcom/ta/audid/upload/HttpResponse;->timestamp:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_9

    iget-wide v11, v2, Lcom/ta/audid/upload/HttpResponse;->timestamp:J

    const-wide/32 v13, 0x1b7740

    add-long v15, v7, v13

    cmp-long v0, v11, v15

    if-gtz v0, :cond_8

    iget-wide v11, v2, Lcom/ta/audid/upload/HttpResponse;->timestamp:J

    sub-long/2addr v7, v13

    cmp-long v0, v11, v7

    if-gez v0, :cond_9

    .line 170
    :cond_8
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    iget-wide v7, v2, Lcom/ta/audid/upload/HttpResponse;->timestamp:J

    invoke-virtual {v0, v7, v8}, Lcom/ta/audid/Variables;->setSystemTime(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 176
    :catch_5
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    iput-wide v7, v2, Lcom/ta/audid/upload/HttpResponse;->rt:J

    .line 179
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v8, -0x1

    const/16 v9, 0x800

    .line 181
    :try_start_9
    new-instance v10, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 182
    :try_start_a
    new-array v0, v9, [B

    .line 184
    :goto_4
    invoke-virtual {v10, v0, v3, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v8, :cond_a

    .line 185
    invoke-virtual {v7, v0, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 203
    :cond_a
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v5, v0

    .line 205
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v6, v10

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v6, v10

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catch_8
    move-exception v0

    .line 188
    :goto_5
    :try_start_c
    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v3

    invoke-static {v1, v10}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 190
    :try_start_d
    new-instance v10, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 191
    :try_start_e
    new-array v0, v9, [B

    .line 193
    :goto_6
    invoke-virtual {v10, v0, v3, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v8, :cond_b

    .line 194
    invoke-virtual {v7, v0, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    .line 203
    :cond_b
    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v5, v0

    .line 205
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :goto_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 210
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lcom/ta/audid/upload/HttpResponse;->data:[B

    goto/16 :goto_10

    :catch_a
    move-exception v0

    move-object v6, v10

    goto :goto_8

    :catch_b
    move-exception v0

    .line 197
    :goto_8
    :try_start_10
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v5}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v6, :cond_c

    .line 203
    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_9

    :catch_c
    move-exception v0

    move-object v5, v0

    .line 205
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_9
    return-object v2

    :goto_a
    if-eqz v6, :cond_d

    .line 203
    :try_start_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_b

    :catch_d
    move-exception v0

    move-object v5, v0

    .line 205
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_d
    :goto_b
    throw v2

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_e

    :catch_e
    move-exception v0

    .line 141
    :goto_c
    :try_start_13
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v5}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    iput-wide v7, v2, Lcom/ta/audid/upload/HttpResponse;->rt:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v6, :cond_e

    .line 147
    :try_start_14
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    goto :goto_d

    :catch_f
    move-exception v0

    move-object v5, v0

    .line 149
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_d
    return-object v2

    :goto_e
    if-eqz v6, :cond_f

    .line 147
    :try_start_15
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    goto :goto_f

    :catch_10
    move-exception v0

    move-object v5, v0

    .line 149
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_f
    :goto_f
    throw v2

    :catch_11
    move-exception v0

    .line 91
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_10
    :goto_10
    return-object v2

    :catch_12
    move-exception v0

    .line 73
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :catch_13
    move-exception v0

    .line 70
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :catch_14
    move-exception v0

    .line 67
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2
.end method
