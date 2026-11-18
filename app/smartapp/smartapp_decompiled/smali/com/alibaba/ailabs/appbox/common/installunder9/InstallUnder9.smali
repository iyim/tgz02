.class public Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9;
.super Ljava/lang/Object;
.source "InstallUnder9.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstallUnder9"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static install(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;)V
    .locals 13

    .line 30
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 33
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 34
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "installPackage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 35
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 36
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 37
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.content.pm.IPackageInstallObserver"

    .line 38
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    .line 39
    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    aput-object v11, v10, v4

    new-instance v11, Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9$1;

    invoke-direct {v11, p0, p1}, Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9$1;-><init>(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x2

    const/16 v12, 0x1b6

    .line 59
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "what is use for ?"

    aput-object v12, v10, v11

    .line 39
    invoke-virtual {v6, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x3ea

    invoke-interface {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;->onInstallExecption(Ljava/lang/String;I)V

    .line 68
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method
