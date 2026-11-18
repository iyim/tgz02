.class public final Lcom/uc/webview/export/internal/setup/ak;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(ILandroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, ", "

    const/4 v1, 0x0

    .line 479
    :try_start_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/ak;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "SetupPreprocess"

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_5

    .line 17097
    :pswitch_0
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "initPreprocess "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17098
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x206

    .line 17099
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 17101
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/ak;->c(Landroid/content/Context;)V

    .line 17102
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object p0

    const-string p1, "gk_init_pre"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const/16 p0, 0x207

    .line 17104
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    goto/16 :goto_5

    .line 16344
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "preInitIcu "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16346
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preInitIcu sDecompressRootDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16348
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 16349
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 16351
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    const/16 p0, 0x232f

    .line 16353
    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 16356
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preInitIcu failed, sDecompressRootDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15325
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "preInitPak "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15327
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preInitPak sDecompressRootDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15329
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 15330
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 15332
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 15334
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    const-string p2, "assets"

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2330

    .line 15335
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v4

    invoke-static {p1, p2}, Lcom/uc/webview/export/internal/setup/ak;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 15338
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preInitPak failed, sDecompressRootDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 14362
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "preStartCoreEngine "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2331

    .line 14363
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v4

    invoke-static {p0, p2}, Lcom/uc/webview/export/internal/setup/ak;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 11265
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "prePartialInitWebView "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11267
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11268
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->e()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x217

    .line 11270
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 11273
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 12287
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "preInitWebviewProvider "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x232d

    .line 12288
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v4

    invoke-static {p0, p2}, Lcom/uc/webview/export/internal/setup/ak;->a(I[Ljava/lang/Object;)V

    .line 11275
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/j;->a(Landroid/content/Context;)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const/16 p0, 0x232e

    .line 13416
    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(I[Ljava/lang/Object;)V

    const/16 p0, 0x218

    .line 11277
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    goto/16 :goto_5

    :cond_2
    const-string p0, "prePartialInitWebView failed"

    .line 11279
    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 490
    :pswitch_5
    aget-object p0, p2, v4

    check-cast p0, Ljava/lang/String;

    .line 8369
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "preloadSo "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", decompressRootDir"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9065
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8372
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 8373
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->e()Ljava/lang/ClassLoader;

    move-result-object p2

    if-eqz p1, :cond_9

    .line 9381
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 9384
    :cond_3
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p2}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/ClassLoader;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz p2, :cond_9

    const/16 p2, 0x20c

    const/16 v0, 0x20d

    .line 9388
    :try_start_2
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 9390
    new-instance p2, Ljava/io/File;

    const-string v6, "lib"

    invoke-direct {p2, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/l;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 9391
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    .line 9392
    new-instance v6, Ljava/io/File;

    const-string v7, "libwebviewuc.so"

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9393
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x232c

    .line 9394
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v3

    invoke-static {v6, v2}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9398
    sput-object p0, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    .line 9399
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object p0

    const-string p2, "gk_preload_so"

    .line 9400
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 9399
    invoke-virtual {p0, p2, v2}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 9402
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "preloadSoInternal  libwebviewuc res:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9404
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preloadSoInternal failed libwebviewuc not exist. libDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9409
    :goto_0
    :try_start_3
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_4
    const-string p1, "preloadSoInternal failed. "

    .line 9407
    invoke-static {v5, p1, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 9409
    :goto_1
    :try_start_5
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 9410
    throw p0

    .line 487
    :pswitch_6
    aget-object p0, p2, v4

    check-cast p0, Ljava/lang/String;

    .line 7304
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "preloadJar "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", decompressRootDir:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8065
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x212

    .line 7305
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 7306
    new-instance v0, Ljava/io/File;

    const-string v2, "core.jar"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 7307
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "odexs"

    .line 7311
    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7312
    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/utility/l;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7310
    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 7313
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7314
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 7317
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 7320
    :cond_6
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    goto/16 :goto_5

    :pswitch_7
    const-string p0, "preloadCoreClass"

    .line 11065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10124
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz p0, :cond_9

    .line 10127
    :try_start_6
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 10128
    const-class p0, Lcom/uc/webview/export/internal/setup/ak;

    .line 10129
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 10128
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->a(Ljava/lang/ClassLoader;)Z

    goto/16 :goto_5

    .line 10132
    :cond_7
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->b()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x2329

    .line 10133
    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 10138
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    .line 10140
    :goto_2
    :try_start_8
    throw p0

    .line 493
    :pswitch_8
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ak;->b()V

    .line 494
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ak;->a()V

    .line 10119
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->a()Lcom/uc/webview/export/internal/setup/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/o;->b()Lcom/uc/webview/export/internal/setup/az;

    goto/16 :goto_5

    .line 501
    :pswitch_9
    aget-object p0, p2, v4

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/setup/ak;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 483
    :pswitch_a
    aget-object p0, p2, v4

    check-cast p0, Ljava/lang/String;

    aget-object v6, p2, v3

    check-cast v6, Ljava/lang/String;

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    const/4 v7, 0x3

    aget-object p2, p2, v7

    check-cast p2, Ljava/lang/Boolean;

    .line 484
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 6442
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "preDecompress "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7065
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    .line 6444
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 6445
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_5

    .line 6448
    :cond_8
    sget-object p2, Lcom/uc/webview/export/internal/setup/ak;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x210

    .line 6449
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    const/16 p2, 0x211

    .line 6452
    :try_start_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6453
    invoke-static {p1, p0, v6, v2, v4}, Lcom/uc/webview/export/extension/UCCore;->extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 6456
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "preDecompress extract: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 6461
    :goto_3
    :try_start_a
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 6458
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    .line 6461
    :goto_4
    :try_start_c
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    throw p0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    move-exception p0

    .line 520
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a()V
    .locals 1

    .line 55
    new-instance v0, Lcom/uc/webview/export/internal/setup/al;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/al;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Runnable;)V

    .line 61
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static a(I[Ljava/lang/Object;)V
    .locals 3

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetupController.preLaunchCoreSetupTask_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "asyncInitPreprocess "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupPreprocess"

    .line 2065
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/uc/webview/export/internal/setup/am;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/am;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preloadIo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupPreprocess"

    .line 4065
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    .line 243
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20a

    .line 244
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const/16 v0, 0x20b

    .line 247
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v3

    const-string v4, "gk_preload_io"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 248
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->b(Landroid/content/Context;)V

    .line 250
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->c(Landroid/content/Context;)V

    const-string v3, "pre_head"

    .line 252
    invoke-static {v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 4221
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    .line 4222
    new-array v3, v3, [Ljava/lang/String;

    .line 4224
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5216
    new-instance v4, Ljava/io/File;

    const-string v5, "libkernelu4_7z_uc.so"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5217
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 4226
    invoke-static {p0, p1}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4225
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 v1, 0x1

    .line 4228
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/utility/i;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object p1

    if-eqz p1, :cond_2

    add-int/lit8 p1, v1, 0x1

    .line 4229
    invoke-static {}, Lcom/uc/webview/export/internal/utility/i;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v2

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-lez p1, :cond_3

    .line 4232
    invoke-static {p0, v3}, Lcom/uc/webview/export/internal/setup/ah;->a(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_3
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 256
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    throw p0

    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Z
    .locals 2

    .line 420
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.uc.webkit.sdk.CoreFactoryImpl"

    if-eqz p0, :cond_1

    .line 426
    :try_start_0
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    goto :goto_0

    .line 428
    :cond_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 431
    :goto_0
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string p0, "SetupPreprocess"

    const-string v0, "shouldPreLaunchCoreSetupTask failed."

    .line 434
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static b()V
    .locals 4

    const-string v0, "preloadSdkClass "

    const-string v1, "SetupPreprocess"

    .line 3065
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x208

    .line 158
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const/16 v0, 0x209

    .line 161
    :try_start_0
    const-class v2, Lcom/uc/webview/export/internal/setup/ak;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 3146
    const-class v3, Lcom/uc/webview/export/internal/setup/o;

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3147
    const-class v3, Lcom/uc/webview/export/internal/SDKFactory;

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3148
    const-class v3, Lcom/uc/webview/export/cyclone/UCCyclone;

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3149
    const-class v3, Lcom/uc/webview/export/internal/setup/br;

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3150
    const-class v3, Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3151
    const-class v3, Lcom/uc/webview/export/internal/interfaces/IWaStat;

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3152
    const-class v3, Lcom/uc/webview/export/internal/utility/l;

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 162
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v2

    const-string v3, "gk_preload_cl"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 164
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void

    :goto_0
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    throw v1

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/ak;->c(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "commonInitPreprocess "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupPreprocess"

    .line 1065
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x204

    .line 71
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 73
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/ak;->d(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ak;->b()V

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/setup/ak;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ak;->a()V

    .line 1119
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->a()Lcom/uc/webview/export/internal/setup/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/o;->b()Lcom/uc/webview/export/internal/setup/az;

    const/16 p0, 0x205

    .line 79
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 10

    .line 293
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "preloadStart "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SetupPreprocess"

    .line 6065
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6174
    invoke-static {}, Lcom/uc/webview/export/internal/utility/Log;->enableUCLogger()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 6177
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6179
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 6180
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    const-string v4, "uclogconfig.apk"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6182
    new-instance v1, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 6183
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v5, 0xe3

    .line 6185
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    .line 6184
    invoke-static {v5, v6, v7}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    if-eqz v4, :cond_1

    .line 6187
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6188
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    .line 6189
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p0

    invoke-static/range {v4 .. v9}, Lcom/uc/webview/export/internal/utility/h;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/utility/f$a;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6201
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    const-string v0, "setupPrintLogByConfigFile "

    .line 6206
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2
    :goto_0
    return-void
.end method
