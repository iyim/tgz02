.class public Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;
.super Ljava/lang/Object;
.source "RomAliAppLauncher.java"


# static fields
.field private static final ASR_ACTION_PACKAGE_INFO:Ljava/lang/String; = "com.yunos.tv.alitvasr.action.packageinfo"

.field private static final ASR_HELP_SETTING_URL:Ljava/lang/String; = "alitv_asr://asr_help_setting?from=com.yunos.tv.alitvasr"

.field private static final ASR_HELP_URL:Ljava/lang/String; = "alitv_asr://asr_helping"

.field private static final ASR_LAUNCH_URL:Ljava/lang/String; = "alitv_asr://asr_launching?from=com.yunos.tv.alitvasr"

.field private static final ASR_SETTINGS_VOICE_LAB:Ljava/lang/String; = "alitv_asr://voice_lab?from=com.yunos.tv.alitvasr"

.field private static final ASR_SETTING_URL:Ljava/lang/String; = "alitv_asr://language_setting?from=com.yunos.tv.alitvasr"

.field static BRAND_NAME:Ljava/lang/String; = null

.field private static final DIANSHIYOUHUA_URL:Ljava/lang/String; = "appstore://start?module=detail&appId=com.dianshiyouhua&autoopen=true&from=tvspeech"

.field private static final HOMESHELL_ACTION_TVHELPER_VOICE:Ljava/lang/String; = "com.yunos.tv.tvhelper.voice"

.field private static final HOMESHELL_SCHEMA:Ljava/lang/String; = "alitvhomeshell://homeshell/?name="

.field private static final HOMESHELL_SCHEMA_FORM:Ljava/lang/String; = "&form="

.field static HOMESHELL_VERSION_NAME:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "RomAliAppLauncher"

.field private static final TAOBAO_CAIPIAO:Ljava/lang/String; = "com.taobao.caipiao.tv"

.field private static final URI_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final newHomeShellSpecialList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->newHomeShellSpecialList:Ljava/util/Map;

    const/4 v0, 0x0

    .line 245
    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->BRAND_NAME:Ljava/lang/String;

    .line 246
    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->HOMESHELL_VERSION_NAME:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addSearchIdToURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "timestamp"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/StrUtils;->addUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static changePhilipsSource(Landroid/content/Context;)V
    .locals 3

    const-string v0, "RomAliAppLauncher"

    const-string v1, "Do changePhilipsSource..."

    .line 280
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tpv.xmic.SOURCECHANGE"

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    const-string v2, "E_INPUT_SOURCE_STORAGE"

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    const-string v2, "AliApp"

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static deleteSpecialChat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[`~!@#$%^&*()+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\u00b7\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    .line 203
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 205
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRunningActivityInfo(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1

    const-string v0, "activity"

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 151
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    .line 153
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isTopActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 162
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->getRunningActivityInfo(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 165
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 168
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 171
    iget-boolean v3, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 172
    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static openAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Cannot open app, package:"

    const-string v1, "RomAliAppLauncher"

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/high16 v4, 0x10000000

    .line 217
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->sendActionPackageInfo(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 222
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mainIntent is null"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static openAppUninstallManager(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "appstore://start?module=manage&fromapp=com.yunos.tv.alitvasr"

    .line 356
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->openURI(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v1, "com.yunos.tv.appstore"

    .line 357
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->sendActionPackageInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static openAsrHelp(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 379
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->openAsrHelp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static openAsrHelp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openAsrHelp. fromAct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomAliAppLauncher"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 386
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "alitv_asr://asr_helping"

    if-eqz p1, :cond_0

    .line 387
    :try_start_1
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->openURI(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 389
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3f

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 391
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x26

    .line 393
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->openURI(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 404
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static openAsrLaunch(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "RomAliAppLauncher"

    const-string v1, "openAsrLaunch."

    .line 367
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "alitv_asr://asr_launching?from=com.yunos.tv.alitvasr"

    .line 369
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->openURI(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 372
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static openAsrSetting(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "RomAliAppLauncher"

    const-string v1, "openAsrSetting."

    .line 411
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "alitv_asr://asr_help_setting?from=com.yunos.tv.alitvasr"

    .line 414
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->openURI(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static openCPApp(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "com.taobao.caipiao.tv"

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    .line 139
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->sendActionPackageInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 143
    throw p0
.end method

.method public static openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 98
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->addSearchIdToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RomAliAppLauncher"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openURI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object p2, v0

    :goto_0
    const/high16 p1, 0x10000000

    .line 106
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string p1, "NoRemoteFocusInFirstTime"

    const/4 p3, 0x1

    .line 107
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 110
    throw p0

    .line 95
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "no urlString"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openURI(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RomAliAppLauncher"

    if-eqz p1, :cond_1

    .line 116
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 120
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->addSearchIdToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openURI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 124
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p2, "NoRemoteFocusInFirstTime"

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v2, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 117
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->isOnline()Z

    move-result p2

    if-nez p2, :cond_2

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " openURI error = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    throw p0
.end method

.method public static openVideoChat(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "RomAliAppLauncher"

    const-string v1, "com.yunos.tv.videochat"

    .line 233
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "openVideoChat package:com.yunos.tv.videochat"

    .line 234
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 235
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 237
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->sendActionPackageInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "Cannot open video chat!"

    .line 240
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static openVideoChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "RomAliAppLauncher"

    .line 290
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tvvideochat://preview?cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&number="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&from=com.yunos.alitvasr"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 292
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openVideoChat url:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 294
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "com.yunos.tv.videochat"

    .line 296
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->sendActionPackageInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "Cannot open videochat!"

    .line 299
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static sendActionPackageInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 250
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->BRAND_NAME:Ljava/lang/String;

    const-string v1, "PHILIPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->changePhilipsSource(Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 257
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->HOMESHELL_VERSION_NAME:Ljava/lang/String;

    const-string v1, "RomAliAppLauncher"

    if-nez v0, :cond_3

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v2, "com.yunos.tv.homeshell"

    const/16 v3, 0x2000

    .line 261
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 264
    :cond_2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->HOMESHELL_VERSION_NAME:Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendActionPackageInfo: current homeshell, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->HOMESHELL_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    .line 270
    :cond_3
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->HOMESHELL_VERSION_NAME:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v2, "DVB_TV_HOME_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 273
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendActionPackageInfo: packageName, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yunos.tv.alitvasr.action.packageinfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packageName"

    .line 275
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static showHome(Landroid/content/Context;)V
    .locals 2

    const-string v0, "RomAliAppLauncher"

    const-string v1, "showHome."

    .line 183
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 184
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static showHomeInner(Landroid/content/Context;)V
    .locals 2

    const-string v0, "RomAliAppLauncher"

    const-string v1, "showHomeInner."

    .line 188
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->isTopActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 197
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;I)V

    return-void
.end method

.method public static startAdvertiseService(Landroid/content/Context;)V
    .locals 7

    const-string v0, "com.yunos.tv.advertise.pushcenter"

    const-string v1, "com.yunos.tv.miao"

    const-string v2, "com.yunos.tv.advertise.pushcenter.ControlKeyService"

    const-string v3, "RomAliAppLauncher"

    const-string v4, "startAdvertiseService: com.yunos.tv.advertise.pushcenter.ControlKeyService"

    .line 310
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.yunos.tv.hudongtuiguang.ControlKeyService"

    .line 314
    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 319
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 320
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 325
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 326
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start old advertise service. error 0:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 333
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot start new advertise service. error 1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot start new advertise service. error 2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
