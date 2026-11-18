.class public Lcom/android/alibaba/ip/server/MonkeyPatcher;
.super Ljava/lang/Object;
.source "MonkeyPatcher.java"


# static fields
.field private static activityThread:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method private static closeQuitely(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 454
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    :try_start_0
    sget-object v1, Lcom/android/alibaba/ip/server/MonkeyPatcher;->activityThread:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 37
    sget-object p0, Lcom/android/alibaba/ip/server/MonkeyPatcher;->activityThread:Ljava/lang/Object;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "android.app.ActivityThread"

    .line 40
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :cond_1
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    .line 42
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 46
    sput-object p1, Lcom/android/alibaba/ip/server/MonkeyPatcher;->activityThread:Ljava/lang/Object;

    :cond_2
    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "mLoadedApk"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "mActivityThread"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/android/alibaba/ip/server/MonkeyPatcher;->activityThread:Ljava/lang/Object;

    .line 57
    sget-object p0, Lcom/android/alibaba/ip/server/MonkeyPatcher;->activityThread:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object p1

    :catch_0
    return-object v0
.end method

.method public static mergeResFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 379
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "resources"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x400

    .line 380
    new-array v2, v2, [B

    .line 381
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 382
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 385
    new-instance v5, Ljava/util/zip/ZipFile;

    move-object/from16 v6, p0

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 386
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 387
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 388
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 389
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    const-string v10, "resources.arsc"

    const-string v11, "assets/"

    const-string v13, "raw/"

    const-string v14, ".dex"

    if-eqz v9, :cond_4

    .line 390
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 391
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 392
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-direct {v12, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v15, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const/4 v10, 0x0

    .line 398
    invoke-virtual {v12, v10}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 399
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 400
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 402
    :cond_3
    invoke-virtual {v3, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 403
    invoke-virtual {v6, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 404
    invoke-static {v9, v3, v2}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->write(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 405
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_0

    .line 407
    :cond_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 408
    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 409
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 410
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 411
    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_1

    .line 414
    :cond_6
    new-instance v15, Ljava/util/zip/ZipEntry;

    invoke-direct {v15, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 p0, v13

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v12, 0x0

    .line 416
    invoke-virtual {v15, v12}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    move-object/from16 p0, v13

    .line 417
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v12

    invoke-virtual {v15, v12, v13}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 418
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    invoke-virtual {v15, v12, v13}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 420
    :goto_3
    invoke-virtual {v3, v15}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 421
    invoke-virtual {v5, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 422
    invoke-static {v9, v3, v2}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->write(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 423
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    move-object/from16 v13, p0

    goto :goto_1

    .line 426
    :cond_9
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 427
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 428
    invoke-static {v3}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->closeQuitely(Ljava/io/Closeable;)V

    .line 429
    invoke-static {v4}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->closeQuitely(Ljava/io/Closeable;)V

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 431
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 432
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 435
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 436
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "merge resource patch failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public static monkeyPatchExistingResources(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "mAssets"

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 76
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "android.app.LoadedApk"

    .line 77
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :catch_1
    const/4 v0, 0x0

    :catch_2
    :try_start_2
    const-string v5, "android.app.ActivityThread$PackageInfo"

    .line 79
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    :goto_0
    move-object v6, v0

    const-string v0, "mResDir"

    .line 82
    invoke-static {v5, v0}, Lcom/android/alibaba/ip/utils/RefectUtils;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 83
    const-class v5, Landroid/content/pm/ApplicationInfo;

    const-string v7, "publicSourceDir"

    invoke-static {v5, v7}, Lcom/android/alibaba/ip/utils/RefectUtils;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-string v7, "mPackages"

    .line 85
    invoke-static {v6, v7}, Lcom/android/alibaba/ip/utils/RefectUtils;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 86
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1b

    if-ge v8, v9, :cond_1

    const-string v8, "mResourcePackages"

    .line 87
    invoke-static {v6, v8}, Lcom/android/alibaba/ip/utils/RefectUtils;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 89
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 92
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v11, v9, :cond_2

    const/4 v9, 0x2

    .line 93
    new-array v9, v9, [Ljava/lang/reflect/Field;

    aput-object v7, v9, v12

    aput-object v8, v9, v13

    goto :goto_2

    .line 95
    :cond_2
    new-array v9, v13, [Ljava/lang/reflect/Field;

    aput-object v7, v9, v12

    .line 97
    :goto_2
    array-length v7, v9

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_6

    aget-object v11, v9, v8

    .line 98
    invoke-static {v1, v6}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 101
    check-cast v11, Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_4

    goto :goto_4

    .line 106
    :cond_4
    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 107
    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    invoke-virtual {v0, v14, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 113
    :cond_6
    const-class v0, Landroid/content/res/AssetManager;

    new-array v4, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/res/AssetManager;

    .line 114
    const-class v0, Landroid/content/res/AssetManager;

    const-string v7, "addAssetPath"

    new-array v8, v13, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 116
    new-array v7, v13, [Ljava/lang/Object;

    aput-object v2, v7, v12

    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_b

    .line 120
    :try_start_3
    const-class v0, Landroid/content/res/AssetManager;

    const-string v7, "ensureStringBlocks"

    new-array v8, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 122
    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 124
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v7, 0x13

    const-string v8, "mActiveResources"

    if-lt v0, v7, :cond_7

    :try_start_5
    const-string v0, "android.app.ResourcesManager"

    .line 182
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getInstance"

    .line 183
    new-array v7, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 184
    invoke-virtual {v6, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 185
    new-array v7, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 187
    :try_start_6
    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 188
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 191
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_4
    :try_start_7
    const-string v7, "mResourceReferences"

    .line 193
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 196
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_6

    .line 199
    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 201
    invoke-static {v1, v6}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 203
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 204
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 206
    :goto_6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 207
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v6, :cond_8

    .line 210
    :try_start_8
    const-class v7, Landroid/content/res/Resources;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 211
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 212
    invoke-virtual {v7, v6, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    .line 214
    :catch_5
    :try_start_9
    const-class v7, Landroid/content/res/Resources;

    const-string v8, "mResourcesImpl"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 215
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 216
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 217
    invoke-static {v7, v3}, Lcom/android/alibaba/ip/utils/RefectUtils;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 218
    invoke-virtual {v8, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 219
    invoke-virtual {v8, v7, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    :goto_8
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_7

    .line 224
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_a

    if-eqz v5, :cond_a

    .line 227
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :cond_a
    return-void

    .line 117
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create new AssetManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 234
    :goto_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method private static pruneResourceCache(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    const/4 v0, 0x0

    .line 305
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/alibaba/ip/utils/RefectUtils;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    .line 307
    const-class v1, Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    :cond_0
    const/4 v2, 0x1

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 311
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 313
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 314
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    .line 315
    instance-of p0, v3, Landroid/util/SparseArray;

    if-eqz p0, :cond_1

    .line 316
    nop

    nop

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    return v2

    .line 319
    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xe

    if-lt p0, p1, :cond_9

    instance-of p0, v3, Landroid/util/LongSparseArray;

    if-eqz p0, :cond_9

    .line 320
    nop

    nop

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    return v2

    .line 323
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, -0x1

    if-ge v4, v5, :cond_8

    const-string v4, "mColorStateListCache"

    .line 324
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 325
    instance-of p0, v3, Landroid/util/LongSparseArray;

    if-eqz p0, :cond_9

    .line 326
    nop

    nop

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    goto/16 :goto_2

    .line 329
    :cond_3
    const-class p1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const-string v4, "clearDrawableCachesLocked"

    const/4 v5, 0x2

    if-eqz p1, :cond_4

    .line 330
    :try_start_1
    const-class p1, Landroid/content/res/Resources;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v7, Landroid/util/ArrayMap;

    aput-object v7, v1, v0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v2

    invoke-virtual {p1, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 332
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 333
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 336
    :cond_4
    const-class p1, Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_5

    .line 338
    :try_start_2
    const-class p1, Landroid/content/res/Resources;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v7, Landroid/util/LongSparseArray;

    aput-object v7, v1, v0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v2

    invoke-virtual {p1, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 340
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 341
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    return v2

    .line 344
    :catch_0
    :try_start_3
    instance-of p0, v3, Landroid/util/LongSparseArray;

    if-eqz p0, :cond_9

    .line 345
    nop

    nop

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    return v2

    .line 349
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 350
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 351
    check-cast v3, [Landroid/util/LongSparseArray;

    nop

    nop

    .line 352
    array-length p0, v3

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_7

    aget-object v1, v3, p1

    if-eqz v1, :cond_6

    .line 354
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return v2

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    :try_start_4
    const-string p0, "onConfigurationChange"

    .line 363
    new-array p1, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, p1, v0

    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 365
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 366
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    invoke-virtual {p0, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    return v2

    .line 370
    :catch_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    :cond_9
    :goto_2
    return v0
.end method

.method private static pruneResourceCaches(Ljava/lang/Object;)V
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 242
    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mTypedArrayPool"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 244
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "acquire"

    const/4 v4, 0x0

    .line 246
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 247
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 249
    :cond_0
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    goto :goto_0

    :catch_0
    nop

    .line 257
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 259
    :try_start_1
    const-class v0, Landroid/content/res/Resources;

    const-string v3, "mResourcesImpl"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    const/4 v0, 0x0

    .line 267
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_3

    .line 269
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mAccessLock"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 270
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 271
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catch_2
    nop

    goto :goto_1

    .line 276
    :cond_3
    const-class v3, Landroid/content/res/Resources;

    const-string v4, "mTmpValue"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 277
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 278
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    if-nez v0, :cond_4

    .line 283
    const-class v0, Lcom/android/alibaba/ip/server/MonkeyPatcher;

    .line 285
    :cond_4
    monitor-enter v0

    :try_start_3
    const-string v1, "mDrawableCache"

    .line 286
    invoke-static {p0, v1}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->pruneResourceCache(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "mColorDrawableCache"

    .line 287
    invoke-static {p0, v1}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->pruneResourceCache(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "mColorStateListCache"

    .line 288
    invoke-static {p0, v1}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->pruneResourceCache(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 289
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_5

    const-string v1, "mAnimatorCache"

    .line 290
    invoke-static {p0, v1}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->pruneResourceCache(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "mStateListAnimatorCache"

    .line 291
    invoke-static {p0, v1}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->pruneResourceCache(Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_2

    .line 292
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_6

    const-string v1, "sPreloadedDrawables"

    .line 293
    invoke-static {p0, v1}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->pruneResourceCache(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "sPreloadedColorDrawables"

    .line 294
    invoke-static {p0, v1}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->pruneResourceCache(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "sPreloadedColorStateLists"

    .line 295
    invoke-static {p0, v1}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->pruneResourceCache(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 297
    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private static write(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 444
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 445
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 447
    :cond_0
    invoke-static {p0}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->closeQuitely(Ljava/io/Closeable;)V

    return-void
.end method
