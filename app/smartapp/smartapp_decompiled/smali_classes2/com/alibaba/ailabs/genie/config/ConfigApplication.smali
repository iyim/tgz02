.class public Lcom/alibaba/ailabs/genie/config/ConfigApplication;
.super Landroid/app/Application;
.source "ConfigApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/config/ConfigApplication$RequestData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigApplication"

.field private static mConfigApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/config/ConfigApplication;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->requestFlag()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->mConfigApplication:Landroid/app/Application;

    return-object v0
.end method

.method private getConfigProcessName()Ljava/lang/String;
    .locals 3

    .line 79
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->mConfigApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->mConfigApplication:Landroid/app/Application;

    .line 80
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 83
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "MUSIC_RUN_PROCESS_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "com.alibaba.ailabs.genie.smartapp"

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    const-string v1, ":"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getCurrentProcessName()Ljava/lang/String;
    .locals 5

    .line 102
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, ""

    .line 105
    :try_start_0
    sget-object v2, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->mConfigApplication:Landroid/app/Application;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 106
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-nez v3, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_1

    .line 117
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v1
.end method

.method private requestFlag()V
    .locals 2

    const-string v0, "ConfigApplication"

    const-string v1, "requestFlag"

    .line 66
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/config/utils/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/alibaba/ailabs/genie/config/ConfigApplication$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/config/ConfigApplication$2;-><init>(Lcom/alibaba/ailabs/genie/config/ConfigApplication;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 2

    .line 47
    sput-object p1, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->mConfigApplication:Landroid/app/Application;

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->getCurrentProcessName()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentProcessName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigApplication"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/config/utils/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->getConfigProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->requestFlag()V

    .line 55
    new-instance p1, Lcom/alibaba/ailabs/genie/config/ConfigApplication$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/config/ConfigApplication$1;-><init>(Lcom/alibaba/ailabs/genie/config/ConfigApplication;)V

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
