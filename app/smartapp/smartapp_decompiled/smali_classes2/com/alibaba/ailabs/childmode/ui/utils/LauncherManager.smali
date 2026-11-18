.class public Lcom/alibaba/ailabs/childmode/ui/utils/LauncherManager;
.super Ljava/lang/Object;
.source "LauncherManager.java"


# static fields
.field public static final LAUNCHER:Ljava/lang/String; = "com.alibaba.ailabs.genie.launcher"

.field public static final LAUNCHER_PRESTART_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/prestart"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static killLauncher(Landroid/content/Context;)V
    .locals 2

    const-string v0, "launcher"

    const-string v1, "kill prestart Launcher"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.alibaba.ailabs.genie.launcher"

    .line 27
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->killProcessByPackagename(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static prestartLaucher(Landroid/content/Context;)V
    .locals 2

    const-string v0, "launcher"

    const-string v1, "prestartLaucher"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "genie://com.alibaba.ailabs.genie.launcher/prestart"

    .line 16
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.launcher"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
