.class public Lcom/taobao/android/dinamic/DinamicDefaultApplication;
.super Ljava/lang/Object;
.source "DinamicDefaultApplication.java"


# static fields
.field private static sApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getApplication()Landroid/app/Application;
    .locals 2

    const-class v0, Lcom/taobao/android/dinamic/DinamicDefaultApplication;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/taobao/android/dinamic/DinamicDefaultApplication;->sApplication:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 20
    invoke-static {}, Lcom/taobao/android/dinamic/DinamicDefaultApplication;->getSystemApp()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Lcom/taobao/android/dinamic/DinamicDefaultApplication;->sApplication:Landroid/app/Application;

    .line 23
    :cond_0
    sget-object v1, Lcom/taobao/android/dinamic/DinamicDefaultApplication;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getSystemApp()Landroid/app/Application;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 28
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    .line 29
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "mInitialApplication"

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    nop

    .line 36
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/android/dinamic/DRegisterCenter;->getAppMonitor()Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v4, "Dinamic"

    const-string v5, "getApplication"

    .line 38
    invoke-interface {v1, v4, v5, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;->counter_commit(Ljava/lang/String;Ljava/lang/String;D)V

    :cond_0
    return-object v0
.end method
