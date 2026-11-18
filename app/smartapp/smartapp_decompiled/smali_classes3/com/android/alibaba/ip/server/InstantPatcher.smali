.class public Lcom/android/alibaba/ip/server/InstantPatcher;
.super Ljava/lang/Object;
.source "InstantPatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alibaba/ip/server/InstantPatcher$FileState;
    }
.end annotation


# static fields
.field public static final CLASSES_DEX:Ljava/lang/String; = "classes.dex"

.field public static final HAS_PATCHED:I = 0x1

.field private static final INSTANT_BASE_VERSION:Ljava/lang/String; = "instant_base_Version"

.field private static final INSTANT_PATCH_HAS_RESOUECE:Ljava/lang/String; = "instant_patch_has_resource"

.field private static final INSTANT_PATCH_PRIORITY:Ljava/lang/String; = "instant_patch_priority"

.field private static final INSTANT_PATCH_VERSION:Ljava/lang/String; = "instant_patch_version"

.field public static final NO_DEX_AND_RES:I = 0x4

.field public static final PATCH_FAILED:I = 0x3

.field private static final PATCH_INFO_FILE_NAME:Ljava/lang/String; = "instant_patch"

.field public static final PATCH_MODIFIED:I = 0x2

.field public static final PATCH_NOT_MATCH:I = 0x5

.field public static final PATCH_RES_FAILED:I = 0x6

.field public static final PATCH_SUCCESS:I = 0x0

.field public static final RES_PATCH:Ljava/lang/String; = "resources.ap_"

.field private static final TAG:Ljava/lang/String; = "InstantPatcher"

.field public static volatile handled:Z = false

.field public static volatile hasResources:Z = false

.field private static sInstantPatcher:Lcom/android/alibaba/ip/server/InstantPatcher;


# instance fields
.field private final context:Landroid/content/Context;

.field private isMainProcess:Z

.field private packageName:Ljava/lang/String;

.field private patchVerifier:Lcom/android/alibaba/ip/common/IPatchVerifier;

.field private savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->isMainProcess:Z

    .line 107
    iput-object p2, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    .line 108
    iput-object p1, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->packageName:Ljava/lang/String;

    .line 109
    sput-object p2, Lcom/android/alibaba/ip/server/FileManager;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/alibaba/ip/server/InstantPatcher;Lcom/android/alibaba/ip/server/InstantPatcher$FileState;Lcom/android/alibaba/ip/common/PatchResult;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/alibaba/ip/server/InstantPatcher;->handlePatch(Lcom/android/alibaba/ip/server/InstantPatcher$FileState;Lcom/android/alibaba/ip/common/PatchResult;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private authenticate(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 465
    :try_start_0
    iget-object v2, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 471
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method private clearPatch()V
    .locals 5

    .line 204
    :try_start_0
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getDataFolder()Ljava/io/File;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getExternalDataFolder()Ljava/io/File;

    move-result-object v1

    .line 206
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/alibaba/ip/server/InstantPatcher;->optPathFor(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/alibaba/ip/server/InstantPatcher;->optPathFor(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 210
    invoke-static {v1}, Lcom/android/alibaba/ip/server/FileManager;->purgeTempDexFiles(Ljava/io/File;)V

    .line 212
    :cond_0
    invoke-static {v0}, Lcom/android/alibaba/ip/server/FileManager;->purgeTempDexFiles(Ljava/io/File;)V

    .line 214
    invoke-static {v2}, Lcom/android/alibaba/ip/server/FileManager;->purgeOptFiles(Ljava/io/File;)V

    .line 216
    invoke-static {v3}, Lcom/android/alibaba/ip/server/FileManager;->purgeOptFiles(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private clearPatchInfo()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x9
    .end annotation

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;

    .line 197
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    const-string v1, "instant_patch"

    invoke-static {v0, v1}, Lcom/android/alibaba/ip/utils/PreferencesUtils;->clear(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/alibaba/ip/server/InstantPatcher;
    .locals 2

    .line 100
    sget-object v0, Lcom/android/alibaba/ip/server/InstantPatcher;->sInstantPatcher:Lcom/android/alibaba/ip/server/InstantPatcher;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/alibaba/ip/server/InstantPatcher;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/alibaba/ip/server/InstantPatcher;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/android/alibaba/ip/server/InstantPatcher;->sInstantPatcher:Lcom/android/alibaba/ip/server/InstantPatcher;

    .line 103
    :cond_0
    sget-object p0, Lcom/android/alibaba/ip/server/InstantPatcher;->sInstantPatcher:Lcom/android/alibaba/ip/server/InstantPatcher;

    return-object p0
.end method

.method private handleHotSwapPatch(Lcom/android/alibaba/ip/common/PatchResult;Lcom/android/alibaba/ip/runtime/ApplicationPatch;)V
    .locals 4

    const-string v0, "mkdir failed"

    const-string v1, "InstantPatcher"

    const-string v2, "Received patch"

    .line 370
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    .line 372
    :try_start_0
    invoke-virtual {p2}, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->getPatchVersion()I

    move-result p2

    invoke-static {v3, p2}, Lcom/android/alibaba/ip/server/FileManager;->writeTempDexFile(Ljava/lang/String;I)Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

    move-result-object p2

    .line 373
    iget-object v3, p2, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    if-nez v3, :cond_0

    .line 374
    iput v2, p1, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    .line 375
    iput-object v0, p1, Lcom/android/alibaba/ip/common/PatchResult;->msg:Ljava/lang/String;

    .line 376
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 379
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/alibaba/ip/server/InstantPatcher;->handlePatch(Lcom/android/alibaba/ip/server/InstantPatcher$FileState;Lcom/android/alibaba/ip/common/PatchResult;)V

    .line 380
    iget p2, p1, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    if-eqz p2, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/android/alibaba/ip/server/InstantPatcher;->purge()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 384
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    iput v2, p1, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    const-string v0, "write dex failed"

    .line 386
    iput-object v0, p1, Lcom/android/alibaba/ip/common/PatchResult;->msg:Ljava/lang/String;

    .line 387
    iput-object p2, p1, Lcom/android/alibaba/ip/common/PatchResult;->t:Ljava/lang/Throwable;

    :cond_1
    :goto_0
    return-void
.end method

.method private handlePatch(Lcom/android/alibaba/ip/server/InstantPatcher$FileState;Lcom/android/alibaba/ip/common/PatchResult;)V
    .locals 9
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x3
    .end annotation

    const-string v0, "Couldn\'t apply code changes"

    const-string v1, "InstantPatcher"

    const/4 v2, 0x3

    .line 395
    :try_start_0
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getNativeLibraryFolder()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 398
    iget-boolean v4, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->external:Z

    if-nez v4, :cond_0

    .line 399
    new-instance v4, Ldalvik/system/DexClassLoader;

    iget-object p1, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    .line 400
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 399
    invoke-direct {p0, v5}, Lcom/android/alibaba/ip/server/InstantPatcher;->optPathFor(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, p1, v5, v3, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 403
    :cond_0
    new-instance v4, Ldalvik/system/DexClassLoader;

    iget-object p1, p1, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    .line 404
    invoke-virtual {v5}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    .line 403
    invoke-direct {p0, v5}, Lcom/android/alibaba/ip/server/InstantPatcher;->optPathFor(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, p1, v5, v3, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 408
    :goto_0
    sget-boolean p1, Lcom/android/alibaba/ip/server/InstantPatcher;->hasResources:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    if-eqz p1, :cond_1

    const-string p1, "patch class need restart because has resouce patch "

    .line 409
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "com.android.alibaba.ip.runtime.AppPatchesLoaderImpl"

    const/4 v3, 0x1

    .line 414
    invoke-static {p1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 416
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got the patcher class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/alibaba/ip/runtime/PatchesLoader;

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got the patcher instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "getPatchedClasses"

    const/4 v5, 0x0

    .line 422
    new-array v6, v5, [Ljava/lang/Class;

    .line 423
    invoke-virtual {p1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v4, v5, [Ljava/lang/Object;

    .line 424
    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    nop

    nop

    const-string v4, "Got the list of classes "

    .line 425
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    array-length v4, p1

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p1, v5

    .line 427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 430
    :cond_2
    invoke-interface {v3}, Lcom/android/alibaba/ip/runtime/PatchesLoader;->load()Z

    move-result p1

    if-nez p1, :cond_3

    .line 431
    iput v2, p2, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    const-string p1, "exception to apply changes load"

    .line 432
    iput-object p1, p2, Lcom/android/alibaba/ip/common/PatchResult;->msg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p1

    .line 436
    :try_start_2
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    iput v2, p2, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception to apply changes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/alibaba/ip/common/PatchResult;->msg:Ljava/lang/String;

    .line 440
    iput-object p1, p2, Lcom/android/alibaba/ip/common/PatchResult;->t:Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 443
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    iput v2, p2, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    const-string v0, "dexopt failed or loadclass Failed"

    .line 445
    iput-object v0, p2, Lcom/android/alibaba/ip/common/PatchResult;->msg:Ljava/lang/String;

    .line 446
    iput-object p1, p2, Lcom/android/alibaba/ip/common/PatchResult;->t:Ljava/lang/Throwable;

    :cond_3
    :goto_2
    return-void
.end method

.method private handlePatches(Ljava/util/List;Lcom/android/alibaba/ip/common/PatchResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/alibaba/ip/runtime/ApplicationPatch;",
            ">;",
            "Lcom/android/alibaba/ip/common/PatchResult;",
            ")V"
        }
    .end annotation

    .line 354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;

    .line 355
    iget-object v1, v0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/alibaba/ip/server/InstantPatcher;->isResourcePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {v0}, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/alibaba/ip/server/InstantPatcher;->handleResourcePatch(Lcom/android/alibaba/ip/runtime/ApplicationPatch;Ljava/lang/String;Lcom/android/alibaba/ip/common/PatchResult;)V

    .line 357
    iget v0, p2, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->purgeResourceFiles()V

    return-void

    .line 362
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/android/alibaba/ip/server/InstantPatcher;->handleHotSwapPatch(Lcom/android/alibaba/ip/common/PatchResult;Lcom/android/alibaba/ip/runtime/ApplicationPatch;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleResourcePatch(Lcom/android/alibaba/ip/runtime/ApplicationPatch;Ljava/lang/String;Lcom/android/alibaba/ip/common/PatchResult;)V
    .locals 0

    .line 247
    :try_start_0
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->startUpdate()V

    .line 248
    invoke-virtual {p1}, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->getBytes()[B

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/alibaba/ip/server/FileManager;->writeAaptResources(Ljava/lang/String;[B)V

    const/4 p1, 0x1

    .line 249
    invoke-static {p1}, Lcom/android/alibaba/ip/server/FileManager;->finishUpdate(Z)V

    .line 250
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getExternalResourceFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->mergeResFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x6

    .line 254
    iput p2, p3, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    .line 255
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/android/alibaba/ip/common/PatchResult;->msg:Ljava/lang/String;

    .line 256
    iput-object p1, p3, Lcom/android/alibaba/ip/common/PatchResult;->t:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method private static hasResources(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/alibaba/ip/runtime/ApplicationPatch;",
            ">;)Z"
        }
    .end annotation

    .line 234
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/alibaba/ip/runtime/ApplicationPatch;

    .line 235
    invoke-virtual {v0}, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/android/alibaba/ip/server/InstantPatcher;->isResourcePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isResourcePath(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "resources.ap_"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private optPathFor(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 451
    new-instance v0, Ljava/io/File;

    const-string v1, "instant-opt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private savePatchInfo(Lcom/android/alibaba/ip/common/PatchInfo;)V
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x9
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;

    .line 333
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/alibaba/ip/common/PatchInfo;->baseVersion:Ljava/lang/String;

    const-string v2, "instant_patch"

    const-string v3, "instant_base_Version"

    invoke-static {v0, v2, v3, v1}, Lcom/android/alibaba/ip/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p1, Lcom/android/alibaba/ip/common/PatchInfo;->patchVersion:I

    const-string v2, "instant_patch_version"

    .line 334
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget p1, p1, Lcom/android/alibaba/ip/common/PatchInfo;->priority:I

    const-string v1, "instant_patch_priority"

    .line 335
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-boolean v0, Lcom/android/alibaba/ip/server/InstantPatcher;->hasResources:Z

    const-string v1, "instant_patch_has_resource"

    .line 336
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public applyPatch()V
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/android/alibaba/ip/server/InstantPatcher;->getPatchInfo()Lcom/android/alibaba/ip/common/PatchInfo;

    move-result-object v0

    .line 122
    iget-object v1, v0, Lcom/android/alibaba/ip/common/PatchInfo;->baseVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "InstantPatcher"

    if-eqz v1, :cond_0

    const-string v0, "no patch"

    .line 123
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    new-instance v1, Lcom/android/alibaba/ip/common/PatchResult;

    invoke-direct {v1}, Lcom/android/alibaba/ip/common/PatchResult;-><init>()V

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/alibaba/ip/common/PatchInfo;->baseVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "patch miss match"

    .line 130
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->isMainProcess:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/alibaba/ip/server/InstantPatcher;->purge()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    return-void

    .line 143
    :cond_2
    sget-boolean v3, Lcom/android/alibaba/ip/server/InstantPatcher;->hasResources:Z

    if-eqz v3, :cond_3

    const-string v3, "start patch res......"

    .line 144
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_1
    iget-object v3, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->getExternalResourceFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/alibaba/ip/server/MonkeyPatcher;->monkeyPatchExistingResources(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x6

    .line 148
    iput v4, v1, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    .line 149
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/alibaba/ip/common/PatchResult;->msg:Ljava/lang/String;

    .line 150
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :cond_3
    :goto_0
    :try_start_2
    iget v3, v0, Lcom/android/alibaba/ip/common/PatchInfo;->patchVersion:I

    invoke-static {v3, v5}, Lcom/android/alibaba/ip/server/FileManager;->getTempDexFile(IZ)Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

    move-result-object v3

    .line 155
    iget-object v4, v3, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    sget-boolean v4, Lcom/android/alibaba/ip/server/InstantPatcher;->hasResources:Z

    if-nez v4, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/android/alibaba/ip/server/InstantPatcher;->purge()V

    const-string v0, "no patchFile"

    .line 157
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    :cond_5
    new-instance v2, Lcom/android/alibaba/ip/server/InstantPatcher$1;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/alibaba/ip/server/InstantPatcher$1;-><init>(Lcom/android/alibaba/ip/server/InstantPatcher;Lcom/android/alibaba/ip/server/InstantPatcher$FileState;Lcom/android/alibaba/ip/common/PatchResult;)V

    .line 176
    iget v1, v0, Lcom/android/alibaba/ip/common/PatchInfo;->priority:I

    if-nez v1, :cond_6

    .line 177
    invoke-static {v2}, Lcom/android/alibaba/ip/utils/ThreadUtils;->asyncExcute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 179
    :cond_6
    iget v0, v0, Lcom/android/alibaba/ip/common/PatchInfo;->priority:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 180
    invoke-static {v2}, Lcom/android/alibaba/ip/utils/ThreadUtils;->syncExcute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void

    :catch_2
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public getPatchInfo()Lcom/android/alibaba/ip/common/PatchInfo;
    .locals 5

    .line 341
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/android/alibaba/ip/common/PatchInfo;

    invoke-direct {v0}, Lcom/android/alibaba/ip/common/PatchInfo;-><init>()V

    iput-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;

    .line 343
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;

    iget-object v1, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    const-string v2, "instant_patch"

    const-string v3, "instant_base_Version"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/android/alibaba/ip/utils/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/alibaba/ip/common/PatchInfo;->baseVersion:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;

    iget-object v1, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "instant_patch_version"

    invoke-static {v1, v2, v4, v3}, Lcom/android/alibaba/ip/utils/PreferencesUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/alibaba/ip/common/PatchInfo;->patchVersion:I

    .line 345
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;

    iget-object v1, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    const-string v4, "instant_patch_priority"

    invoke-static {v1, v2, v4, v3}, Lcom/android/alibaba/ip/utils/PreferencesUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/alibaba/ip/common/PatchInfo;->priority:I

    .line 346
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    const-string v1, "instant_patch_has_resource"

    invoke-static {v0, v2, v1, v3}, Lcom/android/alibaba/ip/utils/PreferencesUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/alibaba/ip/server/InstantPatcher;->hasResources:Z

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo:Lcom/android/alibaba/ip/common/PatchInfo;

    return-object v0
.end method

.method public getPatchVerifier()Lcom/android/alibaba/ip/common/IPatchVerifier;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->patchVerifier:Lcom/android/alibaba/ip/common/IPatchVerifier;

    return-object v0
.end method

.method public handlePatches(Ljava/lang/String;Lcom/android/alibaba/ip/common/PatchInfo;)Lcom/android/alibaba/ip/common/PatchResult;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/android/alibaba/ip/common/PatchResult;

    invoke-direct {v0}, Lcom/android/alibaba/ip/common/PatchResult;-><init>()V

    .line 268
    invoke-virtual {p0, p2}, Lcom/android/alibaba/ip/server/InstantPatcher;->hasPatched(Lcom/android/alibaba/ip/common/PatchInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 269
    iput v2, v0, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 273
    :try_start_0
    sput-boolean v2, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 276
    iget-object v2, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->patchVerifier:Lcom/android/alibaba/ip/common/IPatchVerifier;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/alibaba/ip/server/InstantPatcher;->isApkInDebug()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->patchVerifier:Lcom/android/alibaba/ip/common/IPatchVerifier;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lcom/android/alibaba/ip/common/IPatchVerifier;->authenticate(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x2

    .line 278
    iput p1, v0, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    sput-boolean v1, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    return-object v0

    .line 282
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "classes.dex"

    .line 283
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    const-string v4, "resources.ap_"

    .line 284
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    const/4 p1, 0x4

    .line 286
    iput p1, v0, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    sput-boolean v1, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    .line 320
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    .line 289
    :cond_2
    :try_start_3
    iget-object v3, p2, Lcom/android/alibaba/ip/common/PatchInfo;->baseVersion:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/alibaba/ip/server/InstantPatcher;->authenticate(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 p1, 0x5

    .line 290
    iput p1, v0, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    sput-boolean v1, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    .line 320
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    .line 295
    :cond_3
    :try_start_4
    iget v3, p2, Lcom/android/alibaba/ip/common/PatchInfo;->patchVersion:I

    invoke-static {p1, v3}, Lcom/android/alibaba/ip/runtime/ApplicationPatch;->makePatch(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 297
    invoke-static {p1}, Lcom/android/alibaba/ip/server/InstantPatcher;->hasResources(Ljava/util/List;)Z

    move-result v3

    sput-boolean v3, Lcom/android/alibaba/ip/server/InstantPatcher;->hasResources:Z

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/android/alibaba/ip/server/InstantPatcher;->handlePatches(Ljava/util/List;Lcom/android/alibaba/ip/common/PatchResult;)V

    .line 300
    iget p1, v0, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    if-nez p1, :cond_4

    .line 301
    invoke-direct {p0, p2}, Lcom/android/alibaba/ip/server/InstantPatcher;->savePatchInfo(Lcom/android/alibaba/ip/common/PatchInfo;)V

    const-string p1, "InstantPatcher"

    const-string p2, "patch success"

    .line 302
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    sput-boolean v1, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    .line 320
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    .line 318
    :cond_4
    sput-boolean v1, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    .line 320
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, v2

    goto :goto_0

    .line 318
    :cond_5
    sput-boolean v1, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p1

    .line 316
    :goto_0
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 318
    sput-boolean v1, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    if-eqz v3, :cond_6

    .line 320
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    :cond_6
    :goto_1
    return-object v0

    .line 318
    :goto_2
    sput-boolean v1, Lcom/android/alibaba/ip/server/InstantPatcher;->handled:Z

    if-eqz v2, :cond_7

    .line 320
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    :cond_7
    throw p1
.end method

.method public hasPatched(Lcom/android/alibaba/ip/common/PatchInfo;)Z
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/android/alibaba/ip/server/InstantPatcher;->getPatchInfo()Lcom/android/alibaba/ip/common/PatchInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/alibaba/ip/common/PatchInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isApkInDebug()Z
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x4
    .end annotation

    const/4 v0, 0x0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 512
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isMainProcess(Landroid/content/Context;)Z
    .locals 7

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 482
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "activity"

    .line 483
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 485
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 488
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v0, v1, :cond_1

    .line 489
    iput-boolean v4, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->isMainProcess:Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 494
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->isMainProcess:Z

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 495
    iput-boolean v4, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->isMainProcess:Z

    const-string p1, "InstantRun"

    const-string v0, "considering this process main process:no process with this package found?!"

    .line 496
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 501
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 504
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->isMainProcess:Z

    return p1
.end method

.method public purge()V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x9
    .end annotation

    .line 226
    invoke-direct {p0}, Lcom/android/alibaba/ip/server/InstantPatcher;->clearPatchInfo()V

    .line 227
    invoke-direct {p0}, Lcom/android/alibaba/ip/server/InstantPatcher;->clearPatch()V

    .line 228
    invoke-static {}, Lcom/android/alibaba/ip/server/FileManager;->purgeResourceFiles()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setiPatchVerifier(Lcom/android/alibaba/ip/common/IPatchVerifier;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/alibaba/ip/server/InstantPatcher;->patchVerifier:Lcom/android/alibaba/ip/common/IPatchVerifier;

    return-void
.end method
