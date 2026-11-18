.class public Lcom/android/alibaba/ip/server/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field public static final CLASSES_DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final FILE_NAME_ACTIVE:Ljava/lang/String; = "active"

.field private static final FOLDER_NAME_LEFT:Ljava/lang/String; = "left"

.field private static final FOLDER_NAME_RIGHT:Ljava/lang/String; = "right"

.field private static final RELOAD_DEX_PREFIX:Ljava/lang/String; = "reload"

.field private static final RESOURCE_FILE_NAME:Ljava/lang/String; = "resources.ap_"

.field private static final RESOURCE_FOLDER_NAME:Ljava/lang/String; = "resources"

.field private static final TAG:Ljava/lang/String; = "FileManager"

.field static final USE_EXTRACTED_RESOURCES:Z = false

.field public static context:Landroid/content/Context;

.field private static havePurgedTempDexFolder:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static delete(Ljava/io/File;)V
    .locals 4

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 76
    invoke-static {v3}, Lcom/android/alibaba/ip/server/FileManager;->delete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static finishUpdate(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 255
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->swapFolders()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDataFolder()Ljava/io/File;
    .locals 2

    .line 25
    sget-object v0, Lcom/android/alibaba/ip/server/FileManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 26
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/android/alibaba/ip/runtime/Paths;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 28
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/tools/ir/server/AppInfo;->applicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/alibaba/ip/runtime/Paths;->getDataDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataFolder()Ljava/io/File;
    .locals 2

    .line 46
    sget-object v0, Lcom/android/alibaba/ip/server/FileManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v0}, Lcom/android/alibaba/ip/runtime/Paths;->getExternalDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExternalResourceFile()Ljava/io/File;
    .locals 2

    .line 180
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getReadFolder()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alibaba/ip/server/FileManager;->getResourceFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    const-string v1, "InstantPatch"

    .line 182
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cannot find external resources, not patching them in"

    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static getFilesFolder()Ljava/io/File;
    .locals 2

    .line 36
    sget-object v0, Lcom/android/alibaba/ip/server/FileManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 37
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/android/alibaba/ip/runtime/Paths;->getMainApkFilesDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 40
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/tools/ir/server/AppInfo;->applicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/alibaba/ip/runtime/Paths;->getMainApkFilesDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeLibraryFolder()Ljava/io/File;
    .locals 3

    .line 62
    sget-object v0, Lcom/android/alibaba/ip/server/FileManager;->context:Landroid/content/Context;

    const-string v1, "lib"

    if-eqz v0, :cond_0

    .line 63
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/android/alibaba/ip/runtime/Paths;->getMainApkDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 65
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/tools/ir/server/AppInfo;->applicationId:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/alibaba/ip/runtime/Paths;->getMainApkDataDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReadFolder()Ljava/io/File;
    .locals 3

    .line 260
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->leftIsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "left"

    goto :goto_0

    :cond_0
    const-string v0, "right"

    .line 261
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getDataFolder()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getResourceFile(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 265
    new-instance v0, Ljava/io/File;

    const-string v1, "resources.ap_"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTempDexFile(IZ)Lcom/android/alibaba/ip/server/InstantPatcher$FileState;
    .locals 17

    .line 89
    new-instance v0, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

    invoke-direct {v0}, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;-><init>()V

    .line 90
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getDataFolder()Ljava/io/File;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/android/alibaba/ip/server/FileManager;->getTempDexFileFolder(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x3

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, -0x1

    const-string v7, "InstantPatch"

    if-nez v5, :cond_2

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 98
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create directory "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v4, v6

    if-gtz v4, :cond_0

    .line 106
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_5

    .line 107
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getExternalDataFolder()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v0

    .line 112
    :cond_3
    invoke-static {v2}, Lcom/android/alibaba/ip/server/FileManager;->getTempDexFileFolder(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz p1, :cond_4

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_4
    iput-boolean v8, v0, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->external:Z

    goto :goto_0

    .line 117
    :cond_5
    iput-boolean v5, v0, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->external:Z

    :goto_0
    const-string v1, "%s0x%04x%s"

    const-string v4, ".jar"

    const-string v10, "reload"

    if-nez p0, :cond_9

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 125
    array-length v12, v11

    const/4 v6, 0x0

    const/4 v13, -0x1

    :goto_1
    if-ge v6, v12, :cond_7

    aget-object v14, v11, v6

    .line 126
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 127
    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v14, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x6

    .line 129
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v9, v16, -0x4

    .line 128
    invoke-virtual {v14, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 131
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v9, v13, :cond_6

    move v13, v9

    :catch_0
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    move v6, v13

    .line 140
    :cond_8
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v5

    add-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    const/4 v6, 0x2

    .line 142
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v5

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    iput-object v3, v0, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    .line 149
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new dex file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v0
.end method

.method private static getTempDexFileFolder(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v1, "dex-temp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWriteFolder(Z)Ljava/io/File;
    .locals 3

    .line 313
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->leftIsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "right"

    goto :goto_0

    :cond_0
    const-string v0, "left"

    .line 314
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getDataFolder()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 316
    invoke-static {v1}, Lcom/android/alibaba/ip/server/FileManager;->delete(Ljava/io/File;)V

    .line 317
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create folder "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstantPatch"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method private static leftIsActive()Z
    .locals 4

    .line 326
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getDataFolder()Ljava/io/File;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/io/File;

    const-string v2, "active"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 332
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v3, "left"

    .line 335
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v2
.end method

.method public static purgeOptFiles(Ljava/io/File;)V
    .locals 5

    .line 236
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 244
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete temp dex file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstantPatch"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static purgeResourceFiles()V
    .locals 5

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getDataFolder()Ljava/io/File;

    move-result-object v1

    const-string v2, "left"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getDataFolder()Ljava/io/File;

    move-result-object v2

    const-string v3, "right"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getDataFolder()Ljava/io/File;

    move-result-object v3

    const-string v4, "active"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    invoke-static {v0}, Lcom/android/alibaba/ip/server/FileManager;->delete(Ljava/io/File;)V

    .line 300
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-static {v1}, Lcom/android/alibaba/ip/server/FileManager;->delete(Ljava/io/File;)V

    .line 303
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-static {v2}, Lcom/android/alibaba/ip/server/FileManager;->delete(Ljava/io/File;)V

    :cond_2
    return-void
.end method

.method public static purgeTempDexFiles(Ljava/io/File;)V
    .locals 5

    const/4 v0, 0x1

    .line 217
    sput-boolean v0, Lcom/android/alibaba/ip/server/FileManager;->havePurgedTempDexFolder:Z

    .line 218
    invoke-static {p0}, Lcom/android/alibaba/ip/server/FileManager;->getTempDexFileFolder(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 227
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 228
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete temp dex file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstantPatch"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static setLeftActive(Z)V
    .locals 4

    .line 345
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getDataFolder()Ljava/io/File;

    move-result-object v0

    .line 346
    new-instance v1, Ljava/io/File;

    const-string v2, "active"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "InstantPatch"

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create directory "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 360
    :cond_2
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v1, "UTF-8"

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    :try_start_1
    const-string p0, "left"

    goto :goto_1

    :cond_3
    const-string p0, "right"

    .line 362
    :goto_1
    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public static startUpdate()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    invoke-static {v0}, Lcom/android/alibaba/ip/server/FileManager;->getWriteFolder(Z)Ljava/io/File;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static swapFolders()V
    .locals 1

    .line 290
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->leftIsActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/alibaba/ip/server/FileManager;->setLeftActive(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static writeAaptResources(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x0

    .line 269
    invoke-static {v0}, Lcom/android/alibaba/ip/server/FileManager;->getWriteFolder(Z)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alibaba/ip/server/FileManager;->getResourceFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x2

    const-string p1, "InstantPatch"

    .line 276
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create local resource file directory "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v1, "resources.ap_"

    .line 282
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 283
    invoke-static {v0, p1}, Lcom/android/alibaba/ip/server/FileManager;->writeRawBytes(Ljava/io/File;[B)Z

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {v0, p1}, Lcom/android/alibaba/ip/server/FileManager;->writeRawBytes(Ljava/io/File;[B)Z

    :goto_0
    return-void
.end method

.method public static writeRawBytes(Ljava/io/File;[B)Z
    .locals 3

    const/4 v0, 0x0

    .line 159
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 161
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 162
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 168
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 165
    :catch_2
    :goto_0
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "could not write res file"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 171
    :catch_3
    throw p0
.end method

.method public static writeTempDexFile(Ljava/lang/String;I)Lcom/android/alibaba/ip/server/InstantPatcher$FileState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 192
    invoke-static {p1, v0}, Lcom/android/alibaba/ip/server/FileManager;->getTempDexFile(IZ)Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

    move-result-object p1

    .line 193
    iget-object v0, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    if-nez v0, :cond_0

    return-object p1

    .line 195
    :cond_0
    iget-object v0, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-static {v0, p0}, Lcom/android/alibaba/ip/utils/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    :cond_1
    return-object p1

    .line 201
    :cond_2
    iget-object v0, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/alibaba/ip/utils/FileUtils;->isSameFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 205
    :cond_3
    iget-object v0, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-object p1

    :cond_4
    const-string p0, "InstantPatch"

    const-string v0, "No file to write temp dex content to"

    .line 210
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
