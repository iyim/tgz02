.class public Lcom/aliyun/oss/internal/Mimetypes;
.super Ljava/lang/Object;
.source "Mimetypes.java"


# static fields
.field public static final DEFAULT_MIMETYPE:Ljava/lang/String; = "application/octet-stream"

.field private static mimetypes:Lcom/aliyun/oss/internal/Mimetypes;


# instance fields
.field private extensionToMimetypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/internal/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aliyun/oss/internal/Mimetypes;
    .locals 5

    const-class v0, Lcom/aliyun/oss/internal/Mimetypes;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/aliyun/oss/internal/Mimetypes;->mimetypes:Lcom/aliyun/oss/internal/Mimetypes;

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/aliyun/oss/internal/Mimetypes;->mimetypes:Lcom/aliyun/oss/internal/Mimetypes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object v1

    .line 50
    :cond_0
    :try_start_1
    new-instance v1, Lcom/aliyun/oss/internal/Mimetypes;

    invoke-direct {v1}, Lcom/aliyun/oss/internal/Mimetypes;-><init>()V

    sput-object v1, Lcom/aliyun/oss/internal/Mimetypes;->mimetypes:Lcom/aliyun/oss/internal/Mimetypes;

    .line 51
    sget-object v1, Lcom/aliyun/oss/internal/Mimetypes;->mimetypes:Lcom/aliyun/oss/internal/Mimetypes;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/mime.types"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "Loading mime types from file in the classpath: mime.types"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :try_start_2
    sget-object v2, Lcom/aliyun/oss/internal/Mimetypes;->mimetypes:Lcom/aliyun/oss/internal/Mimetypes;

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/internal/Mimetypes;->loadMimetypes(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 58
    :try_start_4
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v3

    const-string v4, "Failed to load mime types from file in the classpath: mime.types"

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 61
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 62
    :catch_1
    :try_start_6
    throw v2

    .line 65
    :cond_1
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Unable to find \'mime.types\' file in classpath"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 67
    :catch_2
    :goto_2
    sget-object v1, Lcom/aliyun/oss/internal/Mimetypes;->mimetypes:Lcom/aliyun/oss/internal/Mimetypes;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private getMimetypeByExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/aliyun/oss/internal/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/aliyun/oss/internal/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getMimetype(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/Mimetypes;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMimetype(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/oss/internal/Mimetypes;->getMimetype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/aliyun/oss/internal/Mimetypes;->getMimetypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method public getMimetype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/aliyun/oss/internal/Mimetypes;->getMimetypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 114
    :cond_0
    invoke-direct {p0, p2}, Lcom/aliyun/oss/internal/Mimetypes;->getMimetypeByExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method public loadMimetypes(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "#"

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/aliyun/oss/internal/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method
