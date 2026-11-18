.class public Landroid/taobao/windvane/cache/WVFileCache;
.super Ljava/lang/Object;
.source "WVFileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;
    }
.end annotation


# static fields
.field public static final CREATE:I = 0x4

.field public static final DELETE:I = 0x3

.field private static final FILE_INFO:Ljava/lang/String; = "wv_web_info.dat"

.field public static final READ:I = 0x1

.field private static TAG:Ljava/lang/String; = "WVFileCache"

.field public static final WRITE:I = 0x2


# instance fields
.field private baseDirPath:Ljava/lang/String;

.field private fInfoChannel:Ljava/nio/channels/FileChannel;

.field private fInfoOs:Ljava/io/RandomAccessFile;

.field private infoDirPath:Ljava/lang/String;

.field private isInit:Z

.field private isNoSpaceClear:Z

.field private maxCapacity:I

.field private sdcard:Z

.field private storedFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/cache/WVFileInfo;",
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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;-><init>(Landroid/taobao/windvane/cache/WVFileCache;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->isNoSpaceClear:Z

    const/16 v0, 0x64

    .line 47
    iput v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->maxCapacity:I

    .line 52
    iput-object p1, p0, Landroid/taobao/windvane/cache/WVFileCache;->baseDirPath:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Landroid/taobao/windvane/cache/WVFileCache;->infoDirPath:Ljava/lang/String;

    .line 54
    iput p3, p0, Landroid/taobao/windvane/cache/WVFileCache;->maxCapacity:I

    .line 55
    iput-boolean p4, p0, Landroid/taobao/windvane/cache/WVFileCache;->sdcard:Z

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/cache/WVFileCache;)I
    .locals 0

    .line 29
    iget p0, p0, Landroid/taobao/windvane/cache/WVFileCache;->maxCapacity:I

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/cache/WVFileCache;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/taobao/windvane/cache/WVFileCache;->baseDirPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Landroid/taobao/windvane/cache/WVFileCache;)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    return-object p0
.end method

.method private collectFiles()Z
    .locals 14

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 374
    :try_start_0
    iget-object v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 375
    iget-object v3, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 376
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 378
    sget-object v3, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectFiles fInfoChannel.read error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 381
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    sget-object v3, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectFiles read fileinfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const-string v4, "collectFiles"

    const-string/jumbo v5, "read fileinfo success"

    .line 387
    invoke-static {v4, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x3c

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 391
    :goto_1
    array-length v8, v2

    const/4 v9, 0x1

    if-ge v5, v8, :cond_3

    .line 392
    aget-byte v8, v2, v5

    const/16 v10, 0xa

    if-ne v8, v10, :cond_2

    sub-int v8, v5, v7

    .line 394
    invoke-static {v2, v7, v8}, Landroid/taobao/windvane/cache/WVFileInfoParser;->getFileInfo([BII)Landroid/taobao/windvane/cache/WVFileInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 396
    iget-object v11, v10, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    .line 397
    iget-object v12, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 398
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, v10, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    .line 399
    iget-object v12, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v12, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    .line 401
    invoke-virtual {v4, v2, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v5, v5, 0x3c

    :cond_2
    add-int/2addr v5, v9

    goto :goto_1

    .line 412
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 413
    sget-object v2, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse fileinfo:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz v6, :cond_5

    .line 418
    :try_start_1
    iget-object v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 419
    iget-object v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 420
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 421
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 422
    iget-object v3, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 424
    sget-object v3, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "collectFiles fInfoChannel.write error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_5
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    .line 430
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 432
    :goto_4
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 433
    sget-object v2, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write fileinfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v9

    :cond_7
    return v3
.end method

.method private onFileOverflow()V
    .locals 5

    .line 344
    sget-object v0, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    const-string v1, "onFileOverflow"

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 348
    iget-object v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 349
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 350
    iget v4, p0, Landroid/taobao/windvane/cache/WVFileCache;->maxCapacity:I

    if-lt v2, v4, :cond_1

    .line 351
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/cache/WVFileInfo;

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/cache/WVFileInfo;

    .line 361
    iget-object v1, v1, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/taobao/windvane/cache/WVFileCache;->delete(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setCapacity(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 80
    invoke-direct {p0}, Landroid/taobao/windvane/cache/WVFileCache;->onFileOverflow()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 5

    .line 319
    iget-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->baseDirPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    array-length v2, v0

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 331
    invoke-virtual {p0, v4}, Landroid/taobao/windvane/cache/WVFileCache;->delete(Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 6

    .line 291
    iget-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Landroid/taobao/windvane/cache/WVFileCache;->baseDirPath:Ljava/lang/String;

    invoke-direct {v0, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/cache/WVFileInfo;

    if-eqz v0, :cond_3

    .line 301
    sget-object v1, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    const-string v4, "delete success"

    invoke-static {v1, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 303
    iget-object v4, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v1, v0, v4}, Landroid/taobao/windvane/cache/WVFileInfoParser;->updateFileInfo(ILandroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)Landroid/taobao/windvane/cache/WVFileInfo;

    .line 304
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 306
    sget-object p1, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete time cost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoOs:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 104
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :cond_1
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->baseDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileInfo(Ljava/lang/String;)Landroid/taobao/windvane/cache/WVFileInfo;
    .locals 4

    .line 177
    iget-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/cache/WVFileInfo;

    if-nez v0, :cond_1

    return-object v1

    .line 184
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/taobao/windvane/cache/WVFileCache;->baseDirPath:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    .line 186
    iget-object v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {p1, v0, v2}, Landroid/taobao/windvane/cache/WVFileInfoParser;->updateFileInfo(ILandroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)Landroid/taobao/windvane/cache/WVFileInfo;

    return-object v1

    :cond_2
    return-object v0
.end method

.method public declared-synchronized init()Z
    .locals 8

    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->infoDirPath:Ljava/lang/String;

    const-string/jumbo v3, "wv_web_info.dat"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 121
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Landroid/taobao/windvane/cache/WVFileCache;->infoDirPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    :try_start_2
    sget-object v1, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init createNewFile:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    monitor-exit p0

    return v3

    .line 131
    :cond_0
    :goto_0
    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Landroid/taobao/windvane/cache/WVFileCache;->baseDirPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoOs:Ljava/io/RandomAccessFile;

    .line 135
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    .line 140
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock success process is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    :cond_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 149
    invoke-direct {p0}, Landroid/taobao/windvane/cache/WVFileCache;->collectFiles()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_3

    .line 170
    monitor-exit p0

    return v3

    .line 151
    :cond_3
    :try_start_6
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    sget-object v0, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init time cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_4
    iput-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    .line 156
    iget v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->maxCapacity:I

    invoke-direct {p0, v0}, Landroid/taobao/windvane/cache/WVFileCache;->setCapacity(I)V

    .line 157
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 158
    invoke-virtual {p0}, Landroid/taobao/windvane/cache/WVFileCache;->clear()Z

    goto :goto_1

    :catch_1
    move-exception v0

    .line 144
    sget-object v1, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init fInfoOs RandomAccessFile:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 145
    monitor-exit p0

    return v3

    .line 161
    :cond_5
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSdcard()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->sdcard:Z

    return v0
.end method

.method public read(Ljava/lang/String;)[B
    .locals 6

    .line 213
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 219
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 221
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/cache/WVFileInfo;

    if-nez v0, :cond_2

    return-object v1

    .line 226
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 227
    iget-object v4, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v1, v0, v4}, Landroid/taobao/windvane/cache/WVFileInfoParser;->updateFileInfo(ILandroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)Landroid/taobao/windvane/cache/WVFileInfo;

    move-result-object v0

    .line 228
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileCache;->baseDirPath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/taobao/windvane/file/FileAccesser;->read(Ljava/io/File;)[B

    move-result-object p1

    .line 231
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    sget-object v0, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read time cost:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 84
    iget-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateFileInfo(Landroid/taobao/windvane/cache/WVFileInfo;)V
    .locals 4

    .line 195
    iget-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/cache/WVFileInfo;

    if-eqz v1, :cond_1

    .line 201
    sget-object v2, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update info success"

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-wide v1, v1, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    iput-wide v1, p1, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    const/4 v1, 0x2

    .line 204
    iget-object v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v1, p1, v2}, Landroid/taobao/windvane/cache/WVFileInfoParser;->updateFileInfo(ILandroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)Landroid/taobao/windvane/cache/WVFileInfo;

    move-result-object p1

    .line 205
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public write(Landroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/ByteBuffer;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 242
    iget-object v1, p1, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 245
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    sget-object v2, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_1
    iget-boolean v2, p0, Landroid/taobao/windvane/cache/WVFileCache;->isInit:Z

    if-eqz v2, :cond_4

    .line 250
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/taobao/windvane/cache/WVFileCache;->baseDirPath:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :try_start_0
    invoke-static {v2, p2}, Landroid/taobao/windvane/file/FileAccesser;->write(Ljava/io/File;Ljava/nio/ByteBuffer;)Z

    move-result p2
    :try_end_0
    .catch Landroid/taobao/windvane/file/NotEnoughSpace; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 256
    sget-object v4, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "write error. fileName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". NotEnoughSpace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/taobao/windvane/file/NotEnoughSpace;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-boolean v3, p0, Landroid/taobao/windvane/cache/WVFileCache;->isNoSpaceClear:Z

    if-eqz v3, :cond_2

    .line 258
    invoke-virtual {p0}, Landroid/taobao/windvane/cache/WVFileCache;->clear()Z

    .line 260
    :try_start_1
    invoke-static {v2, p2}, Landroid/taobao/windvane/file/FileAccesser;->write(Ljava/io/File;Ljava/nio/ByteBuffer;)Z

    move-result p2
    :try_end_1
    .catch Landroid/taobao/windvane/file/NotEnoughSpace; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 262
    invoke-virtual {p2}, Landroid/taobao/windvane/file/NotEnoughSpace;->printStackTrace()V

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 270
    iget-object p2, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/taobao/windvane/cache/WVFileInfo;

    if-eqz p2, :cond_3

    .line 271
    sget-object v0, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "writed success, file exist"

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-wide v2, p2, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    iput-wide v2, p1, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    const/4 p2, 0x2

    .line 274
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {p2, p1, v0}, Landroid/taobao/windvane/cache/WVFileInfoParser;->updateFileInfo(ILandroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)Landroid/taobao/windvane/cache/WVFileInfo;

    move-result-object p1

    .line 275
    iget-object p2, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/taobao/windvane/cache/WVFileInfo;->convertToFileInfo()Landroid/taobao/windvane/cache/WVFileInfo;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 277
    :cond_3
    sget-object p2, Landroid/taobao/windvane/cache/WVFileCache;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "writed success, file do not exist"

    invoke-static {p2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 278
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVFileCache;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {p2, p1, v0}, Landroid/taobao/windvane/cache/WVFileInfoParser;->updateFileInfo(ILandroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/channels/FileChannel;)Landroid/taobao/windvane/cache/WVFileInfo;

    move-result-object p1

    .line 279
    iget-object p2, p0, Landroid/taobao/windvane/cache/WVFileCache;->storedFile:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/taobao/windvane/cache/WVFileInfo;->convertToFileInfo()Landroid/taobao/windvane/cache/WVFileInfo;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v0
.end method
