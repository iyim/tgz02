.class public Lcom/alibaba/ailabs/genie/utils/AppEnv;
.super Ljava/lang/Object;
.source "AppEnv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
    }
.end annotation


# static fields
.field public static final ENV_DEBUG:I = 0x2

.field public static final ENV_PREVIEW:I = 0x1

.field public static final ENV_RELEASE:I = 0x0

.field public static TAG:Ljava/lang/String; = "genie-"

.field private static mAppInstance:Landroid/app/Application; = null

.field private static mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig; = null

.field private static mSysLogEnable:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkEnv()V
    .locals 2

    .line 138
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mAppInstance:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AppEnv.mAppInstance is null \nyou must invoke AppEnv.init in you Applicaion\'s onCreate method!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 142
    throw v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 76
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 77
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mAppInstance:Landroid/app/Application;

    return-object v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 105
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$300(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthCode()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 124
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$600(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 110
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$400(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvType()I
    .locals 1

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 87
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$000(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)I

    move-result v0

    return v0
.end method

.method public static getPreEnvIndex()I
    .locals 1

    .line 91
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 92
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$100(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)I

    move-result v0

    return v0
.end method

.method public static getPreStaging()Ljava/lang/String;
    .locals 3

    .line 96
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 97
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$000(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 100
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$100(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "default-ide-project-staging%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .line 81
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 82
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mAppInstance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getUtdid()Ljava/lang/String;
    .locals 2

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 129
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$700(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mAppInstance:Landroid/app/Application;

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$702(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$700(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    sput-object p0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mAppInstance:Landroid/app/Application;

    .line 35
    sput-object p1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 37
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->readSystemLogConfig()V

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->readSystemEnv()I

    move-result p0

    if-lez p0, :cond_0

    const/16 p1, 0x9

    if-ge p0, p1, :cond_0

    .line 40
    sget-object p1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$002(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;I)I

    .line 41
    sget-object p1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$102(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;I)I

    goto :goto_0

    .line 43
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$002(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;I)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initWithoutEnvConfig(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V
    .locals 0

    .line 59
    sput-object p0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mAppInstance:Landroid/app/Application;

    .line 60
    sput-object p1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->readSystemLogConfig()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isDebug()Z
    .locals 3

    .line 114
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->checkEnv()V

    .line 115
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnvConfig.DEBUG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$500(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSysLogEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mSysLogEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$500(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 119
    :cond_0
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mSysLogEnable:Z

    return v0
.end method

.method private static readSystemEnv()I
    .locals 4

    :try_start_0
    const-string v0, "persist.sys.genie.env"

    const-string v1, "0"

    .line 49
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist.sys.genie.env = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static readSystemLogConfig()V
    .locals 4

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mEnvConfig:Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->access$200(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mSysLogEnable:Z

    return-void

    :cond_0
    const-string v0, "debug.genie.config"

    const-string v1, "0"

    .line 70
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug.genie.config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/ailabs/genie/utils/AppEnv;->mSysLogEnable:Z

    return-void
.end method
