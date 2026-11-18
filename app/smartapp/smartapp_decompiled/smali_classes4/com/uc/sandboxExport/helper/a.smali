.class public final Lcom/uc/sandboxExport/helper/a;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-static {}, Lcom/uc/sandboxExport/helper/d;->a()Lcom/uc/sandboxExport/helper/d;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 39
    :try_start_1
    invoke-static {}, Lcom/uc/sandboxExport/helper/f;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const-class v2, Landroid/content/Context;

    const-string v3, "bindIsolatedService"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/util/concurrent/Executor;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Landroid/content/ServiceConnection;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/uc/sandboxExport/helper/d;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    sput-object v0, Lcom/uc/sandboxExport/helper/a;->a:Ljava/lang/reflect/Method;

    return-void

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 38
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_0
    if-eqz v3, :cond_1

    .line 47
    :try_start_4
    invoke-virtual {v1}, Lcom/uc/sandboxExport/helper/d;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/uc/sandboxExport/helper/d;->close()V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    .line 49
    sput-object v0, Lcom/uc/sandboxExport/helper/a;->a:Ljava/lang/reflect/Method;

    throw v1

    :catch_2
    sput-object v0, Lcom/uc/sandboxExport/helper/a;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/Handler;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 76
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x41

    const/4 v5, 0x0

    const-string v6, "BindService"

    const/4 v7, 0x5

    const/16 v8, 0x18

    if-ge v3, v8, :cond_0

    const-string v3, "doBindService - bindService A"

    .line 1093
    invoke-static {v7, v6, v3, v5}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2092
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    const-string v3, "doBindService - bindServiceByReflection"

    .line 2093
    invoke-static {v7, v6, v3, v5}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2099
    sget-object v3, Lcom/uc/sandboxExport/helper/a;->b:Ljava/lang/reflect/Method;

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v3, :cond_1

    .line 2100
    const-class v3, Landroid/content/Context;

    const-string v13, "bindServiceAsUser"

    new-array v14, v7, [Ljava/lang/Class;

    const-class v15, Landroid/content/Intent;

    aput-object v15, v14, v12

    const-class v15, Landroid/content/ServiceConnection;

    aput-object v15, v14, v11

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v10

    const-class v15, Landroid/os/Handler;

    aput-object v15, v14, v9

    const-class v15, Landroid/os/UserHandle;

    aput-object v15, v14, v8

    .line 2101
    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/uc/sandboxExport/helper/a;->b:Ljava/lang/reflect/Method;

    :cond_1
    move-object v3, v0

    .line 2106
    :goto_0
    instance-of v13, v3, Landroid/content/ContextWrapper;

    if-eqz v13, :cond_2

    .line 2107
    nop

    nop

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    .line 2109
    :cond_2
    sget-object v13, Lcom/uc/sandboxExport/helper/a;->b:Ljava/lang/reflect/Method;

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v1, v14, v12

    aput-object v2, v14, v11

    .line 2110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v10

    aput-object p3, v14, v9

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    aput-object v9, v14, v8

    .line 2109
    invoke-virtual {v13, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v3, "doBindService - bindService B"

    .line 3093
    invoke-static {v7, v6, v3, v5}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4092
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method
