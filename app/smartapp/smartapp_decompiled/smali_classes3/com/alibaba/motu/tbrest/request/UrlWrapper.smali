.class public Lcom/alibaba/motu/tbrest/request/UrlWrapper;
.super Ljava/lang/Object;
.source "UrlWrapper.java"


# static fields
.field private static final MAX_CONNECTION_TIME_OUT:I = 0x2710

.field private static final MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0xea60

.field public static mErrorCode:I

.field private static mRestSslSocketFactory:Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.keepAlive"

    const-string v1, "true"

    .line 44
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendRequest(Ljava/lang/String;[B)Lcom/alibaba/motu/tbrest/request/BizResponse;
    .locals 7

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRequest use adashx, bytes length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/alibaba/motu/tbrest/request/BizResponse;

    invoke-direct {v0}, Lcom/alibaba/motu/tbrest/request/BizResponse;-><init>()V

    .line 57
    :try_start_0
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/motu/tbrest/SendService;->openHttp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d

    const-string v2, "/upload"

    if-eqz v1, :cond_1

    .line 58
    :try_start_1
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_1
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    :goto_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 64
    instance-of v2, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_3

    .line 65
    sget-object v2, Lcom/alibaba/motu/tbrest/request/UrlWrapper;->mRestSslSocketFactory:Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    new-instance v2, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/alibaba/motu/tbrest/request/UrlWrapper;->mRestSslSocketFactory:Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;

    .line 68
    :cond_2
    move-object v1, p0

    nop

    nop

    sget-object v2, Lcom/alibaba/motu/tbrest/request/UrlWrapper;->mRestSslSocketFactory:Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    :cond_3
    if-eqz p0, :cond_d

    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 78
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    :try_start_2
    const-string v2, "POST"

    .line 80
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_d

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v3, 0x2710

    .line 85
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xea60

    .line 86
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 87
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 88
    invoke-virtual {p0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Charset"

    const-string v3, "UTF-8"

    .line 89
    invoke-virtual {p0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/motu/tbrest/SendService;->appKey:Ljava/lang/String;

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "x-k"

    .line 94
    invoke-virtual {p0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :try_start_3
    const-string v3, ""

    .line 101
    new-instance v4, Lcom/alibaba/motu/tbrest/sign/RestBaseRequestAuthentication;

    invoke-direct {v4, v1, v3, v2}, Lcom/alibaba/motu/tbrest/sign/RestBaseRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    invoke-static {p1}, Lcom/alibaba/motu/tbrest/utils/MD5Utils;->getMd5Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alibaba/motu/tbrest/sign/RestBaseRequestAuthentication;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    const-string v3, "x-s"

    .line 104
    invoke-virtual {p0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-t"

    const-string v3, "3"

    .line 105
    invoke-virtual {p0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 112
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v1, 0x0

    .line 115
    :try_start_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz p1, :cond_5

    .line 116
    array-length v5, p1

    if-lez v5, :cond_5

    .line 117
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 118
    :try_start_5
    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 119
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto/16 :goto_e

    :catch_1
    move-exception p0

    move-object v1, v5

    goto/16 :goto_a

    :catch_2
    move-exception p0

    move-object v1, v5

    goto/16 :goto_c

    :cond_5
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_6

    .line 132
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 139
    :cond_6
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iput-wide v5, v0, Lcom/alibaba/motu/tbrest/request/BizResponse;->rt:J

    .line 142
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    :try_start_7
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 p0, 0x800

    .line 145
    :try_start_8
    new-array v1, p0, [B

    .line 147
    :goto_5
    invoke-virtual {v3, v1, v2, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 148
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 155
    :cond_7
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catchall_1
    move-exception p0

    move-object v1, v3

    goto :goto_8

    :catch_4
    move-exception p0

    move-object v1, v3

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_8

    :catch_5
    move-exception p0

    .line 151
    :goto_6
    :try_start_a
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v1, :cond_8

    .line 155
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 161
    :cond_8
    :goto_7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-lez p0, :cond_d

    .line 162
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/request/BizRequest;->parseResult([B)I

    move-result p0

    sput p0, Lcom/alibaba/motu/tbrest/request/UrlWrapper;->mErrorCode:I

    .line 163
    sget p0, Lcom/alibaba/motu/tbrest/request/UrlWrapper;->mErrorCode:I

    iput p0, v0, Lcom/alibaba/motu/tbrest/request/BizResponse;->errCode:I

    .line 164
    sget-object p0, Lcom/alibaba/motu/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    iput-object p0, v0, Lcom/alibaba/motu/tbrest/request/BizResponse;->data:Ljava/lang/String;

    goto :goto_10

    :goto_8
    if-eqz v1, :cond_9

    .line 155
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 158
    :cond_9
    :goto_9
    throw p0

    :catchall_3
    move-exception p0

    goto :goto_e

    :catch_8
    move-exception p0

    .line 126
    :goto_a
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v3

    iput-wide p0, v0, Lcom/alibaba/motu/tbrest/request/BizResponse;->rt:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v1, :cond_a

    .line 132
    :try_start_e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_b

    :catch_9
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_a
    :goto_b
    return-object v0

    :catch_a
    move-exception p0

    .line 122
    :goto_c
    :try_start_f
    invoke-virtual {p0}, Ljavax/net/ssl/SSLHandshakeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v3

    iput-wide p0, v0, Lcom/alibaba/motu/tbrest/request/BizResponse;->rt:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v1, :cond_b

    .line 132
    :try_start_10
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_d

    :catch_b
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_b
    :goto_d
    return-object v0

    :goto_e
    if-eqz v1, :cond_c

    .line 132
    :try_start_11
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_f

    :catch_c
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 135
    :cond_c
    :goto_f
    throw p0

    :catch_d
    :cond_d
    :goto_10
    return-object v0
.end method
