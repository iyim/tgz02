.class public Lcom/alibaba/ailabs/genie/utils/stream/LineReader;
.super Ljava/lang/Object;
.source "LineReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;,
        Lcom/alibaba/ailabs/genie/utils/stream/LineReader$ReadALineCallback;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public notifyListener(Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;Ljava/lang/String;I)Z
    .locals 0

    .line 111
    invoke-interface {p1, p2, p3}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;->onLine(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public read(Ljava/io/File;Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;)Z
    .locals 1

    .line 40
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader;->read(Ljava/io/InputStreamReader;Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public read(Ljava/io/InputStream;Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;)Z
    .locals 1

    .line 53
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader;->read(Ljava/io/InputStreamReader;Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;)Z

    move-result p1

    return p1
.end method

.method public read(Ljava/io/InputStreamReader;Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 93
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    add-int/lit8 v4, p1, 0x1

    .line 94
    invoke-virtual {p0, p2, v3, p1}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader;->notifyListener(Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;Ljava/lang/String;I)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move p1, v4

    goto :goto_0

    .line 100
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    move p1, v1

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move p1, v1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_2
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    throw p1

    :catch_1
    const/4 p1, 0x0

    :goto_3
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    :goto_4
    if-eqz p2, :cond_2

    .line 104
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;->onDone()V

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public read(Ljava/lang/String;Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;)Z
    .locals 1

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/Check;->d(Z)V

    .line 122
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader;->read(Ljava/io/File;Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;)Z

    move-result p1

    return p1
.end method

.method public readALine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/stream/LineReader$ReadALineCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader$ReadALineCallback;-><init>(Lcom/alibaba/ailabs/genie/utils/stream/LineReader$1;)V

    .line 77
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader;->read(Ljava/io/InputStreamReader;Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;)Z

    .line 78
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader$ReadALineCallback;->getResult()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
