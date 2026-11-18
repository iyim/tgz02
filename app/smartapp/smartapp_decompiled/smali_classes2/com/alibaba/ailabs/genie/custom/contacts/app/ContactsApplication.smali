.class public Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;
.super Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;
.source "ContactsApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static INSTANCE:Landroid/app/Application; = null

.field private static final TAG:Ljava/lang/String; = "contacts_ContactsApp"

.field private static sInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getConfigProcessName()Ljava/lang/String;
    .locals 3

    .line 82
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->INSTANCE:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->INSTANCE:Landroid/app/Application;

    .line 83
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 86
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "CONTACTS_RUN_PROCESS_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "com.alibaba.ailabs.genie.smartapp"

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    const-string v1, ":"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Landroid/app/Application;
    .locals 1

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->INSTANCE:Landroid/app/Application;

    return-object v0
.end method

.method public static initAppEnv(Landroid/app/Application;)V
    .locals 2

    .line 102
    sget-boolean v0, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->sInit:Z

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;-><init>()V

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v1, "24994317"

    .line 105
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 106
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/SecondaryUtil;->getAuthCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v1, "contacts_"

    .line 107
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->logTag(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 108
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->init(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V

    const/4 p0, 0x1

    .line 109
    sput-boolean p0, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->sInit:Z

    :cond_0
    return-void
.end method

.method public static initAppEnvBundle(Landroid/app/Application;)V
    .locals 3

    .line 114
    sget-boolean v0, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->sInit:Z

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;-><init>()V

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v2, "contacts_"

    .line 117
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->logTag(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 118
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->init(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V

    .line 119
    sput-boolean v1, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->sInit:Z

    .line 120
    new-instance p0, Lcom/alibaba/ailabs/genie/custom/contacts/app/CustomLogger;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/app/CustomLogger;-><init>()V

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->setLogger(Lcom/alibaba/ailabs/genie/utils/log/ILogger;)V

    :cond_0
    return-void
.end method

.method private initSecondSDK()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static synthetic lambda$onCreate$0()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 2

    .line 177
    sput-object p1, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->INSTANCE:Landroid/app/Application;

    .line 178
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->getConfigProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 181
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->init(Landroid/content/Context;)V

    .line 182
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;->initAppEnvBundle(Landroid/app/Application;)V

    .line 184
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->init()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->onCreate()V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate.this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_ContactsApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
