.class public Lcom/uc/webview/export/cyclone/UCCyclone;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;,
        Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;
    }
.end annotation


# static fields
.field private static final FILE_LIST_PREFIX:Ljava/lang/String; = "  "

.field static final LOG_TAG:Ljava/lang/String; = "cyclone"

.field static final RELEASE_BUILD:Z = false

.field private static final TEMP_DEC_DIR_PREFIX:Ljava/lang/String; = "temp_dec_"

.field public static dataFolder:Ljava/lang/String; = "cyclone"

.field public static enableDebugLog:Z = true

.field public static loadLibraryCallback:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static logExtraTag:Ljava/lang/String; = "cyclone."

.field public static sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue; = null
    .annotation build Lcom/uc/webview/export/cyclone/Constant;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static serverZipTag:Ljava/lang/String; = "7z"

.field public static statCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
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

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 87
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static close(Ljava/util/zip/ZipFile;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static containsFile(Ljava/util/ArrayList;Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 654
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 659
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 664
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 838
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x2000

    .line 841
    :try_start_1
    new-array p1, p1, [B

    .line 843
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 844
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 847
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 850
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 847
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 850
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static decompress(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    const-string v4, ""

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 386
    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompress(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static decompress(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    const-string v0, "/"

    const/4 v1, 0x0

    const-string v2, "sdk_dec"

    .line 391
    invoke-static {v2, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    .line 394
    :try_start_0
    const-class p0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZip;

    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCService;->initImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZip;

    if-eqz p0, :cond_1

    .line 396
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/cyclone/service/UCUnSevenZip;->deccompress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_c

    .line 399
    invoke-interface {p0}, Lcom/uc/webview/export/cyclone/service/UCUnSevenZip;->failedFilePath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p4, 0x7

    if-ne p1, p4, :cond_0

    if-eqz p0, :cond_0

    .line 402
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_0

    .line 404
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p5

    goto :goto_1

    :cond_0
    :goto_0
    move-object p5, v1

    .line 409
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    .line 410
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    div-long/2addr v8, v6

    const-string v0, "Error on 7z decoding: %d freeSize: %dKB 7z len: %dKB exception: %s failed file: %s inputFilePath: %s dirPath: %s"

    .line 411
    new-array p4, p4, [Ljava/lang/Object;

    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p4, v2

    const/4 p1, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p4, p1

    const/4 p1, 0x3

    aput-object p5, p4, p1

    const/4 p1, 0x4

    aput-object p0, p4, p1

    const/4 p0, 0x5

    aput-object p2, p4, p0

    const/4 p0, 0x6

    aput-object p3, p4, p0

    .line 411
    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cyclone"

    .line 415
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p2, 0x7d1

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 419
    :cond_1
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p1, 0x7df

    const-string p2, "Error on 7z decoding: no impl found."

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "sdk_decz"

    .line 422
    invoke-static {p0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 430
    new-instance p0, Ljava/util/zip/ZipInputStream;

    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance p4, Ljava/io/FileInputStream;

    invoke-direct {p4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object p1, v1

    const/4 p2, 0x0

    const/4 p4, 0x0

    .line 436
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_b

    const/16 v5, 0x1000

    .line 438
    new-array v6, v5, [B

    .line 439
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".."

    .line 442
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz p5, :cond_4

    .line 447
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p5, v8, v7}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 452
    :cond_4
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "\\"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 458
    :cond_5
    new-instance p1, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-static {p1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 461
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 462
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, p1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 463
    :goto_3
    invoke-virtual {p0, v6, v3, v5}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result p1

    const/4 v7, -0x1

    if-eq p1, v7, :cond_7

    .line 464
    invoke-virtual {v4, v6, v3, p1}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr p2, p1

    const/high16 p1, 0x20000000

    if-gt p2, p1, :cond_6

    goto :goto_3

    .line 467
    :cond_6
    new-instance p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p2, 0x7da

    const-string p3, "Zip contents is too big."

    invoke-direct {p1, p2, p3}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 470
    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 471
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 472
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    add-int/lit8 p4, p4, 0x1

    const/16 p1, 0x400

    if-gt p4, p1, :cond_8

    move-object p1, v4

    goto/16 :goto_2

    .line 475
    :cond_8
    new-instance p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p2, 0x7db

    const-string p3, "Too many files to unzip."

    invoke-direct {p1, p2, p3}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 454
    :cond_9
    :goto_4
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    goto/16 :goto_2

    .line 443
    :cond_a
    new-instance p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p2, 0x7dc

    const-string p3, "Zip entry [%s] not valid."

    new-array p4, v2, [Ljava/lang/Object;

    aput-object v4, p4, v3

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 479
    :cond_b
    :try_start_4
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    if-eqz p1, :cond_d

    const-string p0, "sdk_decz_s"

    .line 485
    invoke-static {p0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->stat(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_c
    const-string p0, "sdk_dec_s"

    .line 494
    invoke-static {p0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    .line 483
    :cond_d
    :try_start_5
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p1, 0x7d2

    const-string p2, "No entry exists in zip file. Make sure specify a valid zip file url."

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    .line 479
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    const-string p1, "sdk_dec_e"

    .line 488
    invoke-static {p1, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 489
    instance-of p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz p1, :cond_e

    .line 490
    nop

    nop

    throw p0

    .line 492
    :cond_e
    new-instance p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p2, 0x7d5

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public static declared-synchronized decompressIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    const-class v1, Lcom/uc/webview/export/cyclone/UCCyclone;

    monitor-enter v1

    .line 316
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sget v13, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Other:I

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 315
    invoke-static/range {v2 .. v13}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;ZI)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized decompressIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;ZI)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v8, p8

    const-class v9, Lcom/uc/webview/export/cyclone/UCCyclone;

    monitor-enter v9

    const/4 v7, 0x0

    move-object v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-object/from16 v6, p8

    .line 512
    :try_start_0
    invoke-static/range {v1 .. v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->isDecompressFinished(Ljava/lang/String;JJLjava/io/File;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 513
    monitor-exit v9

    return v7

    .line 517
    :cond_0
    :try_start_1
    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_d

    .line 525
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 526
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    new-instance v1, Ljava/io/File;

    const-string v2, ".cache"

    invoke-direct {v1, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 529
    :cond_1
    new-instance v11, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "temp_dec_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 532
    invoke-static {v11}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    .line 537
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 538
    sget-object v1, Lcom/uc/webview/export/cyclone/UCCyclone;->serverZipTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 540
    :cond_2
    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->detectZipByFileType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 542
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 544
    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    move-object/from16 v4, p9

    .line 543
    invoke-static {v0, p0, v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompress(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;)V

    move-object v0, p2

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-object/from16 v5, p8

    .line 548
    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectMakeDecompressNotFinished(Ljava/lang/String;JJLjava/io/File;)V

    .line 550
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 552
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    .line 553
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 556
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 558
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 559
    invoke-static {v4, v7, v12}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    goto :goto_3

    .line 562
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 564
    :cond_5
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x3ec

    const-string v2, "File [%s] delete failed."

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v4, v3, v7

    .line 565
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 569
    :cond_6
    :goto_3
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 571
    :cond_7
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x3ed

    const-string v2, "File [%s] renameTo [%s] failed."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    aput-object v4, v5, v10

    .line 572
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    move-object v0, p2

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-object/from16 v5, p8

    move/from16 v6, p11

    .line 575
    invoke-static/range {v0 .. v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectMakeDecompressFinished(Ljava/lang/String;JJLjava/io/File;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 581
    :try_start_3
    invoke-static {v11, v7, v12}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    if-eqz p10, :cond_a

    .line 586
    invoke-static/range {p7 .. p7}, Lcom/uc/webview/export/cyclone/UCCyclone;->deleteFile(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 589
    :cond_a
    monitor-exit v9

    return v10

    .line 577
    :cond_b
    :try_start_4
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x7d8

    const-string v2, "Zip [%s] decompress success but no items found."

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p7, v3, v7

    .line 578
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 581
    :try_start_5
    invoke-static {v11, v7, v12}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    throw v0

    :cond_c
    move-object v3, p0

    move-object/from16 v4, p9

    goto/16 :goto_0

    .line 518
    :cond_d
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x3e9

    const-string v2, "File [%s] not exists."

    new-array v3, v10, [Ljava/lang/Object;

    .line 519
    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v9

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static declared-synchronized decompressIfNeeded(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    const-class v1, Lcom/uc/webview/export/cyclone/UCCyclone;

    monitor-enter v1

    .line 324
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sget v13, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Other:I

    move-object v2, p0

    move v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 323
    invoke-static/range {v2 .. v13}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;ZLjava/lang/String;JJLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;ZI)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized decompressIfNeeded(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;ZI)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    const-class v1, Lcom/uc/webview/export/cyclone/UCCyclone;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    move-object v2, p0

    move v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    .line 331
    invoke-static/range {v2 .. v13}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;ZLjava/lang/String;JJLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;ZI)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized decompressIfNeeded(Landroid/content/Context;ZLjava/lang/String;JJLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;ZI)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    const-class v1, Lcom/uc/webview/export/cyclone/UCCyclone;

    monitor-enter v1

    if-eqz p1, :cond_0

    .line 502
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->serverZipTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v3, v0

    move-object v2, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v2 .. v13}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;ZI)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static deleteFile(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    .line 729
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 731
    :cond_0
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x3ec

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 732
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "File [%s] delete failed."

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static deleteUnusedFiles(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    .line 241
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDataFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 243
    sget-object v2, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_0

    .line 244
    sget-object v2, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    .line 246
    invoke-static {v1, v3, v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    new-instance v1, Lcom/uc/webview/export/cyclone/UCCyclone$1;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCCyclone$1;-><init>()V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 257
    array-length v1, p0

    if-lez v1, :cond_1

    .line 258
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 259
    invoke-static {v4, v2, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    :cond_1
    return-void
.end method

.method public static detect7zFromFileName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".7z"

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_7z_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_7z"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static detectZipByFileType(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 361
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    .line 366
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/util/zip/ZipFile;)V

    throw p0

    :catch_0
    const/4 p0, 0x0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/util/zip/ZipFile;)V

    :goto_0
    return p0
.end method

.method public static expectCreateDirFile(Ljava/io/File;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x3

    .line 75
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x3eb

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "Directory [%s] mkdir failed."

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static expectFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 280
    :cond_0
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v3, 0x3f8

    new-array v2, v2, [Ljava/lang/Object;

    .line 281
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "File [%s] cannot read."

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v3, 0x3e9

    new-array v2, v2, [Ljava/lang/Object;

    .line 278
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "File [%s] not exists."

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static expectFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static expectMakeDecompressFinished(Ljava/lang/String;JJLjava/io/File;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v8, 0x3ee

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 613
    :try_start_0
    invoke-static/range {v1 .. v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressStopFlgFile(Ljava/lang/String;JJLjava/io/File;Z)Ljava/io/File;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "createNewFile return false"

    if-nez v1, :cond_1

    .line 616
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    .line 625
    :try_start_2
    invoke-static/range {v9 .. v15}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressStartFlgFile(Ljava/lang/String;JJLjava/io/File;Z)Ljava/io/File;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 628
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 630
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "delete File return false"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 636
    :cond_3
    :goto_1
    sget v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Sdcard_Share_Core:I

    move/from16 v1, p6

    if-ne v1, v0, :cond_6

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    move/from16 v16, p6

    .line 638
    :try_start_3
    invoke-static/range {v9 .. v16}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressOrignFlgFile(Ljava/lang/String;JJLjava/io/File;ZI)Ljava/io/File;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 641
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 643
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 646
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v1, v8, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :cond_6
    return-void

    :catch_1
    move-exception v0

    .line 633
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v2, 0x3ec

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 621
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v1, v8, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method static expectMakeDecompressNotFinished(Ljava/lang/String;JJLjava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 373
    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressStartFlgFile(Ljava/lang/String;JJLjava/io/File;Z)Ljava/io/File;

    move-result-object p0

    .line 374
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 375
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "createNewFile return false"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 380
    new-instance p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p2, 0x3ee

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method private static formatTime(J)Ljava/lang/String;
    .locals 2

    .line 911
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyy-MM-dd kk:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 912
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs genFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[[B[Ljava/lang/Object;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDataFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 796
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p8

    if-lez p8, :cond_0

    .line 797
    new-instance p8, Ljava/io/File;

    invoke-direct {p8, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p8}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    :cond_0
    const-string p1, ""

    if-nez p2, :cond_1

    move-object p2, p1

    :cond_1
    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p3

    .line 805
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 806
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result p3

    if-nez p3, :cond_3

    .line 809
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 812
    :cond_3
    invoke-static {p7}, Lcom/uc/webview/export/cyclone/UCCyclone;->getCodeLength([[B)I

    move-result p3

    int-to-long p3, p3

    .line 814
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p5, v0, p3

    if-nez p5, :cond_4

    sget-object p3, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {p2, p3}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 815
    :cond_4
    invoke-static {p7, p2}, Lcom/uc/webview/export/cyclone/UCCyclone;->getFile([[BLjava/io/File;)V

    .line 816
    sget-boolean p3, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez p3, :cond_5

    const/4 p3, 0x0

    goto :goto_1

    :cond_5
    const-string p3, "d"

    const-string p4, "cyclone"

    invoke-static {p3, p4}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_6

    .line 818
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "genFile Extract new "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Throwable;

    invoke-virtual {p3, p0, p1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 822
    :cond_6
    sget-object p0, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz p0, :cond_7

    .line 823
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p2
.end method

.method private static getCodeLength([[B)I
    .locals 4

    .line 830
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 831
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static getDataFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .annotation build Lcom/uc/webview/export/cyclone/Constant;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/cyclone/UCKnownException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 209
    :try_start_0
    sget-object v2, Lcom/uc/webview/export/cyclone/UCCyclone;->dataFolder:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "cyclone"

    .line 210
    sput-object v2, Lcom/uc/webview/export/cyclone/UCCyclone;->dataFolder:Ljava/lang/String;

    .line 212
    :cond_0
    sget-object v2, Lcom/uc/webview/export/cyclone/UCCyclone;->dataFolder:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    sget-object v2, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v2, :cond_2

    .line 224
    const-class v2, Lcom/uc/webview/export/cyclone/UCCyclone;

    monitor-enter v2

    .line 225
    :try_start_1
    sget-object v3, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v3, :cond_1

    .line 226
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v3, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 228
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 231
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "i"

    const-string v2, "cyclone"

    invoke-static {v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 233
    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "getDataFolder: ok."

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_4
    return-object p0

    :catch_0
    move-exception p0

    .line 214
    sget-boolean v2, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "e"

    const-string v2, "cyclone"

    invoke-static {v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    const/4 v2, 0x1

    .line 217
    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p0, v2, v1

    const-string v1, "getDataFolder: from dir app_* Exception:"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 220
    :cond_6
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x3eb

    invoke-direct {v0, v1, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static getDecompressFileHash(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation build Lcom/uc/webview/export/cyclone/Constant;
    .end annotation

    .line 287
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressSourceHash(Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDecompressOrignFlgFile(Ljava/lang/String;JJLjava/io/File;ZI)Ljava/io/File;
    .locals 8

    .line 606
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p6

    invoke-static/range {v2 .. v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressSourceHash(Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->DecFileOrignFlag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDecompressSourceHash(Ljava/lang/String;JJZ)Ljava/lang/String;
    .locals 1

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {p1, p2, p3, p4}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDecompressStartFlgFile(Ljava/lang/String;JJLjava/io/File;Z)Ljava/io/File;
    .locals 8

    .line 600
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p6

    invoke-static/range {v2 .. v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressSourceHash(Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_start"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getDecompressStopFlgFile(Ljava/lang/String;JJLjava/io/File;Z)Ljava/io/File;
    .locals 7

    .line 594
    new-instance v0, Ljava/io/File;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressSourceHash(Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getFile([[BLjava/io/File;)V
    .locals 3
    .annotation build Lcom/uc/webview/export/cyclone/Constant;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 159
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v2, p0, v0

    .line 161
    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static getFileInfo(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const-string v0, " "

    .line 901
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 902
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 903
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", failed:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 168
    invoke-static {p0, v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getFolderSize(Ljava/io/File;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFolderSize(Ljava/io/File;J)J
    .locals 10

    .line 174
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 175
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 178
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 179
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 180
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 183
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p0, v6

    .line 185
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    .line 187
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, ".."

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "./"

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "../"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 191
    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 192
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 193
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v3, v7

    cmp-long v7, p1, v1

    if-ltz v7, :cond_4

    cmp-long v7, v3, p1

    if-lez v7, :cond_4

    return-wide v3

    :catch_0
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    return-wide v3
.end method

.method public static getSourceHash(JJ)Ljava/lang/String;
    .locals 1

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    .line 307
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSourceHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;
    .locals 7

    .line 753
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 760
    :cond_0
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    if-ne p1, v0, :cond_1

    const-string p1, "MD5"

    const-string v0, "%032x"

    goto :goto_0

    .line 763
    :cond_1
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->SHA1:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    if-ne p1, v0, :cond_2

    const-string p1, "SHA-1"

    const-string v0, "%040x"

    goto :goto_0

    .line 766
    :cond_2
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->SHA256:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    if-ne p1, v0, :cond_4

    const-string p1, "SHA-256"

    const-string v0, "%064x"

    :goto_0
    const/high16 v2, 0x20000

    .line 774
    new-array v3, v2, [B

    .line 777
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 778
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 p0, 0x0

    .line 779
    :try_start_1
    invoke-virtual {v4, v3, p0, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 780
    invoke-virtual {p1, v3, p0, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 786
    :cond_3
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 788
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 789
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p0

    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v4, v1

    .line 783
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 786
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v4

    :goto_3
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw p0

    :cond_4
    return-object v1
.end method

.method static invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-static {v0, p0, p1, p2, p3}, Lcom/uc/webview/export/cyclone/UCCyclone;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/uc/webview/export/cyclone/Constant;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 117
    :goto_0
    invoke-static {p0, p1, p2, p4}, Lcom/uc/webview/export/cyclone/UCCyclone;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/uc/webview/export/cyclone/Constant;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 126
    :try_start_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .line 129
    instance-of p1, p0, Ljava/lang/Exception;

    if-nez p1, :cond_1

    .line 131
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 132
    nop

    nop

    throw p0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 130
    :cond_1
    nop

    nop

    throw p0
.end method

.method public static isDecompressFinished(Ljava/io/File;)Z
    .locals 10

    .line 338
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 339
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 340
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 341
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v1, 0x1

    .line 342
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v9, 0x1

    move-object v8, p0

    .line 343
    invoke-static/range {v3 .. v9}, Lcom/uc/webview/export/cyclone/UCCyclone;->isDecompressFinished(Ljava/lang/String;JJLjava/io/File;Z)Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method static isDecompressFinished(Ljava/lang/String;JJLjava/io/File;Z)Z
    .locals 1

    .line 349
    invoke-static/range {p0 .. p6}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressStopFlgFile(Ljava/lang/String;JJLjava/io/File;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-static/range {p0 .. p6}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressStartFlgFile(Ljava/lang/String;JJLjava/io/File;Z)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static listAllDerivedFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 857
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    .line 859
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " get failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 861
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    .line 862
    invoke-static {v0, p0, p1}, Lcom/uc/webview/export/cyclone/UCCyclone;->listAllFiles(Ljava/lang/StringBuilder;Ljava/io/File;Ljava/lang/String;)V

    .line 864
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static listAllFiles(Ljava/lang/StringBuilder;Ljava/io/File;)V
    .locals 1

    const-string v0, "  "

    .line 868
    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->listAllFiles(Ljava/lang/StringBuilder;Ljava/io/File;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static listAllFiles(Ljava/lang/StringBuilder;Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .line 873
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\n"

    if-nez v0, :cond_0

    .line 874
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [Not Exists]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 878
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [dir]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 883
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 884
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 885
    invoke-static {p0, v3, p2}, Lcom/uc/webview/export/cyclone/UCCyclone;->listAllFiles(Ljava/lang/StringBuilder;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 887
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->getFileInfo(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 892
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getFileInfo(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 895
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "listAllFiles failed:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static optimizedFileFor(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 736
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".dex"

    .line 737
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "."

    .line 738
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 742
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    .line 743
    invoke-virtual {v2, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 749
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    .locals 11

    .line 673
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 678
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 679
    instance-of v4, p2, Ljava/io/File;

    if-eqz v4, :cond_1

    .line 680
    nop

    nop

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 681
    :cond_1
    instance-of v4, p2, [Ljava/io/File;

    if-eqz v4, :cond_2

    .line 682
    nop

    nop

    invoke-static {v3, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 684
    :cond_2
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p1, 0x3f2

    new-array v0, v1, [Ljava/lang/Object;

    .line 686
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "File or File[] argument expected, but get [%s]."

    .line 685
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    move-object v3, v0

    .line 689
    :goto_0
    sget-boolean p2, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez p2, :cond_4

    move-object p2, v0

    goto :goto_1

    :cond_4
    const-string p2, "i"

    const-string v4, "cyclone"

    invoke-static {p2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_5

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recursiveDelete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {p2, v4, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 694
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_6

    .line 695
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    goto :goto_2

    :cond_6
    new-array p1, v1, [Ljava/io/File;

    aput-object p0, p1, v2

    move-object p0, p1

    :goto_2
    const/4 p1, -0x1

    .line 698
    :cond_7
    array-length v5, p0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_c

    aget-object v7, p0, v6

    if-eqz v3, :cond_8

    .line 699
    invoke-static {v3, v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->containsFile(Ljava/util/ArrayList;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 700
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 701
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const-string v10, "."

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b

    .line 702
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-eqz p2, :cond_a

    .line 705
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "recursiveDelete delete file:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Throwable;

    invoke-virtual {p2, v8, v9}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 707
    :cond_a
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_b
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    add-int/2addr p1, v1

    .line 712
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p1, p0, :cond_d

    .line 713
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    goto :goto_5

    :cond_d
    move-object p0, v0

    :goto_5
    if-eqz p0, :cond_e

    const/16 v5, 0x100

    if-lt p1, v5, :cond_7

    .line 719
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_6
    if-ltz p0, :cond_10

    .line 720
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p2, :cond_f

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recursiveDelete delete dir:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 724
    :cond_f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public static stat(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation build Lcom/uc/webview/export/cyclone/Constant;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->statCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
