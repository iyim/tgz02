.class public Lc/e/a/g/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lc/e/a/g/a; = null

.field public static c:Z = true

.field public static d:Z = false


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/e/a/g/b;Lc/e/a/g/c;ZZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/e/a/g/a;->a:Z

    invoke-static {p1}, Lc/e/a/g/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc/e/a/g/a;->b(Landroid/content/Context;)V

    sput-boolean p5, Lc/e/a/c;->u:Z

    sput-boolean p6, Lc/e/a/c;->v:Z

    invoke-static {}, Lc/e/a/c;->e()Z

    move-result p5

    const/4 p6, 0x1

    if-eqz p5, :cond_2

    invoke-static {p1}, Lc/e/a/g/a;->b(Landroid/content/Context;)V

    invoke-static {p1, p2, p3}, Lc/e/a/g/a;->a(Landroid/content/Context;Lc/e/a/g/b;Lc/e/a/g/c;)V

    if-eqz p4, :cond_0

    invoke-static {}, Lc/e/a/g/a;->b()V

    :cond_0
    sget-boolean p1, Lc/e/a/c;->u:Z

    if-eqz p1, :cond_1

    const-string p1, "libcrashsdk.so"

    invoke-static {p1}, Lc/e/a/f;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sput-boolean p6, Lc/e/a/c;->t:Z

    invoke-static {}, Lc/e/a/g/a;->c()V

    :cond_1
    return-void

    :cond_2
    const-string p5, "crashsdk"

    if-eqz p2, :cond_c

    if-eqz p3, :cond_c

    .line 1
    sget-boolean v1, Lc/e/a/i;->h:Z

    if-nez v1, :cond_4

    iget-object v1, p2, Lc/e/a/g/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    sget-boolean v1, Lc/e/a/i;->h:Z

    if-nez v1, :cond_6

    iget-object v1, p2, Lc/e/a/g/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    iget-object v1, p2, Lc/e/a/g/b;->e:Ljava/lang/String;

    iget-object v2, p2, Lc/e/a/g/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2
    :try_start_0
    invoke-static {p1, p2, p3}, Lc/e/a/g/a;->a(Landroid/content/Context;Lc/e/a/g/b;Lc/e/a/g/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    invoke-static {p2}, Lc/e/a/g/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p4, :cond_7

    :try_start_1
    invoke-static {}, Lc/e/a/g/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    invoke-static {p2}, Lc/e/a/g/a;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    :try_start_2
    invoke-static {}, Lc/e/a/c;->f()V

    invoke-static {}, Lc/e/a/a/g;->a()V

    invoke-static {}, Lc/e/a/a/c;->a()V

    invoke-static {}, Lc/e/a/a/f;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    .line 3
    invoke-static {p2, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 4
    :goto_4
    :try_start_3
    check-cast p1, Landroid/app/Application;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance p2, Lc/e/a/d;

    invoke-direct {p2}, Lc/e/a/d;-><init>()V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 5
    :try_start_5
    sget-object p1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean p1, p1, Lc/e/a/g/b;->V:Z

    if-eqz p1, :cond_8

    .line 6
    invoke-static {}, Lc/e/a/c;->b()V

    goto :goto_5

    :catchall_3
    move-exception p1

    goto :goto_7

    :cond_8
    :goto_5
    move p1, p6

    goto :goto_6

    :catchall_4
    move-exception p1

    .line 7
    invoke-static {p1, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move p1, v0

    :goto_6
    if-nez p1, :cond_9

    const-string p1, "registerLifecycleCallbacks failed!"

    .line 8
    invoke-static {p5, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    .line 9
    :goto_7
    invoke-static {p1, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 10
    :cond_9
    :goto_8
    :try_start_6
    invoke-static {}, Lc/e/a/b;->l()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    invoke-static {}, Lc/e/a/f;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception p1

    .line 11
    :try_start_8
    invoke-static {p1, p6}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 12
    :goto_9
    invoke-static {}, Lc/e/a/f;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception p1

    .line 13
    invoke-static {p1, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 14
    :goto_a
    :try_start_9
    sget-object p1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean p1, p1, Lc/e/a/g/b;->q:Z

    if-eqz p1, :cond_a

    .line 15
    invoke-static {}, Lc/e/a/c;->c()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lc/e/a/g/a;->a:Z

    if-nez p1, :cond_a

    invoke-static {}, Lc/e/a/f;->e()V

    iput-boolean p6, p0, Lc/e/a/g/a;->a:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :cond_a
    return-void

    :catchall_7
    move-exception p1

    .line 16
    invoke-static {p1, p6}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void

    .line 17
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mTagFilesFolderName and mCrashLogsFolderName can not be set to the same!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string p1, "VersionInfo and CustomInfo can not be null!"

    .line 18
    invoke-static {p5, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    const-string v0, "crashsdk"

    if-eqz p0, :cond_2

    sget-boolean v1, Lc/e/a/g/a;->c:Z

    if-eqz v1, :cond_1

    instance-of v1, p0, Landroid/app/Application;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Can not get Application context from given context!"

    invoke-static {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const-string p0, "context can not be null!"

    invoke-static {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lc/e/a/g/b;Lc/e/a/g/c;ZZZ)Lc/e/a/g/a;
    .locals 9

    const-class v0, Lc/e/a/g/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/g/a;->b:Lc/e/a/g/a;

    if-nez v1, :cond_0

    new-instance v1, Lc/e/a/g/a;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lc/e/a/g/a;-><init>(Landroid/content/Context;Lc/e/a/g/b;Lc/e/a/g/c;ZZZ)V

    sput-object v1, Lc/e/a/g/a;->b:Lc/e/a/g/a;

    :cond_0
    sget-object p0, Lc/e/a/g/a;->b:Lc/e/a/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Lc/e/a/g/b;Lc/e/a/g/c;)V
    .locals 4

    invoke-static {p1, p2}, Lc/e/a/i;->a(Lc/e/a/g/b;Lc/e/a/g/c;)V

    invoke-static {}, Lc/e/a/c;->e()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1
    sget-object p1, Lc/e/a/f;->z:Ljava/lang/String;

    invoke-static {p1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "unique"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x30

    invoke-static {p1, v1, p2}, Lc/e/a/a/f;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "[^0-9a-zA-Z-]"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 2
    :try_start_2
    invoke-static {v2, p2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v0

    .line 3
    :cond_3
    :goto_1
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 4
    sput-boolean v2, Lc/e/a/c;->e0:Z

    sget-boolean v3, Lc/e/a/c;->r:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x22

    invoke-static {v3, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 5
    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p1, v2}, Lc/e/a/a/f;->a(Ljava/io/File;[B)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 6
    :goto_2
    invoke-static {p1, p2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 7
    :cond_5
    :goto_3
    sput-object v1, Lc/e/a/f;->z:Ljava/lang/String;

    .line 8
    :goto_4
    :try_start_3
    invoke-static {}, Lc/e/a/f;->i()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    new-instance p1, Lc/e/a/f$c;

    invoke-direct {p1, p2}, Lc/e/a/f$c;-><init>(B)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANR"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2}, Lc/e/a/a/e;->a(I)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 9
    invoke-static {p1, p2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 10
    :goto_5
    invoke-static {p0}, Lc/e/a/f;->a(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lc/e/a/f;

    invoke-direct {v0}, Lc/e/a/f;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lc/e/a/f;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static b()V
    .locals 2

    sget-boolean v0, Lc/e/a/c;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "Has enabled java log!"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lc/e/a/f;->v()V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lc/e/a/f;->b:J

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lc/e/a/c;->o:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    sget-boolean v0, Lc/e/a/g/a;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lc/e/a/a/f;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/e/a/b;->a:Ljava/lang/String;

    const/4 p0, 0x1

    sput-boolean p0, Lc/e/a/g/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lc/e/a/g/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lc/e/a/c;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lc/e/a/c;->u:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lc/e/a/c;->t:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lc/e/a/c;->p:Z

    if-eqz v1, :cond_1

    const-string v1, "Has enabled native log!"

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Lc/e/a/g/a;->d()V

    invoke-static {}, Lc/e/a/f;->d()V

    const/4 v1, 0x1

    sput-boolean v1, Lc/e/a/c;->p:Z

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    invoke-static {}, Lc/e/a/i;->l()V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d()V
    .locals 5

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc/e/a/i;->k()V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    .line 1
    invoke-static {}, Lc/e/a/i;->b()Z

    move-result v0

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->p:Z

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->F:I

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->h:I

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->k:I

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->l:I

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->m:I

    int-to-long v0, v0

    const/16 v2, 0x1f

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    invoke-static {}, Lc/e/a/i;->a()Z

    move-result v0

    const/16 v1, 0x12

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->t:Z

    const/16 v1, 0x15

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->E:I

    int-to-long v0, v0

    const/16 v2, 0x20

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-wide v0, v0, Lc/e/a/g/b;->R:J

    const/16 v2, 0x8

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-wide v0, v0, Lc/e/a/g/b;->S:J

    const/16 v2, 0x9

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->w:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v2, v2, Lc/e/a/g/b;->x:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    const/4 v0, 0x4

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v1, v1, Lc/e/a/g/b;->y:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    const/16 v0, 0x77

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lc/e/a/c;->r:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lc/e/a/i;->a(Lc/e/a/g/b;Landroid/os/Bundle;)Lc/e/a/g/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    invoke-static {p1}, Lc/e/a/i;->a(Lc/e/a/g/b;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a()V
    .locals 4

    .line 11
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can not call \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "crashSoLoaded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in isolated process!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 12
    :cond_1
    sput-boolean v1, Lc/e/a/c;->t:Z

    invoke-static {}, Lc/e/a/g/a;->c()V

    sget-object v0, Lc/e/a/c;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lc/e/a/c;->v:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lc/e/a/c;->t:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget-boolean v2, Lc/e/a/c;->q:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lc/e/a/c;->r:Z

    if-nez v2, :cond_3

    invoke-static {}, Lc/e/a/g/a;->d()V

    invoke-static {}, Lc/e/a/i;->l()V

    :cond_3
    invoke-static {}, Lc/e/a/f;->x()V

    sput-boolean v1, Lc/e/a/c;->q:Z

    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc/e/a/b;->l()V

    .line 13
    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lc/e/a/a/d;

    const/16 v2, 0x19b

    invoke-direct {v0, v2}, Lc/e/a/a/d;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
