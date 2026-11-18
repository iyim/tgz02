.class public Lcom/alibaba/motu/tbrest/rest/RestHttpUtils;
.super Ljava/lang/Object;
.source "RestHttpUtils.java"


# static fields
.field public static final HTTP_REQ_TYPE_GET:I = 0x1

.field public static final HTTP_REQ_TYPE_POST_FORM_DATA:I = 0x2

.field public static final HTTP_REQ_TYPE_POST_URL_ENCODED:I = 0x3

.field public static final MAX_CONNECTION_TIME_OUT:I = 0x2710

.field public static final MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0xea60

.field private static final POST_Field_BOTTOM:Ljava/lang/String; = "--GJircTeP--\r\n"

.field private static final POST_Field_TOP:Ljava/lang/String; = "--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendRequest(ILjava/lang/String;Ljava/util/Map;Z)[B
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)[B"
        }
    .end annotation

    move/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "write out error!"

    const-string v4, "connection error!"

    const-string v5, "out close error!"

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    return-object v6

    .line 68
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    move-object/from16 v7, p1

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10

    if-eqz v7, :cond_1c

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v1, v10, :cond_1

    if-ne v1, v8, :cond_2

    .line 80
    :cond_1
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 82
    :cond_2
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eq v1, v10, :cond_4

    if-ne v1, v8, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "GET"

    .line 87
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "POST"

    .line 85
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_f

    :goto_1
    const/4 v4, 0x0

    .line 93
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v0, 0x2710

    .line 94
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v0, 0xea60

    .line 95
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "Connection"

    const-string v11, "close"

    .line 96
    invoke-virtual {v7, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    const-string v0, "Accept-Encoding"

    const-string v11, "gzip,deflate"

    .line 98
    invoke-virtual {v7, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_5
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eq v1, v10, :cond_6

    if-ne v1, v8, :cond_11

    :cond_6
    const-string v0, "Content-Type"

    if-ne v1, v10, :cond_7

    const-string v11, "multipart/form-data; boundary=GJircTeP"

    .line 107
    invoke-virtual {v7, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-ne v1, v8, :cond_8

    const-string v11, "application/x-www-form-urlencoded"

    .line 109
    invoke-virtual {v7, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    if-eqz v2, :cond_f

    .line 113
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 114
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    .line 118
    invoke-interface {v0, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;->getInstance()Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;

    move-result-object v0

    invoke-virtual {v0, v12, v9}, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;->sortResourcesList([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    .line 122
    array-length v13, v12

    const/4 v14, 0x0

    :goto_3
    const-string v15, "write lBaos error!"

    if-ge v14, v13, :cond_d

    aget-object v0, v12, v14

    if-ne v1, v10, :cond_a

    .line 124
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    move-object/from16 v6, v16

    nop

    nop

    if-eqz v6, :cond_9

    :try_start_2
    const-string v8, "--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"

    .line 127
    new-array v9, v10, [Ljava/lang/Object;

    aput-object v0, v9, v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v16, 0x1

    :try_start_3
    aput-object v0, v9, v16

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v0, "\r\n"

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    .line 131
    :goto_4
    invoke-static {v15, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    const/16 v16, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x3

    const/16 v16, 0x1

    if-ne v1, v6, :cond_c

    .line 135
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 136
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    const-string v9, "="

    if-lez v8, :cond_b

    .line 138
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 140
    invoke-static {v15, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 144
    :cond_b
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 146
    invoke-static {v15, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_d
    if-ne v1, v10, :cond_e

    :try_start_6
    const-string v0, "--GJircTeP--\r\n"

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 156
    invoke-static {v15, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :cond_e
    :goto_6
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    move-object v6, v0

    goto :goto_7

    :cond_f
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_10

    .line 161
    array-length v4, v6

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    .line 163
    :goto_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Content-Length"

    invoke-virtual {v7, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_11
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    if-eq v1, v10, :cond_12

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    :cond_12
    if-eqz v6, :cond_13

    .line 171
    array-length v0, v6

    if-lez v0, :cond_13

    .line 173
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 174
    :try_start_8
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 175
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object/from16 v17, v1

    move-object v1, v0

    goto/16 :goto_14

    :catch_5
    move-exception v0

    move-object v6, v1

    goto/16 :goto_12

    :cond_13
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_14

    .line 183
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 185
    invoke-static {v5, v1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :cond_14
    :goto_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_15

    :try_start_a
    const-string v0, "gzip"

    .line 195
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 196
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_b

    .line 198
    :cond_15
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_b
    move-object v6, v0

    const/16 v0, 0x800

    .line 200
    :try_start_b
    new-array v2, v0, [B

    const/4 v4, 0x0

    .line 202
    :goto_c
    invoke-virtual {v6, v2, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_16

    .line 203
    invoke-virtual {v1, v2, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_c

    .line 211
    :cond_16
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 213
    invoke-static {v5, v2}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :goto_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 219
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v1, 0x0

    return-object v1

    :catch_8
    move-exception v0

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/16 v17, 0x0

    goto :goto_10

    :catch_9
    move-exception v0

    const/4 v6, 0x0

    .line 206
    :goto_e
    :try_start_d
    invoke-static {v3, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v6, :cond_18

    .line 211
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 213
    invoke-static {v5, v1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_f
    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v6

    :goto_10
    if-eqz v17, :cond_19

    .line 211
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 213
    invoke-static {v5, v2}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    :cond_19
    :goto_11
    throw v1

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/16 v17, 0x0

    goto :goto_14

    :catch_c
    move-exception v0

    const/4 v6, 0x0

    .line 178
    :goto_12
    :try_start_10
    invoke-static {v3, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v6, :cond_1a

    .line 183
    :try_start_11
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    move-object v1, v0

    .line 185
    invoke-static {v5, v1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_13
    const/4 v1, 0x0

    return-object v1

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v6

    :goto_14
    if-eqz v17, :cond_1b

    .line 183
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_15

    :catch_e
    move-exception v0

    move-object v2, v0

    .line 185
    invoke-static {v5, v2}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :cond_1b
    :goto_15
    throw v1

    :catch_f
    move-exception v0

    .line 90
    invoke-static {v4, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    const/4 v1, 0x0

    return-object v1

    :cond_1c
    move-object v1, v6

    return-object v1

    :catch_10
    move-exception v0

    .line 74
    invoke-static {v4, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_11
    move-exception v0

    move-object v1, v6

    .line 71
    invoke-static {v4, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
