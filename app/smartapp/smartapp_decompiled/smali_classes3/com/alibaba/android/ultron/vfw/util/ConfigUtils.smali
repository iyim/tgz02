.class public Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field public static final KEY_CONFIG_NAME_SPACE:Ljava/lang/String; = "newUltron_container"

.field public static final KEY_DOWNGRADE_PRESET:Ljava/lang/String; = "downgradePreset"

.field public static final KEY_DOWNLOAD_REFRESH:Ljava/lang/String; = "downloadRefresh"

.field public static final KEY_SCROLL_VISIBILITY_CHECK:Ljava/lang/String; = "disableScrollVisibilityCheck"

.field public static final KEY_TEMPLATE_TIME_OUT:Ljava/lang/String; = "template_time_out"

.field public static final KEY_USE_DATA_LOAD_TASK_CLEAN:Ljava/lang/String; = "useDataloadTaskClean"

.field public static final KEY_USE_SYSTEM_TOAST:Ljava/lang/String; = "useSystemToast"

.field static mInterface:Lcom/taobao/android/AliConfigInterface; = null

.field private static sForceDownloadRefresh:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/taobao/android/AliConfigServiceFetcher;->getConfigService()Lcom/taobao/android/AliConfigInterface;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->mInterface:Lcom/taobao/android/AliConfigInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static disableScrollVisibilityCheck()Z
    .locals 4

    .line 38
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->mInterface:Lcom/taobao/android/AliConfigInterface;

    if-eqz v0, :cond_0

    const-string v1, "newUltron_container"

    const-string v2, "disableScrollVisibilityCheck"

    const-string v3, "false"

    .line 39
    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/android/AliConfigInterface;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static downloadRefresh(Landroid/content/Context;)Z
    .locals 3

    .line 27
    invoke-static {p0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->sForceDownloadRefresh:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 30
    :cond_0
    sget-object p0, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->mInterface:Lcom/taobao/android/AliConfigInterface;

    if-eqz p0, :cond_1

    const-string v0, "newUltron_container"

    const-string v1, "downloadRefresh"

    const-string v2, "true"

    .line 31
    invoke-interface {p0, v0, v1, v2}, Lcom/taobao/android/AliConfigInterface;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static dxDowngrade2Preset(Landroid/content/Context;)Z
    .locals 3

    .line 46
    sget-object p0, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->mInterface:Lcom/taobao/android/AliConfigInterface;

    if-eqz p0, :cond_0

    const-string v0, "newUltron_container"

    const-string v1, "downgradePreset"

    const-string v2, "true"

    .line 47
    invoke-interface {p0, v0, v1, v2}, Lcom/taobao/android/AliConfigInterface;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getTemplateTimeOut()I
    .locals 5

    .line 72
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->mInterface:Lcom/taobao/android/AliConfigInterface;

    const/16 v1, 0x1388

    if-eqz v0, :cond_0

    const-string v2, "newUltron_container"

    const-string v3, "template_time_out"

    const-string v4, "5000"

    .line 73
    invoke-interface {v0, v2, v3, v4}, Lcom/taobao/android/AliConfigInterface;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method public static useDataLoadTaskClean()Z
    .locals 4

    .line 63
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->mInterface:Lcom/taobao/android/AliConfigInterface;

    if-eqz v0, :cond_0

    const-string v1, "newUltron_container"

    const-string v2, "useDataloadTaskClean"

    const-string v3, "true"

    .line 64
    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/android/AliConfigInterface;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static useSystemToast()Z
    .locals 4

    .line 54
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->mInterface:Lcom/taobao/android/AliConfigInterface;

    if-eqz v0, :cond_0

    const-string v1, "newUltron_container"

    const-string v2, "useSystemToast"

    const-string v3, "false"

    .line 55
    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/android/AliConfigInterface;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
