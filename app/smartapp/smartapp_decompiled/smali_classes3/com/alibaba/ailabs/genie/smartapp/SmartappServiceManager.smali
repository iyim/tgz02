.class public Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;
.super Ljava/lang/Object;
.source "SmartappServiceManager.java"


# static fields
.field private static mInstance:Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;->mInstance:Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;->mInstance:Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;

    return-object v0
.end method


# virtual methods
.method public startService(Landroid/content/Context;)V
    .locals 5

    const-string v0, "com.alibaba.ailabs.genie.smartapp"

    const-string v1, "SmartappServiceManager"

    :try_start_0
    const-string v2, "boot complete, start GenieManageServerService"

    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 36
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.alibaba.ailabs.genie.smartapp.service.GenieManageServerService"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 59
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.alibaba.ailabs.genie.smartapp.service.JobWakeUpService"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->setAuthCode(Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->startLogService(Landroid/content/Context;)V

    .line 72
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->init(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    :try_start_3
    const-string v0, "boot complete, start alarm BaseService"

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "genie://com.alibaba.ailabs.basedomain"

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pageType"

    const-string v2, "alarm_system_boot"

    .line 83
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
