.class public Lcom/taobao/tao/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field private static sApplication:Landroid/app/Application;

.field private static sClassLoader:Ljava/lang/ClassLoader;

.field private static sInstalledVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 26
    sget-object v0, Lcom/taobao/tao/Globals;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 30
    sget-object v0, Lcom/taobao/tao/Globals;->sClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getInstalledVersionName()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/taobao/tao/Globals;->sInstalledVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/taobao/tao/Globals;->getVersionName()Ljava/lang/String;

    .line 53
    :cond_0
    sget-object v0, Lcom/taobao/tao/Globals;->sInstalledVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionCode()I
    .locals 3

    .line 57
    invoke-static {}, Lcom/taobao/tao/Globals;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-static {}, Lcom/taobao/tao/Globals;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 3

    .line 34
    sget-object v0, Lcom/taobao/tao/Globals;->sInstalledVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/taobao/tao/Globals;->sInstalledVersionName:Ljava/lang/String;

    return-object v0

    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/tao/Globals;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/taobao/tao/Globals;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/taobao/tao/Globals;->sInstalledVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "5.0.0"

    .line 41
    sput-object v0, Lcom/taobao/tao/Globals;->sInstalledVersionName:Ljava/lang/String;

    .line 44
    :goto_0
    sget-object v0, Lcom/taobao/tao/Globals;->sInstalledVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/taobao/tao/Globals;->sApplication:Landroid/app/Application;

    .line 22
    sput-object p1, Lcom/taobao/tao/Globals;->sClassLoader:Ljava/lang/ClassLoader;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
