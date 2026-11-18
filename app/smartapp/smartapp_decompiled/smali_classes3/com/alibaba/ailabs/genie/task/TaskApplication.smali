.class public Lcom/alibaba/ailabs/genie/task/TaskApplication;
.super Landroid/app/Application;
.source "TaskApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static final ORANGE_KEY:Ljava/lang/String; = "jJAwDq0Nt2aw"

.field public static disableVideoRecommend:Z = false


# instance fields
.field private mTaskApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/TaskApplication;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->startTaskService()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/task/TaskApplication;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->initConfig()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/task/TaskApplication;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->parseConfig(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getCurrentProcessName()Ljava/lang/String;
    .locals 5

    .line 113
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, ""

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 117
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 122
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

    .line 126
    :cond_2
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_1

    .line 127
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v1
.end method

.method private getTaskProcessName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.smartapp"

    return-object v0
.end method

.method private initConfig()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    const-string v1, "jJAwDq0Nt2aw"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->parseConfig(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    new-instance v2, Lcom/alibaba/ailabs/genie/task/TaskApplication$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/task/TaskApplication$2;-><init>(Lcom/alibaba/ailabs/genie/task/TaskApplication;)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->regsiterOrangeCallback(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;)V

    return-void
.end method

.method private parseConfig(Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "disablevideoRecommend"

    .line 77
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 78
    sput-boolean p1, Lcom/alibaba/ailabs/genie/task/TaskApplication;->disableVideoRecommend:Z

    const-string v0, "TaskService-App"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config disablevideoRecommend ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startTaskService()V
    .locals 4

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    const-class v3, Lcom/alibaba/ailabs/genie/task/TaskService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-App"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 2

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->getCurrentProcessName()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->getTaskProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskService-App"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance p1, Lcom/alibaba/ailabs/genie/task/TaskApplication$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/task/TaskApplication$1;-><init>(Lcom/alibaba/ailabs/genie/task/TaskApplication;)V

    const-wide/16 v0, 0x4650

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public startAbcService()V
    .locals 5

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    .line 98
    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 99
    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 100
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    const-class v2, Lcom/alibaba/ailabs/genie/task/AbcService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->mTaskApplication:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "TaskService-App"

    const-string v1, "startAbcService"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
