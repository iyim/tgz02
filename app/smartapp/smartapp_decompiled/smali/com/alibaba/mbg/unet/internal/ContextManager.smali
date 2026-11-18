.class public Lcom/alibaba/mbg/unet/internal/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# static fields
.field private static final CUSTOM_FOLDER_NAME:Ljava/lang/String;

.field private static final CUSTOM_ROOT_FOLDER_NAME:Ljava/lang/String; = "/unetnative/"

.field private static final MAX_UNZIP_TIMES:I = 0x3

.field public static final SYSTEM_APP_PATH:Ljava/lang/String; = "/system/app/UCBrowser/lib/arm/"

.field public static final SYSTEM_PRELOAD_APP_PATH:Ljava/lang/String; = "/system/preload-app/UCBrowser/lib/arm/"

.field private static final TAG:Ljava/lang/String; = "ContextManager"

.field private static final UNET_NAME:Ljava/lang/String; = "libunet.so"

.field private static gLibPathList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsUNetDexHasInited:Z = false

.field private static mUnetManagerAdapter:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl; = null

.field private static sBuildID:Ljava/lang/String; = null

.field private static sCheckBuildID:Z = false

.field private static sCheckSoSize:Z = false

.field private static sContext:Landroid/content/Context;

.field private static sCpuArch:Ljava/lang/String;

.field private static sDynamicDeployPath:Ljava/lang/String;

.field private static sLibKey:Ljava/lang/String;

.field private static sMD5:Ljava/lang/String;

.field private static sUnetSoSize:J

.field private static sUseAsyncInit:Z

.field private static sVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->gLibPathList:Ljava/util/ArrayList;

    .line 45
    sget-object v0, Lunet/org/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    sput-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->mIsUNetDexHasInited:Z

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/unetnative/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->sVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->CUSTOM_FOLDER_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sUseAsyncInit:Z

    const/4 v0, 0x0

    .line 75
    sput-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->mUnetManagerAdapter:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()V
    .locals 0

    .line 35
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->ensureLibraryLoaded()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 35
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;
    .locals 1

    .line 35
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->mUnetManagerAdapter:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    return-object v0
.end method

.method public static addSoSearchPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->gLibPathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static clearExpiredLibsIfNeeded()V
    .locals 6

    .line 237
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/unetnative/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 241
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/mbg/unet/internal/ContextManager;->sVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    :try_start_0
    invoke-static {v3}, Lcom/alibaba/mbg/unet/internal/ContextManager;->deleteDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 247
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static deleteDir(Ljava/io/File;)V
    .locals 4

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 230
    invoke-static {v3}, Lcom/alibaba/mbg/unet/internal/ContextManager;->deleteDir(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 219
    sput-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static ensureLibraryLoaded()V
    .locals 5

    const-string v0, "libunet.so"

    .line 260
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->findLibPath()Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureLibraryLoaded tmpPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/mbg/unet/internal/ContextManager;->sVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextManager"

    invoke-static {v3, v2}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    invoke-static {v1, v0}, Lcom/alibaba/mbg/unet/internal/ContextManager;->loadNormalLib(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/unetnative/"

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->clearExpiredLibsIfNeeded()V

    goto :goto_1

    .line 264
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "lib path not found, try unzip"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 272
    sget-object v4, Lcom/alibaba/mbg/unet/internal/ContextManager;->sDynamicDeployPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadNormalLib from sDynamicDeployPath failed, throw it, path:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/mbg/unet/internal/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "load unet deploy so failed"

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    const-string v1, "loadNormalLib failed1, try unzip apk and load so"

    .line 276
    invoke-static {v3, v1}, Lcom/alibaba/mbg/unet/internal/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->unzipLibraryFromApkAndLoadLib()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "loadNormalLib failed2, try load by System.loadLibrary"

    .line 279
    invoke-static {v3, v1}, Lcom/alibaba/mbg/unet/internal/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 280
    invoke-static {v1, v0}, Lcom/alibaba/mbg/unet/internal/ContextManager;->loadNormalLib(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static findLibPath()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sDynamicDeployPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sDynamicDeployPath:Ljava/lang/String;

    return-object v0

    .line 306
    :cond_0
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->findValidLibraryPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findValidLibraryPath()Ljava/lang/String;
    .locals 6

    .line 311
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->gatherLibPaths()V

    .line 314
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->gLibPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 322
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "libunet.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-wide v4, Lcom/alibaba/mbg/unet/internal/ContextManager;->sUnetSoSize:J

    invoke-static {v3, v4, v5}, Lcom/alibaba/mbg/unet/internal/ContextManager;->isLibraryValid(Ljava/io/File;J)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 333
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValidLibraryPath return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    const-string v2, "null"

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextManager"

    invoke-static {v2, v1}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static gatherLibPaths()V
    .locals 7

    const/4 v0, 0x2

    .line 354
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->CUSTOM_FOLDER_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "/lib/"

    aput-object v3, v0, v1

    .line 357
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 358
    sget-object v4, Lcom/alibaba/mbg/unet/internal/ContextManager;->gLibPathList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 364
    sget-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    .line 365
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x400

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 366
    sget-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->gLibPathList:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    :goto_1
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->gLibPathList:Ljava/util/ArrayList;

    const-string v1, "/system/app/UCBrowser/lib/arm/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->gLibPathList:Ljava/util/ArrayList;

    const-string v1, "/system/preload-app/UCBrowser/lib/arm/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "java.library.path"

    .line 375
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->gLibPathList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    return-void
.end method

.method public static getClientNetManager()Lcom/alibaba/mbg/unet/UnetManager;
    .locals 4

    .line 167
    const-class v0, Lcom/alibaba/mbg/unet/internal/ContextManager;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->mUnetManagerAdapter:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    if-eqz v1, :cond_0

    .line 170
    sget-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->mUnetManagerAdapter:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    monitor-exit v0

    return-object v1

    :cond_0
    const-string v1, "ContextManager"

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionManager getClientNetManager mUnetManagerAdapter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/mbg/unet/internal/ContextManager;->mUnetManagerAdapter:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " sContext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mIsUNetDexHasInited:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/alibaba/mbg/unet/internal/ContextManager;->mIsUNetDexHasInited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 178
    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/ContextManager;->initializeContextManager(Landroid/content/Context;)V

    .line 181
    :cond_1
    sget-boolean v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->mIsUNetDexHasInited:Z

    if-nez v1, :cond_2

    const-string v1, "ContextManager"

    const-string v2, "load unet lib success"

    .line 185
    invoke-static {v1, v2}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 186
    sput-boolean v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->mIsUNetDexHasInited:Z

    .line 188
    new-instance v1, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-direct {v1}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;-><init>()V

    sput-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->mUnetManagerAdapter:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    .line 189
    sget-boolean v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->sUseAsyncInit:Z

    new-instance v2, Lcom/alibaba/mbg/unet/internal/ContextManager$2;

    invoke-direct {v2}, Lcom/alibaba/mbg/unet/internal/ContextManager$2;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/mbg/unet/internal/ContextManager;->initNativeLibAndNetwork(ZLjava/lang/Runnable;)V

    :cond_2
    const-string v1, "ContextManager"

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClientNetManager getClientNetManager mUnetManagerAdapter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/mbg/unet/internal/ContextManager;->mUnetManagerAdapter:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->mUnetManagerAdapter:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 223
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getCpuAbi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string v0, "primaryCpuAbi"

    invoke-static {p0, v0}, Lcom/alibaba/mbg/unet/internal/ContextManager;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 440
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method private static getDefaultContext()Landroid/content/Context;
    .locals 4

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 288
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    .line 289
    new-array v3, v2, [Ljava/lang/Class;

    .line 290
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 292
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetManagerHelper getDefaultContext ctx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextManager"

    invoke-static {v2, v1}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 420
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 426
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 428
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initNativeLibAndNetwork(ZLjava/lang/Runnable;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/alibaba/mbg/unet/internal/ContextManager$1;

    invoke-direct {v0, p1}, Lcom/alibaba/mbg/unet/internal/ContextManager$1;-><init>(Ljava/lang/Runnable;)V

    if-eqz p0, :cond_0

    .line 160
    new-instance p0, Ljava/lang/Thread;

    const-string p1, "UnetInitThread"

    invoke-direct {p0, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 162
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static initializeContextManager(Landroid/content/Context;)V
    .locals 2

    .line 85
    sput-object p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    .line 86
    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "#unet"

    const-string v1, "mContext is null ,use global application context."

    .line 87
    invoke-static {v0, v1}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->getDefaultContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/alibaba/mbg/unet/internal/ContextManager;->getCpuAbi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sCpuArch:Ljava/lang/String;

    .line 93
    sget-object p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sCpuArch:Ljava/lang/String;

    const-string v0, "arm64-v8a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "unet_arm64-v8a"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "unet"

    :goto_0
    sput-object p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sLibKey:Ljava/lang/String;

    .line 94
    sget-object p0, Lunet/org/chromium/base/library_loader/NativeLibraries;->LIBRARIES_SIZE:Ljava/util/HashMap;

    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sLibKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    sput-wide v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sUnetSoSize:J

    .line 95
    sget-object p0, Lunet/org/chromium/base/library_loader/NativeLibraries;->MD5:Ljava/util/HashMap;

    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sLibKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sMD5:Ljava/lang/String;

    .line 96
    sget-object p0, Lunet/org/chromium/base/library_loader/NativeLibraries;->BUILD_ID:Ljava/util/HashMap;

    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sLibKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sBuildID:Ljava/lang/String;

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initializeContextManager sContext:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " libkey:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sLibKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unetsize:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sUnetSoSize:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " md5:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sMD5:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " buildId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sBuildID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextManager"

    invoke-static {v0, p0}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static isLibraryValid(Ljava/io/File;J)Z
    .locals 3

    .line 338
    sget-boolean v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sCheckSoSize:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string p2, "ContextManager"

    if-eqz p1, :cond_2

    .line 339
    sget-boolean v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sCheckBuildID:Z

    if-eqz v0, :cond_2

    .line 340
    sget-object p1, Lcom/alibaba/mbg/unet/internal/ContextManager;->sBuildID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker;->checkElfFileBuildID(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkElfFileBuildID return: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " sBuildID:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sBuildID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isLibraryValid return: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " checkBuildID:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sCheckBuildID:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " CheckSoSize:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sCheckSoSize:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private static loadNormalLib(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 390
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ContextManager"

    if-nez v0, :cond_1

    .line 391
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    .line 396
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " loadNormalLib path + libname:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 399
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " loadNormalLib System.load :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 405
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load unet failed from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " load so size:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " apk so size:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/alibaba/mbg/unet/internal/ContextManager;->sUnetSoSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 410
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " loadNormalLib System.loadLibrary :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 411
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".so"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 583
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 585
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setCheckBuildIDForLibCorrupted(Z)V
    .locals 0

    .line 110
    sput-boolean p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sCheckBuildID:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setCheckSoSize(Z)V
    .locals 2

    .line 136
    sput-boolean p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sCheckSoSize:Z

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCheckSoSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextManager"

    invoke-static {v0, p0}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDynamicDeploySoPath(Ljava/lang/String;)V
    .locals 2

    .line 126
    sput-object p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sDynamicDeployPath:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSoLoadPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextManager"

    invoke-static {v0, p0}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSoSize(J)V
    .locals 0

    .line 145
    sput-wide p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sUnetSoSize:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setUseAsyncInit(Z)V
    .locals 0

    .line 103
    sput-boolean p0, Lcom/alibaba/mbg/unet/internal/ContextManager;->sUseAsyncInit:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static unzipFromApkOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unzipFromApkOnce:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextManager"

    invoke-static {v1, v0}, Lcom/alibaba/mbg/unet/internal/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 454
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unzipFromApkOnce apk not exists:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/mbg/unet/internal/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v3, 0x0

    .line 466
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p2, :cond_2

    .line 470
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    :catch_0
    move-exception p2

    .line 472
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 475
    :cond_2
    :goto_0
    new-instance p2, Ljava/util/zip/ZipFile;

    invoke-direct {p2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 476
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_3

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "entry not found for:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/mbg/unet/internal/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 504
    invoke-static {v3}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    .line 505
    invoke-static {v3}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    .line 514
    invoke-static {v3}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    .line 518
    :try_start_4
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 520
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v2

    .line 481
    :cond_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 483
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 485
    :cond_4
    invoke-virtual {p2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 486
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 488
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 489
    :try_start_8
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    const/16 v6, 0x2000

    .line 490
    new-array v6, v6, [B

    .line 492
    :goto_2
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 493
    invoke-virtual {v0, v6, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 496
    :cond_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 498
    sget-object v6, Lcom/alibaba/mbg/unet/internal/ContextManager;->sBuildID:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker;->checkElfFileBuildID(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    .line 499
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unzip finished, checkBuildId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " sBuildID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/alibaba/mbg/unet/internal/ContextManager;->sBuildID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 504
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    .line 505
    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    if-eqz v3, :cond_6

    .line 508
    :try_start_9
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 511
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 514
    :cond_6
    :goto_3
    invoke-static {v5}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    .line 518
    :try_start_a
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 520
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return v4

    :catchall_0
    move-exception p0

    move-object v9, v3

    move-object v3, p1

    move-object p1, v9

    goto/16 :goto_c

    :catch_4
    move-object v9, v3

    move-object v3, p1

    move-object p1, v9

    goto :goto_9

    :catchall_1
    move-exception p0

    move-object v5, v3

    goto :goto_5

    :catch_5
    move-object v5, v3

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v0, v3

    move-object v5, v0

    :goto_5
    move-object v3, p1

    move-object p1, v5

    goto :goto_c

    :catch_6
    move-object v0, v3

    move-object v5, v0

    :goto_6
    move-object v3, p1

    move-object p1, v5

    goto :goto_9

    :catchall_3
    move-exception p0

    move-object p1, v3

    move-object v0, p1

    goto :goto_7

    :catch_7
    move-object p1, v3

    move-object v0, p1

    goto :goto_8

    :catchall_4
    move-exception p0

    move-object p1, v3

    move-object p2, p1

    move-object v0, p2

    :goto_7
    move-object v5, v0

    goto :goto_c

    :catch_8
    move-object p1, v3

    move-object p2, p1

    move-object v0, p2

    :goto_8
    move-object v5, v0

    .line 502
    :goto_9
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uzip fialed, apkPath:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/mbg/unet/internal/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 504
    invoke-static {v3}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    .line 505
    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    if-eqz p1, :cond_7

    .line 508
    :try_start_c
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_a

    :catch_9
    move-exception p0

    .line 511
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 514
    :cond_7
    :goto_a
    invoke-static {v5}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    if-eqz p2, :cond_8

    .line 518
    :try_start_d
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_b

    :catch_a
    move-exception p0

    .line 520
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_b
    return v2

    :catchall_5
    move-exception p0

    .line 504
    :goto_c
    invoke-static {v3}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    .line 505
    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    if-eqz p1, :cond_9

    .line 508
    :try_start_e
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_d

    :catch_b
    move-exception p1

    .line 511
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 514
    :cond_9
    :goto_d
    invoke-static {v5}, Lcom/alibaba/mbg/unet/internal/ContextManager;->safeClose(Ljava/io/Closeable;)V

    if-eqz p2, :cond_a

    .line 518
    :try_start_f
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_e

    :catch_c
    move-exception p1

    .line 520
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    :cond_a
    :goto_e
    goto :goto_10

    :goto_f
    throw p0

    :goto_10
    goto :goto_f
.end method

.method public static unzipLibraryFromApkAndLoadLib()Z
    .locals 11

    const-string v0, "ContextManager"

    const-string v1, " unzipLibraryFromApkAndLoadLib"

    .line 528
    invoke-static {v0, v1}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    sget-object v1, Lcom/alibaba/mbg/unet/internal/ContextManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib/"

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/mbg/unet/internal/ContextManager;->sCpuArch:Ljava/lang/String;

    .line 536
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "libunet.so"

    .line 538
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/alibaba/mbg/unet/internal/ContextManager;->CUSTOM_FOLDER_NAME:Ljava/lang/String;

    .line 541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/alibaba/mbg/unet/internal/ContextManager;->CUSTOM_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 547
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 548
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_0

    .line 551
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 552
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    const/4 v9, 0x3

    if-ge v7, v9, :cond_4

    if-nez v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    .line 558
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 559
    invoke-static {v8, v2, v4}, Lcom/alibaba/mbg/unet/internal/ContextManager;->unzipFromApkOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_3
    if-eqz v8, :cond_1

    .line 568
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unzip success, load now dir:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alibaba/mbg/unet/internal/NetLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-static {v5, v3}, Lcom/alibaba/mbg/unet/internal/ContextManager;->loadNormalLib(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    .line 571
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unzipLibraryFromApkAndLoadLib failed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " t:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alibaba/mbg/unet/internal/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    return v8
.end method
