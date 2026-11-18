.class public Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;
.super Ljava/lang/Object;
.source "HttpsHostPortMgr.java"

# interfaces
.implements Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;


# static fields
.field public static final TAG_HTTPS_HOST_PORT:Ljava/lang/String; = "utanalytics_https_host"

.field public static instance:Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;


# instance fields
.field private mHttpsUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://h-adashx.ut.taobao.com/upload"

    .line 19
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->mHttpsUrl:Ljava/lang/String;

    .line 31
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "utanalytics_https_host"

    if-eqz v0, :cond_0

    .line 34
    :try_start_1
    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-direct {p0, v2}, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->parseConifg(Ljava/lang/String;)V

    .line 36
    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/SpSetting;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->parseConifg(Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->parseConifg(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;
    .locals 2

    const-class v0, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->instance:Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;

    invoke-direct {v1}, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;-><init>()V

    sput-object v1, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->instance:Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;

    .line 26
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->instance:Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseConifg(Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/upload"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->mHttpsUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getHttpsUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "mHttpsUrl"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->mHttpsUrl:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->mHttpsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p2}, Lcom/alibaba/analytics/core/sync/HttpsHostPortMgr;->parseConifg(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
