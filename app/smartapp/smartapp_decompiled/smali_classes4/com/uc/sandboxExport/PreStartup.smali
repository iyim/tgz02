.class public Lcom/uc/sandboxExport/PreStartup;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/sandboxExport/h;


# annotations
.annotation build Lcom/uc/sandboxExport/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/sandboxExport/PreStartup$b;,
        Lcom/uc/sandboxExport/PreStartup$a;,
        Lcom/uc/sandboxExport/PreStartup$c;,
        Lcom/uc/sandboxExport/PreStartup$d;
    }
.end annotation


# static fields
.field private static a:Lcom/uc/sandboxExport/PreStartup$c;

.field private static b:[Lcom/uc/sandboxExport/PreStartup$b;

.field private static c:[Lcom/uc/sandboxExport/PreStartup$a;

.field private static d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a(I)Landroid/os/Handler;
    .locals 0

    .line 9616
    invoke-static {p0}, Lcom/uc/sandboxExport/PreStartup;->b(I)Lcom/uc/sandboxExport/PreStartup$b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10581
    :cond_0
    iget-object p0, p0, Lcom/uc/sandboxExport/PreStartup$b;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private static b(I)Lcom/uc/sandboxExport/PreStartup$b;
    .locals 3

    .line 621
    sget-object v0, Lcom/uc/sandboxExport/PreStartup;->b:[Lcom/uc/sandboxExport/PreStartup$b;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 624
    :cond_0
    sget-object v0, Lcom/uc/sandboxExport/PreStartup;->a:Lcom/uc/sandboxExport/PreStartup$c;

    iget-boolean v0, v0, Lcom/uc/sandboxExport/PreStartup$c;->a:Z

    if-nez v0, :cond_1

    const/4 p0, 0x0

    .line 627
    :cond_1
    sget-object v0, Lcom/uc/sandboxExport/PreStartup;->b:[Lcom/uc/sandboxExport/PreStartup$b;

    aget-object v0, v0, p0

    if-nez v0, :cond_5

    .line 629
    sget-object v0, Lcom/uc/sandboxExport/PreStartup;->a:Lcom/uc/sandboxExport/PreStartup$c;

    iget-boolean v0, v0, Lcom/uc/sandboxExport/PreStartup$c;->a:Z

    if-eqz v0, :cond_4

    if-nez p0, :cond_2

    const-string v0, "U4_RNProcLauncherThread"

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const-string v0, "U4_RIProcLauncherThread"

    goto :goto_0

    :cond_3
    const-string v0, "U4_GProcLauncherThread"

    goto :goto_0

    :cond_4
    const-string v0, "U4_ProLauncherThread"

    .line 639
    :goto_0
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->b:[Lcom/uc/sandboxExport/PreStartup$b;

    new-instance v2, Lcom/uc/sandboxExport/PreStartup$b;

    invoke-direct {v2, v0}, Lcom/uc/sandboxExport/PreStartup$b;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, p0

    .line 642
    :cond_5
    sget-object v0, Lcom/uc/sandboxExport/PreStartup;->b:[Lcom/uc/sandboxExport/PreStartup$b;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static bind(ILandroid/content/ServiceConnection;)I
    .locals 5

    .line 547
    const-class v0, Lcom/uc/sandboxExport/PreStartup;

    monitor-enter v0

    .line 548
    :try_start_0
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    if-eqz v1, :cond_3

    if-ltz p0, :cond_3

    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    array-length v1, v1

    if-ge p0, v1, :cond_3

    .line 550
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    aget-object p0, v1, p0

    if-eqz p0, :cond_3

    .line 551
    invoke-virtual {p0}, Lcom/uc/sandboxExport/PreStartup$a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8266
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/sandboxExport/PreStartup$a;->c:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 8268
    iget-object v1, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindService "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uc/sandboxExport/PreStartup$a;->f:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 9085
    invoke-static {v4, v1, v2, v3}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8269
    iput-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->h:Landroid/content/ServiceConnection;

    .line 8270
    iget p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->e:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 8272
    :cond_0
    iget p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->e:I

    if-ne p1, v4, :cond_1

    .line 8273
    iget-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/uc/sandboxExport/d;

    invoke-direct {v1, p0}, Lcom/uc/sandboxExport/d;-><init>(Lcom/uc/sandboxExport/PreStartup$a;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p0, 0x1

    .line 552
    :goto_0
    monitor-exit v0

    return p0

    .line 8267
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "bindService must be called in the launcher thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 554
    :cond_3
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static connectionValid(I)Z
    .locals 6

    .line 523
    const-class v0, Lcom/uc/sandboxExport/PreStartup;

    monitor-enter v0

    const/4 v1, 0x1

    .line 524
    :try_start_0
    sput-boolean v1, Lcom/uc/sandboxExport/PreStartup;->d:Z

    .line 525
    sget-object v2, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ltz p0, :cond_2

    sget-object v2, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    array-length v2, v2

    if-ge p0, v2, :cond_2

    .line 526
    sget-object v2, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    aget-object v2, v2, p0

    if-nez v2, :cond_1

    const-string v2, "sandbox.PreStartup"

    const-string v4, "Can\'t find connection for proc id %d"

    .line 528
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    .line 6127
    invoke-static {v4, v1}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 6128
    invoke-static {v1}, Lcom/uc/sandboxExport/helper/c;->a([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v4, 0x5

    if-eqz v1, :cond_0

    .line 7097
    invoke-static {v4, v2, p0, v1}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8093
    invoke-static {v4, v2, p0, v1}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string p0, "sandbox.PreStartup"

    const-string v4, "check connection: %s"

    .line 530
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/uc/sandboxExport/PreStartup$a;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p0, v4, v1}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    invoke-virtual {v2}, Lcom/uc/sandboxExport/PreStartup$a;->a()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 534
    :cond_2
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getLauncherHandlerThread(I)Landroid/os/HandlerThread;
    .locals 2

    .line 574
    const-class v0, Lcom/uc/sandboxExport/PreStartup;

    monitor-enter v0

    const/4 v1, 0x1

    .line 575
    :try_start_0
    sput-boolean v1, Lcom/uc/sandboxExport/PreStartup;->d:Z

    .line 576
    invoke-static {p0}, Lcom/uc/sandboxExport/PreStartup;->b(I)Lcom/uc/sandboxExport/PreStartup$b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 9581
    :cond_0
    iget-object p0, p0, Lcom/uc/sandboxExport/PreStartup$b;->b:Landroid/os/HandlerThread;

    .line 577
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 578
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 356
    invoke-static {p0}, Lcom/uc/sandboxExport/helper/f;->a(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setEnable(Z)V
    .locals 1

    .line 419
    invoke-static {}, Lcom/uc/sandboxExport/helper/f;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const-string v0, "enable"

    .line 421
    invoke-static {v0, p0}, Lcom/uc/sandboxExport/helper/f;->a(Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static startup()V
    .locals 1

    .line 360
    invoke-static {}, Lcom/uc/sandboxExport/helper/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/sandboxExport/PreStartup;->startup(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static startup(Landroid/content/Context;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-static {p0}, Lcom/uc/sandboxExport/helper/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 367
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v1, ":"

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 372
    :cond_2
    const-class v0, Lcom/uc/sandboxExport/PreStartup;

    monitor-enter v0

    .line 1379
    :try_start_0
    sget-boolean v1, Lcom/uc/sandboxExport/PreStartup;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string p0, "sandbox.PreStartup"

    const-string v1, "U4 core is running, ignore startup"

    const/4 v3, 0x5

    .line 2093
    invoke-static {v3, p0, v1, v2}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1385
    :cond_3
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->a:Lcom/uc/sandboxExport/PreStartup$c;

    if-nez v1, :cond_6

    .line 1388
    invoke-static {p0}, Lcom/uc/sandboxExport/helper/f;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    move-object p0, v1

    .line 1397
    :cond_4
    :try_start_2
    new-instance v1, Lcom/uc/sandboxExport/PreStartup$c;

    invoke-direct {v1}, Lcom/uc/sandboxExport/PreStartup$c;-><init>()V

    .line 1399
    sput-object v1, Lcom/uc/sandboxExport/PreStartup;->a:Lcom/uc/sandboxExport/PreStartup$c;

    .line 3042
    invoke-static {}, Lcom/uc/sandboxExport/PreStartup$c;->a()[Lcom/uc/sandboxExport/PreStartup$d;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x3

    .line 1403
    new-array v3, v2, [Lcom/uc/sandboxExport/PreStartup$b;

    sput-object v3, Lcom/uc/sandboxExport/PreStartup;->b:[Lcom/uc/sandboxExport/PreStartup$b;

    .line 1404
    new-array v2, v2, [Lcom/uc/sandboxExport/PreStartup$a;

    sput-object v2, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    .line 1406
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    if-eqz v4, :cond_5

    .line 1409
    new-instance v5, Lcom/uc/sandboxExport/PreStartup$a;

    invoke-direct {v5, p0, v4}, Lcom/uc/sandboxExport/PreStartup$a;-><init>(Landroid/content/Context;Lcom/uc/sandboxExport/PreStartup$d;)V

    .line 1410
    sget-object v6, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    iget v4, v4, Lcom/uc/sandboxExport/PreStartup$d;->a:I

    aput-object v5, v6, v4

    .line 3206
    iget-object v4, v5, Lcom/uc/sandboxExport/PreStartup$a;->c:Landroid/os/Handler;

    new-instance v6, Lcom/uc/sandboxExport/b;

    invoke-direct {v6, v5}, Lcom/uc/sandboxExport/b;-><init>(Lcom/uc/sandboxExport/PreStartup$a;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 374
    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    :goto_3
    return-void
.end method

.method public static unbind(I)V
    .locals 3

    .line 560
    const-class v0, Lcom/uc/sandboxExport/PreStartup;

    monitor-enter v0

    .line 561
    :try_start_0
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    if-eqz v1, :cond_0

    if-ltz p0, :cond_0

    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 563
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {v1}, Lcom/uc/sandboxExport/PreStartup$a;->b()V

    .line 566
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    const/4 v2, 0x0

    aput-object v2, v1, p0

    .line 569
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateSetting(I[I[Ljava/lang/String;Z)V
    .locals 6

    .line 465
    invoke-static {}, Lcom/uc/sandboxExport/helper/f;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 467
    :goto_0
    invoke-static {v2}, Lcom/uc/sandboxExport/PreStartup;->setEnable(Z)V

    .line 469
    const-class v2, Lcom/uc/sandboxExport/PreStartup;

    monitor-enter v2

    :try_start_0
    const-string v3, "ESUDLT"

    .line 470
    invoke-static {v3, p3}, Lcom/uc/sandboxExport/helper/f;->a(Ljava/lang/String;Z)V

    if-gtz p0, :cond_2

    const-string p0, "proc_ids"

    const-string p1, ""

    .line 473
    invoke-static {p0, p1}, Lcom/uc/sandboxExport/helper/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "svc_names"

    const-string p1, ""

    .line 474
    invoke-static {p0, p1}, Lcom/uc/sandboxExport/helper/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sandbox.PreStartup"

    const-string p1, "updateSetting: disable"

    const/4 p2, 0x4

    const/4 p3, 0x0

    .line 4085
    invoke-static {p2, p0, p1, p3}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 481
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x2c

    if-ge v3, p0, :cond_3

    .line 484
    aget v5, p1, v3

    .line 485
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 487
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 488
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "proc_ids"

    .line 489
    invoke-static {v3, p1}, Lcom/uc/sandboxExport/helper/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p0, :cond_4

    .line 493
    aget-object v5, p2, v3

    .line 494
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 496
    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 497
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "svc_names"

    .line 498
    invoke-static {p2, p0}, Lcom/uc/sandboxExport/helper/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sandbox.PreStartup"

    const-string p3, "updateSetting: [%s][%s]"

    const/4 v3, 0x2

    .line 500
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p0, v3, v1

    invoke-static {p2, p3, v3}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    :goto_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static updateSettingAndStopUnwantedService(I[I[Ljava/lang/String;Z)V
    .locals 7

    .line 512
    invoke-static {}, Lcom/uc/sandboxExport/helper/f;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/uc/sandboxExport/PreStartup;->updateSetting(I[I[Ljava/lang/String;Z)V

    .line 4427
    invoke-static {}, Lcom/uc/sandboxExport/helper/f;->a()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 4429
    const-class p2, Lcom/uc/sandboxExport/PreStartup;

    monitor-enter p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-gtz p0, :cond_3

    .line 4432
    :try_start_0
    sget-object p0, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    if-eqz p0, :cond_7

    .line 4433
    :goto_0
    sget-object p0, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    array-length p0, p0

    if-ge v0, p0, :cond_2

    .line 4434
    sget-object p0, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    aget-object p0, p0, v0

    if-eqz p0, :cond_1

    .line 4436
    invoke-virtual {p0}, Lcom/uc/sandboxExport/PreStartup$a;->b()V

    .line 4437
    sget-object p0, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    aput-object p3, p0, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4440
    :cond_2
    sput-object p3, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    goto :goto_4

    .line 4444
    :cond_3
    sget-object p0, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    .line 4445
    :goto_1
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    array-length v1, v1

    if-ge p0, v1, :cond_7

    .line 4446
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    aget-object v1, v1, p0

    if-eqz v1, :cond_6

    .line 5192
    array-length v2, p1

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5

    aget v5, p1, v3

    .line 5193
    iget-object v6, v1, Lcom/uc/sandboxExport/PreStartup$a;->b:Lcom/uc/sandboxExport/PreStartup$d;

    iget v6, v6, Lcom/uc/sandboxExport/PreStartup$d;->a:I

    if-ne v5, v6, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_6

    .line 4448
    iget-object v2, v1, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    const-string v3, "no need anymore - %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/uc/sandboxExport/PreStartup$a;->b:Lcom/uc/sandboxExport/PreStartup$d;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4449
    invoke-virtual {v1}, Lcom/uc/sandboxExport/PreStartup$a;->b()V

    .line 4450
    sget-object v1, Lcom/uc/sandboxExport/PreStartup;->c:[Lcom/uc/sandboxExport/PreStartup$a;

    aput-object p3, v1, p0

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 4455
    :cond_7
    :goto_4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    return-void
.end method
