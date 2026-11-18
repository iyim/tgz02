.class public Lcom/android/alibaba/ip/runtime/ApplicationPatch;
.super Ljava/lang/Object;
.source "ApplicationPatch.java"


# instance fields
.field public final data:[B

.field public final patchVersion:I

.field public final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->path:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->patchVersion:I

    const/4 p1, 0x0

    .line 36
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->data:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->path:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->patchVersion:I

    .line 42
    iput-object p2, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->data:[B

    return-void
.end method

.method public static final input2byte(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    .line 82
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    .line 85
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static makePatch(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/alibaba/ip/runtime/ApplicationPatch;",
            ">;"
        }
    .end annotation

    const-string v0, "resources.ap_"

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 53
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    new-instance v3, Lcom/android/alibaba/ip/runtime/ApplicationPatch;

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->input2byte(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v3, v0, v2, p1}, Lcom/android/alibaba/ip/runtime/ApplicationPatch;-><init>(Ljava/lang/String;[BI)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "classes.dex"

    .line 58
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;

    invoke-direct {v0, p0, p1}, Lcom/android/alibaba/ip/runtime/ApplicationPatch;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_1

    :catch_1
    move-exception p0

    .line 63
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    .line 67
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :goto_1
    if-eqz v4, :cond_2

    .line 67
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    :cond_2
    :goto_2
    throw p0

    :cond_3
    :goto_3
    return-object v1
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->data:[B

    return-object v0
.end method

.method public getPatchVersion()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->patchVersion:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationPatch{path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", patchVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->patchVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
