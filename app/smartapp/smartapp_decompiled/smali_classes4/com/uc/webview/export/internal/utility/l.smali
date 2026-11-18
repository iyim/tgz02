.class public Lcom/uc/webview/export/internal/utility/l;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/l$b;,
        Lcom/uc/webview/export/internal/utility/l$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Lcom/uc/webview/export/internal/utility/l$a;

.field private static d:Lcom/uc/webview/export/internal/utility/l$a;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/lang/reflect/Method;

.field private static final g:[Ljava/lang/String;

.field private static h:Z

.field private static i:Z

.field private static volatile j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "armeabi-v7a"

    const-string v1, "arm64-v8a"

    const-string v2, "armeabi"

    const-string v3, "x86"

    .line 75
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/l;->a:[Ljava/lang/String;

    .line 190
    sget-object v0, Lcom/uc/webview/export/internal/utility/l$a;->a:Lcom/uc/webview/export/internal/utility/l$a;

    sput-object v0, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    .line 191
    sget-object v0, Lcom/uc/webview/export/internal/utility/l$a;->a:Lcom/uc/webview/export/internal/utility/l$a;

    sput-object v0, Lcom/uc/webview/export/internal/utility/l;->d:Lcom/uc/webview/export/internal/utility/l$a;

    .line 621
    new-instance v0, Lcom/uc/webview/export/internal/utility/m;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/m;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/utility/l;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 634
    sput-object v0, Lcom/uc/webview/export/internal/utility/l;->f:Ljava/lang/reflect/Method;

    const-string v1, "3032"

    .line 666
    sput-object v1, Lcom/uc/webview/export/internal/utility/l;->b:Ljava/lang/String;

    const/4 v1, 0x1

    .line 670
    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/uc/webview/export/internal/utility/l;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/uc/webview/export/internal/utility/l;->g:[Ljava/lang/String;

    .line 673
    sput-boolean v3, Lcom/uc/webview/export/internal/utility/l;->h:Z

    .line 674
    sput-boolean v3, Lcom/uc/webview/export/internal/utility/l;->i:Z

    .line 789
    sput-object v0, Lcom/uc/webview/export/internal/utility/l;->j:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Z)I
    .locals 1

    .line 838
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 1508
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1509
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v1

    .line 1510
    invoke-static/range {p3 .. p3}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1513
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    return-object v3

    .line 1519
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbba

    const-string v2, "No ucm dex file specified."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    .line 1528
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/utility/l;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "core.jar"

    .line 1530
    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "sdk_shell.jar"

    .line 1533
    invoke-static {v0, v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v3

    :goto_0
    :try_start_1
    const-string v4, "browser_if.jar"

    .line 1539
    invoke-static {v0, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-object v12, v1

    move-object v10, v2

    move-object v11, v3

    goto :goto_1

    :cond_2
    move-object v10, v3

    move-object v11, v10

    move-object v12, v11

    .line 1551
    :goto_1
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v6, "specified"

    move-object v4, v0

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p1

    move-object/from16 v13, p4

    invoke-direct/range {v4 .. v15}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    const-string v0, "ucmsdk"

    const/4 v1, 0x0

    .line 1031
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 1035
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 8

    .line 320
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 323
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-object p2

    .line 326
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bak_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 329
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return-object v0

    .line 334
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 341
    :cond_3
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 343
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    .line 349
    :catch_0
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ln -s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 351
    new-instance v2, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 352
    :catch_1
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_6

    .line 354
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 357
    :cond_5
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 361
    :cond_6
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "libar_pak_kr_uc.so"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ThinEnvTask"

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "linkOrCopyFile Time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    return-object p1

    .line 367
    :catch_2
    :try_start_5
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 369
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 371
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/io/File;Ljava/io/File;)V

    .line 372
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 378
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 380
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    cmp-long v3, v1, p0

    if-eqz v3, :cond_8

    .line 381
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-object v0

    :cond_8
    return-object p2

    .line 374
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 375
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v0, 0x3ed

    const-string v1, "Rename [%s] to [%s] failed."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p0

    .line 387
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0x3ef

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 508
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 510
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 511
    nop

    nop

    return-object p0

    .line 512
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 513
    nop

    nop

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 515
    :cond_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbc4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const-string p0, "\"true\" or \"false\" or boolean expected with key:[%s], now is [%s]"

    .line 516
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    const-string v0, "Utils"

    .line 242
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    new-instance v2, Lcom/uc/webview/export/internal/utility/n;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/utility/n;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CPU Count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CPU Count: Failed."

    .line 250
    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "1"

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 1373
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1376
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/utility/l;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5172
    new-instance v3, Lcom/uc/webview/export/internal/utility/p;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/utility/p;-><init>()V

    invoke-virtual {v1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1379
    array-length v4, v3

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 1383
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/utility/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "krlinks"

    .line 1384
    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "krcopies"

    .line 1386
    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "paks"

    .line 1389
    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1390
    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1392
    array-length v6, v3

    new-array v6, v6, [Ljava/io/File;

    .line 1393
    array-length v7, v3

    new-array v7, v7, [Ljava/io/File;

    .line 1394
    array-length v8, v3

    new-array v8, v8, [Ljava/io/File;

    .line 1397
    new-instance v9, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v9}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1398
    :goto_0
    array-length v12, v3

    if-ge v11, v12, :cond_4

    .line 1399
    aget-object v12, v3, v11

    const-string v14, "_pak_kr_uc.so"

    .line 1400
    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x3

    .line 1403
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v13, v16, -0x9

    .line 1402
    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x5f

    .line 1404
    invoke-virtual {v13, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    move-object/from16 p1, v2

    .line 1405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v5

    invoke-virtual {v13, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v15, v5

    .line 1406
    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1408
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1409
    new-instance v12, Ljava/io/File;

    if-eqz v14, :cond_2

    move-object/from16 v13, p2

    goto :goto_1

    :cond_2
    move-object v13, v4

    :goto_1
    invoke-direct {v12, v13, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1410
    new-instance v13, Ljava/io/File;

    if-eqz v14, :cond_3

    move-object/from16 v14, p1

    goto :goto_2

    :cond_3
    move-object v14, v0

    :goto_2
    invoke-direct {v13, v14, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1412
    aput-object v5, v6, v11

    .line 1413
    aput-object v12, v7, v11

    .line 1414
    aput-object v13, v8, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    .line 1417
    invoke-static {v6, v7, v8}, Lcom/uc/webview/export/internal/utility/l;->a([Ljava/io/File;[Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "getLnkOrCpyResDirFromSO: file count:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    invoke-virtual {v9}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils"

    .line 1418
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    aget-object v1, v1, v10

    aget-object v2, v7, v10

    if-ne v1, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_6

    .line 1425
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1427
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_4
    return-object v2
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 896
    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 901
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 902
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 905
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 906
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    .line 2896
    invoke-static {v3, p1, v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 909
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v4

    .line 913
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 914
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "com.uc.webview.browser.shell.Build$Version"

    const/4 v2, 0x0

    .line 807
    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 808
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 809
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Utils"

    const-string v1, ".getVersionFieldFromSdkShellDexLoader"

    .line 813
    invoke-static {p1, v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1715
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1716
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1719
    array-length v2, p0

    if-lez v2, :cond_2

    const/16 v2, 0x8

    .line 1721
    array-length v3, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1723
    aget-object v4, p0, v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 1725
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 1726
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    const-string v6, " "

    .line 1727
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 1729
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1733
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/br;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/br;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz p2, :cond_0

    move-object/from16 v1, p2

    goto :goto_0

    .line 1590
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " listUninstalls ucmDirFile :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils"

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1594
    new-instance v2, Ljava/io/File;

    const-string v4, "sdk_shell.jar"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1595
    new-instance v4, Ljava/io/File;

    const-string v5, "browser_if.jar"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1596
    new-instance v5, Ljava/io/File;

    const-string v6, "core.jar"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1597
    new-instance v6, Ljava/io/File;

    const-string v7, "lib"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1600
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v7

    const-string v8, "sdk_setup"

    invoke-virtual {v7, v8}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    .line 5568
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 5569
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    goto :goto_1

    .line 5571
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5572
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5573
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5574
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_6

    .line 1604
    sget-object v8, Lcom/uc/webview/export/internal/utility/l;->a:[Ljava/lang/String;

    array-length v10, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_5

    aget-object v12, v8, v11

    .line 1605
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    move-object v13, v6

    .line 1613
    :goto_3
    new-instance v6, Ljava/io/File;

    const-string v8, "assets"

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1614
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, " listUninstalls resDirFile :"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_6

    .line 1618
    new-instance v7, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    .line 1620
    invoke-static {v13}, Lcom/uc/webview/export/internal/utility/l;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v17

    .line 1621
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/l;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v18

    .line 1622
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/utility/l;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    .line 1623
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v20

    .line 1624
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v21

    .line 1625
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/l;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v16, "specified"

    move-object v14, v7

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v25}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1618
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " listUninstalls retUCMpis size :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1637
    array-length v2, v0

    :goto_4
    if-ge v9, v2, :cond_8

    aget-object v3, v0, v9

    .line 1638
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v4, p0

    .line 1639
    invoke-static {v4, v3, v1}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    goto :goto_5

    :cond_7
    move-object/from16 v4, p0

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    return-object v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/br;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/uc/webview/export/internal/utility/l;

    monitor-enter v0

    .line 941
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x11b

    .line 942
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const-string v2, "soFilePath"

    .line 943
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 944
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "soFilePath"

    .line 948
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "resFilePath"

    .line 949
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 945
    invoke-static {p0, v4, v2, v3, v4}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 952
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "ucmKrlDir"

    .line 955
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 956
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 957
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_1
    const/16 p0, 0x11c

    .line 959
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "flags"

    .line 857
    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 858
    new-instance v1, Ljava/io/File;

    const-string v2, "fpathhash"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 860
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 861
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 862
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x20

    .line 863
    :try_start_2
    new-array v3, v3, [B

    .line 865
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    .line 866
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 868
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "Utils"

    .line 869
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "curHash:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", preHash:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "mpfpc"

    .line 871
    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    .line 874
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 875
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v0

    .line 880
    :goto_1
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 881
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 882
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v1, v0

    :goto_2
    move-object v2, v1

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v1, v0

    :goto_3
    move-object v2, v1

    .line 878
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception p0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 880
    :goto_5
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 881
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 882
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 1042
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1044
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "flags"

    .line 4062
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 4063
    new-instance v0, Ljava/io/File;

    const-string v4, "setup_delete"

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 4065
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4066
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 4068
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/16 v4, 0xc

    if-lt v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 1052
    invoke-static {p1, v3, p2}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 1053
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v2, :cond_4

    .line 4076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 4078
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 4080
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "createNewFile return false"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 4082
    new-instance p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p2, 0x3ee

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_4
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 300
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 301
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 302
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    .line 303
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p0, v2, v4

    if-nez p0, :cond_2

    if-eqz v1, :cond_0

    .line 309
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 313
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    nop

    :catch_1
    :cond_1
    return-void

    .line 304
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 305
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Size mismatch."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 309
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_3
    if-eqz v0, :cond_4

    .line 313
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 315
    :catch_3
    :cond_4
    throw p0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Utils"

    .line 819
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addHeaderInfoToCrashSdk headerInfos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.uc.crashsdk.export.CrashApi"

    const-string v2, "getInstance"

    .line 820
    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 821
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 822
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "addHeaderInfo"

    const/4 v4, 0x2

    .line 823
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    .line 826
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v8

    .line 823
    invoke-static {v1, v3, v5, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addHeaderInfoToCrashSdk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 887
    iget p0, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 889
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object p0

    const-string v0, "MULTI_CORE_TYPE"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

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

.method public static a(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 542
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->d(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 546
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 547
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p0

    return p0

    .line 549
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 644 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Utils"

    const-string v2, "setReadable"

    .line 554
    invoke-static {v0, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1103
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->a:Lcom/uc/webview/export/internal/utility/l$a;

    if-ne v0, v1, :cond_2

    if-eqz p0, :cond_2

    const-string v0, "THICK_INTEGRATION"

    .line 1105
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 1107
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/Boolean;)Z

    move-result p0

    .line 1108
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 1109
    :try_start_0
    sget-object p0, Lcom/uc/webview/export/internal/utility/l$a;->b:Lcom/uc/webview/export/internal/utility/l$a;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/uc/webview/export/internal/utility/l$a;->c:Lcom/uc/webview/export/internal/utility/l$a;

    :goto_0
    sput-object p0, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    .line 1110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    sget-object p0, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    sget-object v0, Lcom/uc/webview/export/internal/utility/l$a;->b:Lcom/uc/webview/export/internal/utility/l$a;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 1110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1115
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result p0

    return p0
.end method

.method private static a([Ljava/io/File;[Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;
    .locals 12

    const-string v0, "Utils"

    .line 393
    array-length v1, p0

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 399
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    const/4 v0, 0x0

    .line 400
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_1

    .line 401
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 402
    aget-object v5, p1, v0

    aput-object v5, v1, v0

    goto :goto_1

    .line 405
    :cond_0
    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p1, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    aget-object v5, p1, v0

    aput-object v5, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 412
    :cond_2
    new-instance v5, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    .line 418
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "sh"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 419
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 420
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v8, 0x0

    .line 421
    :goto_2
    array-length v9, p0

    if-ge v8, v9, :cond_4

    .line 422
    aget-object v9, p1, v8

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 423
    aget-object v9, p1, v8

    aput-object v9, v1, v8

    goto :goto_3

    :cond_3
    const-string v9, "ln -s %s %s"

    .line 426
    new-array v10, v2, [Ljava/lang/Object;

    aget-object v11, p0, v8

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    aget-object v11, p1, v8

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v9, "\n"

    .line 427
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 429
    aget-object v9, p1, v8

    aput-object v9, v1, v8

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    const-string p1, "exit\n"

    .line 431
    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 433
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 434
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    .line 440
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    const/4 p1, 0x1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_3
    const-string v7, "symlink exception."

    .line 437
    invoke-static {v0, v7, p1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_6

    .line 440
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_7

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "link success! Time:"

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 450
    :cond_7
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    throw p1

    :goto_5
    if-eqz v6, :cond_8

    .line 440
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_8
    throw p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const/4 p1, 0x0

    .line 454
    :goto_6
    :try_start_5
    array-length v0, p0

    if-ge p1, v0, :cond_a

    .line 455
    aget-object v0, p2, p1

    .line 456
    aget-object v5, p0, p1

    .line 457
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 459
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 461
    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/io/File;Ljava/io/File;)V

    .line 462
    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 468
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 470
    aput-object v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 464
    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 465
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p1, 0x3ed

    const-string p2, "Rename [%s] to [%s] failed."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v6, v1, v4

    aput-object v0, v1, v3

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_a
    return-object v1

    :catch_2
    move-exception p0

    .line 474
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0x3ef

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public static a(Ljava/lang/ClassLoader;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.uc.webview.browser.shell.NativeLibraries"

    const/4 v2, 0x1

    .line 703
    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "LIBRARIES"

    .line 705
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 706
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 707
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/String;

    .line 708
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 709
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    if-eqz v5, :cond_0

    .line 710
    aget-object v6, v5, v3

    if-eqz v6, :cond_0

    .line 711
    aget-object v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 715
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 723
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 721
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 719
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 1237
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 2263
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2264
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1126
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1432
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1435
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lib"

    .line 1437
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_jar_kj_uc.so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1442
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    .line 1443
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xd

    .line 1442
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jar"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1445
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "kjlinks"

    .line 1446
    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "kjcopies"

    .line 1448
    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1451
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1452
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1454
    invoke-static {v0, p1, v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static b(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 1

    .line 792
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "NAME"

    .line 793
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/utility/l;->j:Ljava/lang/String;

    .line 795
    :cond_0
    sget-object p0, Lcom/uc/webview/export/internal/utility/l;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/br;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/uc/webview/export/internal/utility/l;

    monitor-enter v0

    .line 965
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x11d

    .line 967
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const-string v2, "dexFilePath"

    .line 970
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Utils"

    .line 972
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " listFromOptions dexPath:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 975
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_0
    const-string v2, "set_odex_path"

    .line 979
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "odexs"

    .line 981
    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 983
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x11e

    if-nez v3, :cond_3

    const-string v3, "dexFilePath"

    .line 988
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "soFilePath"

    .line 989
    invoke-virtual {p1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "resFilePath"

    .line 990
    invoke-virtual {p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 986
    invoke-static {p0, v3, v5, v6, v2}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 993
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 997
    invoke-static {v4}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    monitor-exit v0

    return-object v1

    :cond_3
    :try_start_1
    const-string v3, "ucmKrlDir"

    .line 1005
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1006
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1007
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v1}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_4
    const-string v3, "ucmLibDir"

    .line 1013
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1014
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1015
    invoke-static {p0, p1, v2}, Lcom/uc/webview/export/internal/utility/l;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object p0

    .line 1017
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v1, :cond_6

    .line 3181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_6

    .line 3182
    new-instance p0, Lcom/uc/webview/export/internal/utility/q;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/utility/q;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1025
    :cond_6
    invoke-static {v4}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .line 1358
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    new-instance v0, Lcom/uc/webview/export/internal/utility/s;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/s;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1365
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1366
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    const/4 v4, 0x0

    .line 1367
    invoke-static {v3, v1, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 572
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->d(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 576
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 577
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p0

    return p0

    .line 579
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 711 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Utils"

    const-string v2, "setExecutable"

    .line 584
    invoke-static {v0, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 922
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 925
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 926
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 928
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 930
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static b(Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 206
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 3

    .line 218
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 219
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 220
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 221
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v2, p0, :cond_1

    return v2

    :cond_1
    return v1

    .line 222
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 223
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 198
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()I
    .locals 2

    .line 480
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v0

    const-string v1, "conn_to"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1388

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const-string v0, "flags"

    .line 1787
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1788
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1790
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkQuickVerifiedResult filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", prefix:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Utils"

    invoke-static {v1, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1794
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 1798
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_y"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 0

    .line 607
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 1737
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1738
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1751
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 1756
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    .line 1757
    new-array v3, v2, [Ljava/lang/Class;

    .line 1758
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "getProcessName"

    .line 1759
    new-array v4, v2, [Ljava/lang/Class;

    .line 1760
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/uc/webview/export/internal/utility/l;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1762
    :catch_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 1764
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1767
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1768
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_1

    .line 1769
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object p0, Lcom/uc/webview/export/internal/utility/l;->k:Ljava/lang/String;

    .line 1775
    :cond_2
    :goto_0
    sget-object p0, Lcom/uc/webview/export/internal/utility/l;->k:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, ""

    return-object p0

    .line 1778
    :cond_3
    sget-object p0, Lcom/uc/webview/export/internal/utility/l;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 1

    const-string v0, "SUPPORT_SDK_MIN"

    .line 799
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "decompresses2"

    .line 1662
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1664
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1666
    new-instance p2, Ljava/io/File;

    .line 1667
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1668
    new-instance p0, Ljava/io/File;

    .line 1669
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1671
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d()I
    .locals 2

    .line 488
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v0

    const-string v1, "read_to"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1388

    return v0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 2

    .line 615
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 1459
    :goto_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :try_start_0
    const-string v0, "libcore_jar_kj_uc.so"

    .line 1466
    invoke-static {p1, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1467
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "libsdk_shell_jar_kj_uc.so"

    .line 1483
    invoke-static {p1, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v1

    goto :goto_1

    :catch_0
    move-object v7, v0

    :goto_1
    :try_start_2
    const-string v1, "libbrowser_if_jar_kj_uc.so"

    .line 1487
    invoke-static {p1, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-object v8, v0

    .line 1490
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    .line 1492
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1493
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1494
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v3, "specified"

    move-object v1, v0

    move-object v2, p0

    move-object v10, p2

    invoke-direct/range {v1 .. v12}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0

    :catch_2
    move-exception v0

    .line 1469
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1471
    sget-object v1, Lcom/uc/webview/export/internal/utility/l;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1472
    array-length v6, p1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_1

    aget-object v8, p1, v7

    .line 1473
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1474
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1479
    :cond_2
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .line 1783
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 532
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/app/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/system/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Utils"

    const-string v2, "isSystemFile"

    .line 535
    invoke-static {v1, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 657
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 658
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 659
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 660
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method private static e(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 1577
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1119
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

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1135
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1138
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static f()Z
    .locals 3

    .line 1087
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->a:Lcom/uc/webview/export/internal/utility/l$a;

    if-ne v0, v1, :cond_1

    .line 1088
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    monitor-enter v0

    .line 1089
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    sget-object v2, Lcom/uc/webview/export/internal/utility/l$a;->a:Lcom/uc/webview/export/internal/utility/l$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    :try_start_1
    const-string v1, "com.uc.webkit.sdk.CoreFactoryImpl"

    .line 1091
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1092
    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->b:Lcom/uc/webview/export/internal/utility/l$a;

    sput-object v1, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1094
    :catch_0
    :try_start_2
    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->c:Lcom/uc/webview/export/internal/utility/l$a;

    sput-object v1, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    .line 1097
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1099
    :cond_1
    :goto_1
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->c:Lcom/uc/webview/export/internal/utility/l$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->b:Lcom/uc/webview/export/internal/utility/l$a;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static g(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 1213
    sget v0, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    sget v0, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    return-object v1

    .line 1216
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 4149
    new-instance v0, Lcom/uc/webview/export/internal/utility/o;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/o;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1220
    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 1221
    aget-object v1, p0, v0

    :cond_1
    return-object v1
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/unexists/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 272
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 273
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 287
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 290
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 284
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_1

    .line 287
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    :cond_1
    if-eqz p0, :cond_2

    .line 290
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    :cond_2
    const-string v0, ""

    :goto_2
    return-object v0

    :catchall_2
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    .line 287
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    :cond_3
    if-eqz p0, :cond_4

    .line 290
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    :cond_4
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public static h()V
    .locals 8

    const-string v0, "Utils"

    const/16 v1, 0x2333

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 1273
    :try_start_0
    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1275
    aget-object v2, v1, v7

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    .line 1276
    aget-object v2, v1, v5

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    .line 1277
    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I

    .line 1278
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    .line 1279
    aget-object v1, v1, v6

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "exception"

    .line 1281
    invoke-static {v0, v2, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1284
    :goto_0
    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "ucbs %s.%s-impl %s.%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1289
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initUCMBuildInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", apiLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", coreVer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", minVer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    new-instance v0, Lcom/uc/webview/export/internal/utility/r;

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/utility/r;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/Map;)V

    return-void
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 637
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/l;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string v1, "android.os.SystemProperties"

    .line 638
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "get"

    .line 639
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 640
    sput-object v1, Lcom/uc/webview/export/internal/utility/l;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 643
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/l;->f:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 644
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSystemProperty "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Utils"

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Z
    .locals 3

    const-string v0, "go_is_bw_rt"

    .line 1681
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1683
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1685
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->d:Lcom/uc/webview/export/internal/utility/l$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->a:Lcom/uc/webview/export/internal/utility/l$a;

    if-ne v0, v1, :cond_2

    .line 1686
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->d:Lcom/uc/webview/export/internal/utility/l$a;

    monitor-enter v0

    .line 1687
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/l;->d:Lcom/uc/webview/export/internal/utility/l$a;

    sget-object v2, Lcom/uc/webview/export/internal/utility/l$a;->a:Lcom/uc/webview/export/internal/utility/l$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    :try_start_1
    const-string v1, "com.uc.webview.browser.BrowserCore"

    .line 1689
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1690
    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->b:Lcom/uc/webview/export/internal/utility/l$a;

    sput-object v1, Lcom/uc/webview/export/internal/utility/l;->d:Lcom/uc/webview/export/internal/utility/l$a;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1692
    :catch_0
    :try_start_2
    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->c:Lcom/uc/webview/export/internal/utility/l$a;

    sput-object v1, Lcom/uc/webview/export/internal/utility/l;->d:Lcom/uc/webview/export/internal/utility/l$a;

    .line 1695
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1697
    :cond_2
    :goto_1
    sget-object v0, Lcom/uc/webview/export/internal/utility/l;->d:Lcom/uc/webview/export/internal/utility/l$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->b:Lcom/uc/webview/export/internal/utility/l$a;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static j(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 1233
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 4228
    :cond_0
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0x3ea

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Directory [%s] not exists."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
