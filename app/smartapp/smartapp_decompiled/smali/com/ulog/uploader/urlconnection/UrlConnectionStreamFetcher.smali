.class public Lcom/ulog/uploader/urlconnection/UrlConnectionStreamFetcher;
.super Ljava/lang/Object;
.source "UrlConnectionStreamFetcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ULog.UrlConnectionFetcher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static loadData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const-string v0, "----------izQ290kHh6g3Yn2IeyJCoc"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 55
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 58
    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v4, 0x2710

    .line 59
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v4, 0xea60

    .line 60
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v4, 0x1

    .line 61
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 62
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 63
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "POST"

    .line 64
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    .line 65
    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "multipart/form-data;boundary=----------izQ290kHh6g3Yn2IeyJCoc"

    .line 66
    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p2, p4, p5, p6, p7}, Lcom/ulog/uploader/utils/UploadUtils;->buildComArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 70
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "&"

    const-string p6, ""

    invoke-virtual {p2, p5, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ulog/uploader/utils/UploadUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 71
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&sign="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Wpk-header"

    const-string p4, "UTF-8"

    .line 72
    invoke-static {p2, p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-Disposition"

    .line 76
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "form-data; name=\"file\"; filename="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 p4, 0x140

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string p4, "--"

    .line 80
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "\r\nContent-Disposition: form-data; name=\"file\";filename=\""

    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\"\r\nContent-Type: application/octet-stream\r\n\r\n"

    .line 84
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 90
    new-instance p3, Ljava/io/BufferedInputStream;

    new-instance p4, Ljava/io/FileInputStream;

    invoke-direct {p4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, p4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p0, 0x4000

    .line 91
    :try_start_3
    new-array p0, p0, [B

    .line 93
    :goto_0
    invoke-virtual {p3, p0}, Ljava/io/InputStream;->read([B)I

    move-result p4

    if-eq p4, v1, :cond_0

    .line 94
    invoke-virtual {p2, p0, v2, p4}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "\r\n--"

    .line 98
    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "--\r\n"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 100
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 101
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    .line 104
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/ulog/uploader/utils/UploadUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p4, :cond_1

    .line 118
    invoke-static {p1}, Lcom/ulog/uploader/utils/UploadUtils;->releaseConnection(Ljava/net/HttpURLConnection;)V

    .line 119
    invoke-static {p3}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    invoke-static {p2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    .line 109
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p4

    const/16 p5, 0xc8

    if-ne p4, p5, :cond_2

    .line 110
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 111
    invoke-virtual {p4, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    :goto_1
    invoke-static {p1}, Lcom/ulog/uploader/utils/UploadUtils;->releaseConnection(Ljava/net/HttpURLConnection;)V

    .line 119
    invoke-static {p3}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    invoke-static {p2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    .line 113
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    move-object p3, v3

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p2, v3

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p2, v3

    move-object p3, p2

    :goto_2
    move-object v3, p1

    goto :goto_3

    :catchall_3
    move-exception p0

    move-object p1, v3

    move-object p2, p1

    goto :goto_5

    :catch_3
    move-exception p0

    move-object p2, v3

    move-object p3, p2

    :goto_3
    :try_start_6
    const-string p1, "ULog.UrlConnectionFetcher"

    const-string/jumbo p4, "upload file error"

    .line 116
    new-array p5, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, p4, p5}, Lcom/uc/sdk/ulog/ULog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 118
    invoke-static {v3}, Lcom/ulog/uploader/utils/UploadUtils;->releaseConnection(Ljava/net/HttpURLConnection;)V

    .line 119
    invoke-static {p3}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    invoke-static {p2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_4
    move-exception p0

    move-object p1, v3

    :goto_4
    move-object v3, p3

    .line 118
    :goto_5
    invoke-static {p1}, Lcom/ulog/uploader/utils/UploadUtils;->releaseConnection(Ljava/net/HttpURLConnection;)V

    .line 119
    invoke-static {v3}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    invoke-static {p2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 121
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method
