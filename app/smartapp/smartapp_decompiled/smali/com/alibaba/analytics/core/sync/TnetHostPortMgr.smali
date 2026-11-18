.class public Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;
.super Ljava/lang/Object;
.source "TnetHostPortMgr.java"

# interfaces
.implements Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;
    }
.end annotation


# static fields
.field public static final TAG_TNET_HOST_PORT:Ljava/lang/String; = "utanalytics_tnet_host_port"

.field public static instance:Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;


# instance fields
.field public entity:Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;

.field private mUseOuterTnetHost:Z


# direct methods
.method constructor <init>()V
    .locals 4

    const-string/jumbo v0, "utanalytics_tnet_host_port"

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->mUseOuterTnetHost:Z

    .line 33
    :try_start_0
    new-instance v1, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;

    invoke-direct {v1}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;-><init>()V

    iput-object v1, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->entity:Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;

    .line 35
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 37
    iput-boolean v3, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->mUseOuterTnetHost:Z

    .line 39
    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->parseConifg(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/SpSetting;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    iput-boolean v3, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->mUseOuterTnetHost:Z

    .line 45
    :cond_1
    invoke-direct {p0, v1}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->parseConifg(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-direct {p0, v1}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->parseConifg(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;
    .locals 2

    const-class v0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->instance:Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;

    invoke-direct {v1}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;-><init>()V

    sput-object v1, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->instance:Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;

    .line 27
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->instance:Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;
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
    .locals 3

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->entity:Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;

    iput-object v1, v0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;->host:Ljava/lang/String;

    .line 79
    iput p1, v0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;->port:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getEntity()Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->entity:Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;

    return-object v0
.end method

.method public isUseOuterTnetHost()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->mUseOuterTnetHost:Z

    return v0
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p2}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->parseConifg(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
