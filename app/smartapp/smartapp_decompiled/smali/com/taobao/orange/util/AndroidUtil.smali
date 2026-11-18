.class public Lcom/taobao/orange/util/AndroidUtil;
.super Ljava/lang/Object;
.source "AndroidUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidUtil"

.field private static final TAOBAO_PACKAGE_NAME:Ljava/lang/String; = "com.taobao.taobao"

.field private static final TMALL_PACKAGE_NAME:Ljava/lang/String; = "com.tmall.wireless"

.field private static currentProcess:Ljava/lang/String; = ""

.field private static mainProcess:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string v0, "activity"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 49
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    .line 50
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 53
    :try_start_0
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    .line 54
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "isMainProcess"

    const-string v1, "AndroidUtil"

    const/4 v2, 0x1

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    .line 28
    :try_start_0
    sget-object v4, Lcom/taobao/orange/util/AndroidUtil;->mainProcess:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sput-object v4, Lcom/taobao/orange/util/AndroidUtil;->mainProcess:Ljava/lang/String;

    .line 31
    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "mainProcessName"

    aput-object v6, v4, v3

    sget-object v6, Lcom/taobao/orange/util/AndroidUtil;->mainProcess:Ljava/lang/String;

    aput-object v6, v4, v2

    invoke-static {v1, v0, v4}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_1
    sget-object v4, Lcom/taobao/orange/util/AndroidUtil;->currentProcess:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 34
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {p0, v4}, Lcom/taobao/orange/util/AndroidUtil;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taobao/orange/util/AndroidUtil;->currentProcess:Ljava/lang/String;

    .line 35
    new-array p0, v5, [Ljava/lang/Object;

    const-string v4, "currentProcessName"

    aput-object v4, p0, v3

    sget-object v4, Lcom/taobao/orange/util/AndroidUtil;->currentProcess:Ljava/lang/String;

    aput-object v4, p0, v2

    invoke-static {v1, v0, p0}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_2
    sget-object p0, Lcom/taobao/orange/util/AndroidUtil;->mainProcess:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/taobao/orange/util/AndroidUtil;->currentProcess:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 38
    sget-object p0, Lcom/taobao/orange/util/AndroidUtil;->mainProcess:Ljava/lang/String;

    sget-object v4, Lcom/taobao/orange/util/AndroidUtil;->currentProcess:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, p0, v3}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return v2
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "connectivity"

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 82
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTaobaoPackage(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.taobao.taobao"

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.tmall.wireless"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static setThreadPriority()V
    .locals 4

    const/4 v0, 0x2

    .line 64
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AndroidUtil"

    const-string/jumbo v3, "setThreadPriority"

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
