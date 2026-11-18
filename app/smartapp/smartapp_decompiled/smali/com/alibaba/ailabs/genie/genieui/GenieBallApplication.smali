.class public Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;
.super Ljava/lang/Object;
.source "GenieBallApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieBallApplication"

.field private static app:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Landroid/app/Application;
    .locals 1

    .line 16
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->app:Landroid/app/Application;

    return-object v0
.end method

.method public static getApp()Landroid/app/Application;
    .locals 1

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->app:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 5

    .line 26
    sput-object p1, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->app:Landroid/app/Application;

    const-string v0, "GenieBallApplication"

    const-string v1, "init"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    sget-object v2, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->app:Landroid/app/Application;

    .line 31
    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 34
    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 35
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->app:Landroid/app/Application;

    const-class v2, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    sget-object v1, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;->app:Landroid/app/Application;

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 49
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getInstance()Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->init(Landroid/content/Context;)V

    return-void
.end method
