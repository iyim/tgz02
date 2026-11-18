.class public Lcom/alibaba/analytics/core/sync/UrlWrapper;
.super Ljava/lang/Object;
.source "UrlWrapper.java"


# static fields
.field private static final ENVIRONMENT_BETA:I = 0x1

.field private static final ENVIRONMENT_DAILY:I = 0x3

.field private static final ENVIRONMENT_ONLINE:I = 0x0

.field private static final ENVIRONMENT_PRE:I = 0x2

.field private static final HTTP_ENVIRONMENT:I = 0x0

.field private static final MAX_CONNECTION_TIME_OUT:I = 0x2710

.field private static final MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0xea60

.field public static mErrorCode:I

.field public static final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field private static mUtHostnameVerifier:Lcom/alibaba/analytics/core/sync/UtHostnameVerifier;

.field private static mUtSslSocketFactory:Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    .line 45
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    sput v0, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mErrorCode:I

    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtSslSocketFactory:Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;

    .line 58
    sput-object v0, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtHostnameVerifier:Lcom/alibaba/analytics/core/sync/UtHostnameVerifier;

    .line 60
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendRequest([B)Lcom/alibaba/analytics/core/sync/BizResponse;
    .locals 13

    const-string v0, "3"

    const-string v1, ""

    .line 66
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 67
    new-instance v2, Lcom/alibaba/analytics/core/sync/BizResponse;

    invoke-direct {v2}, Lcom/alibaba/analytics/core/sync/BizResponse;-><init>()V

    const/4 v3, 0x0

    .line 74
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-static {}, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->getInstance()Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->getHttpsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 87
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 88
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v2

    .line 93
    :cond_0
    sget-object v6, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtSslSocketFactory:Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f

    const-string v8, "UrlWrapper"

    if-eqz v6, :cond_1

    :try_start_1
    sget-object v6, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtSslSocketFactory:Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 94
    :cond_1
    new-array v6, v7, [Ljava/lang/Object;

    const-string v9, "new SslSocketFactory"

    aput-object v9, v6, v3

    invoke-static {v8, v6}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance v6, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;

    invoke-direct {v6, v4}, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtSslSocketFactory:Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;

    .line 97
    :cond_2
    move-object v6, v5

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v9, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtSslSocketFactory:Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;

    invoke-virtual {v6, v9}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 99
    sget-object v6, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtHostnameVerifier:Lcom/alibaba/analytics/core/sync/UtHostnameVerifier;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtHostnameVerifier:Lcom/alibaba/analytics/core/sync/UtHostnameVerifier;

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/sync/UtHostnameVerifier;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 100
    :cond_3
    new-array v6, v7, [Ljava/lang/Object;

    const-string v9, "new HostnameVerifier"

    aput-object v9, v6, v3

    invoke-static {v8, v6}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v6, Lcom/alibaba/analytics/core/sync/UtHostnameVerifier;

    invoke-direct {v6, v4}, Lcom/alibaba/analytics/core/sync/UtHostnameVerifier;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtHostnameVerifier:Lcom/alibaba/analytics/core/sync/UtHostnameVerifier;

    .line 103
    :cond_4
    move-object v4, v5

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v6, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mUtHostnameVerifier:Lcom/alibaba/analytics/core/sync/UtHostnameVerifier;

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f

    :cond_5
    if-eqz v5, :cond_14

    .line 114
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 115
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    :try_start_2
    const-string v4, "POST"

    .line 117
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_e

    .line 122
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v4, 0x2710

    .line 123
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v4, 0xea60

    .line 124
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 125
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v4, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    .line 126
    invoke-virtual {v5, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Charset"

    const-string v6, "UTF-8"

    .line 127
    invoke-virtual {v5, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/Variables;->getAppkey()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "x-k"

    .line 132
    invoke-virtual {v5, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/Variables;->getRequestAuthenticationInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 140
    invoke-static {p0}, Lcom/alibaba/analytics/utils/MD5Utils;->getMd5Hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    .line 141
    new-array v9, v8, [Ljava/lang/Object;

    const-string/jumbo v10, "signValue"

    aput-object v10, v9, v3

    aput-object v6, v9, v7

    invoke-static {v1, v9}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v9, "x-s"

    .line 142
    invoke-virtual {v5, v9, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    instance-of v6, v4, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    const-string/jumbo v9, "x-t"

    if-eqz v6, :cond_8

    .line 144
    :try_start_4
    check-cast v4, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    invoke-virtual {v4}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->isEncode()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "2"

    .line 145
    invoke-virtual {v5, v9, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v9, v4, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_7
    invoke-virtual {v5, v9, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v9, v4, v3

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_8
    instance-of v6, v4, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    if-nez v6, :cond_9

    instance-of v4, v4, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    if-eqz v4, :cond_a

    :cond_9
    const-string v4, "1"

    .line 153
    invoke-virtual {v5, v9, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v9, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 158
    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v6}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 162
    :cond_a
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    .line 165
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz p0, :cond_b

    .line 166
    array-length v6, p0

    if-lez v6, :cond_b

    .line 167
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 168
    :try_start_6
    invoke-virtual {v6, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 169
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v6

    goto/16 :goto_c

    :catch_1
    move-exception p0

    move-object v4, v6

    goto/16 :goto_8

    :catch_2
    move-exception p0

    move-object v4, v6

    goto/16 :goto_a

    :cond_b
    move-object v6, v4

    :goto_1
    if-eqz v6, :cond_c

    .line 189
    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 191
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_c
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    iput-wide v10, v2, Lcom/alibaba/analytics/core/sync/BizResponse;->rt:J

    .line 199
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/16 v4, 0x800

    .line 202
    :try_start_9
    new-array v5, v4, [B

    .line 204
    :goto_3
    invoke-virtual {v0, v5, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_d

    .line 205
    invoke-virtual {p0, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 212
    :cond_d
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 214
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v4, v0

    goto :goto_6

    :catch_5
    move-exception v4

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_6
    move-exception v0

    .line 208
    :goto_4
    :try_start_b
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v5}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v4, :cond_e

    .line 212
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_5

    :catch_7
    move-exception v0

    .line 214
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :cond_e
    :goto_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 219
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/analytics/core/sync/BizRequest;->parseResult([B)I

    move-result p0

    sput p0, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mErrorCode:I

    .line 220
    sget p0, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mErrorCode:I

    iput p0, v2, Lcom/alibaba/analytics/core/sync/BizResponse;->errCode:I

    .line 221
    sget-object p0, Lcom/alibaba/analytics/core/sync/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    iput-object p0, v2, Lcom/alibaba/analytics/core/sync/BizResponse;->data:Ljava/lang/String;

    goto/16 :goto_e

    :goto_6
    if-eqz v4, :cond_f

    .line 212
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    .line 214
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_f
    :goto_7
    throw p0

    :catchall_3
    move-exception p0

    goto :goto_c

    :catch_9
    move-exception p0

    .line 183
    :goto_8
    :try_start_e
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v8

    iput-wide v5, v2, Lcom/alibaba/analytics/core/sync/BizResponse;->rt:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v4, :cond_10

    .line 189
    :try_start_f
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_9

    :catch_a
    move-exception p0

    .line 191
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_9
    return-object v2

    :catch_b
    move-exception p0

    .line 172
    :goto_a
    :try_start_10
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {v1, v5}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/analytics/core/Variables;->isSelfMonitorTurnOn()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 175
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "type"

    .line 176
    invoke-interface {p0, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v5, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->UPLOAD_FAILED:I

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v5, p0, v6}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    .line 180
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v8

    iput-wide v5, v2, Lcom/alibaba/analytics/core/sync/BizResponse;->rt:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v4, :cond_12

    .line 189
    :try_start_11
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_b

    :catch_c
    move-exception p0

    .line 191
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    :goto_b
    return-object v2

    :goto_c
    if-eqz v4, :cond_13

    .line 189
    :try_start_12
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    .line 191
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_13
    :goto_d
    throw p0

    :catch_e
    move-exception p0

    .line 119
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_14
    :goto_e
    return-object v2

    :catch_f
    move-exception p0

    .line 109
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :catch_10
    move-exception p0

    .line 106
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2
.end method
