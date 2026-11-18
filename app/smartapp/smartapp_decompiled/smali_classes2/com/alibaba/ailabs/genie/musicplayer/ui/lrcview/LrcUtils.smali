.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;
.super Ljava/lang/Object;
.source "LrcUtils.java"


# static fields
.field private static final PATTERN_LINE:Ljava/util/regex/Pattern;

.field private static final PATTERN_TIME:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "LrcUtils"

.field private static final TIME:I = 0x3


# instance fields
.field private retryTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "((\\[\\d\\d:\\d\\d\\.\\d{2,3}\\])+)(.+)"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->PATTERN_LINE:Ljava/util/regex/Pattern;

    const-string v0, "\\[(\\d\\d):(\\d\\d)\\.(\\d{2,3})\\]"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->PATTERN_TIME:Ljava/util/regex/Pattern;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    return-void
.end method

.method static getContentFromNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 157
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    .line 159
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x2710

    .line 160
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 161
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 162
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 163
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 164
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 165
    new-array v2, v2, [B

    .line 167
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 171
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 172
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static parseLine(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 188
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 190
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->PATTERN_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 196
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    sget-object v4, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->PATTERN_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 201
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x2

    .line 203
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 204
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 205
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 207
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v6, :cond_2

    const-wide/16 v12, 0xa

    mul-long v10, v10, v12

    :cond_2
    const-wide/32 v12, 0xea60

    mul-long v4, v4, v12

    const-wide/16 v12, 0x3e8

    mul-long v7, v7, v12

    add-long/2addr v4, v7

    add-long/2addr v4, v10

    .line 211
    new-instance v6, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    invoke-direct {v6, v4, v5, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;-><init>(JLjava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private static parseLrc(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "utf-8"

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 87
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->parseLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 88
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseLrc(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\ufeff"

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 135
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 138
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\\n"

    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 140
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 141
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->parseLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 142
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method static parseLrc([Ljava/io/File;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 53
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    aget-object v0, p0, v0

    const/4 v1, 0x1

    .line 58
    aget-object p0, p0, v1

    .line 59
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->parseLrc(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->parseLrc(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    .line 65
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getTime()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 66
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->setSecondText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static parseLrc([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 105
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    aget-object v0, p0, v0

    const/4 v1, 0x1

    .line 110
    aget-object p0, p0, v1

    .line 111
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->parseLrc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->parseLrc(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    .line 116
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    .line 117
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getTime()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 118
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->setSecondText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLyricData(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "getLyricData"

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 228
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 230
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 233
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v6, 0x1388

    .line 234
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 235
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 236
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v6, :cond_4

    :try_start_3
    const-string v7, "getLyricData, is is null"

    .line 238
    invoke-static {v0, v7}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    :try_start_4
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_1

    .line 261
    invoke-static {v6}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    :cond_1
    if-eqz v4, :cond_2

    .line 264
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 277
    :cond_2
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    if-lt p1, v1, :cond_3

    .line 278
    iput v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    :cond_3
    return-object v2

    .line 241
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    if-gez v7, :cond_8

    const-string v7, "getLyricData, is.available() < 0"

    .line 242
    invoke-static {v0, v7}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 258
    :try_start_6
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_5

    .line 261
    invoke-static {v6}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v4, :cond_6

    .line 264
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 277
    :cond_6
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    if-lt p1, v1, :cond_7

    .line 278
    iput v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    :cond_7
    return-object v2

    .line 245
    :cond_8
    :try_start_7
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v5, 0x400

    .line 246
    :try_start_8
    new-array v5, v5, [B

    .line 248
    :goto_0
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_9

    .line 249
    invoke-virtual {v7, v5, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 251
    :cond_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 252
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string v5, "utf-8"

    .line 253
    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    iput v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 258
    :try_start_9
    invoke-static {v7}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_a

    .line 261
    invoke-static {v6}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    :cond_a
    if-eqz v4, :cond_b

    .line 264
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 277
    :cond_b
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    if-lt p1, v1, :cond_c

    .line 278
    iput v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    :cond_c
    return-object v5

    :catchall_0
    move-exception v5

    move-object v10, v7

    move-object v7, v5

    move-object v5, v10

    goto :goto_1

    :catchall_1
    move-exception v7

    goto :goto_1

    :catchall_2
    move-exception v7

    move-object v6, v2

    goto :goto_1

    :catchall_3
    move-exception v7

    move-object v4, v2

    move-object v6, v4

    .line 258
    :goto_1
    :try_start_a
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_d

    .line 261
    invoke-static {v6}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    :cond_d
    if-eqz v4, :cond_e

    .line 264
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw v7
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 268
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLyricData, Throwable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    if-ge v0, v1, :cond_10

    .line 270
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    .line 271
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->getLyricData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 277
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    if-lt p1, v1, :cond_f

    .line 278
    iput v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    :cond_f
    return-object v2

    :cond_10
    :try_start_c
    const-string p1, "LrcUtils"

    const-string v0, "getLyricData, return null"

    .line 273
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 277
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    if-lt p1, v1, :cond_11

    .line 278
    iput v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    :cond_11
    return-object v2

    .line 277
    :goto_2
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    if-lt v0, v1, :cond_12

    .line 278
    iput v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->retryTime:I

    :cond_12
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
