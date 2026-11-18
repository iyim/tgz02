.class public Landroid/taobao/windvane/config/WVURLConfig;
.super Ljava/lang/Object;
.source "WVURLConfig.java"

# interfaces
.implements Landroid/taobao/windvane/config/IConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "WVURLConfig"

.field private static volatile instance:Landroid/taobao/windvane/config/WVURLConfig;


# instance fields
.field private forbiddenDomainRedirectURL:Ljava/lang/String;

.field private inited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVURLConfig;
    .locals 2

    .line 24
    sget-object v0, Landroid/taobao/windvane/config/WVURLConfig;->instance:Landroid/taobao/windvane/config/WVURLConfig;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Landroid/taobao/windvane/config/WVURLConfig;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVURLConfig;->instance:Landroid/taobao/windvane/config/WVURLConfig;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Landroid/taobao/windvane/config/WVURLConfig;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVURLConfig;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVURLConfig;->instance:Landroid/taobao/windvane/config/WVURLConfig;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/config/WVURLConfig;->instance:Landroid/taobao/windvane/config/WVURLConfig;

    return-object v0
.end method

.method private parseConfig(Ljava/lang/String;)Z
    .locals 7

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 56
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :catch_0
    if-eqz v0, :cond_2

    const-string p1, ""

    const-string/jumbo v2, "url_patterns"

    .line 60
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "url_rules"

    .line 61
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "api_group"

    .line 62
    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "forbiddenDomainRedirectURL"

    const-string v6, "https://h5.m.taobao.com/forbidden_error.html"

    .line 63
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    .line 65
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->urlMatcherConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->getInstance()Landroid/taobao/windvane/config/WVUrlMatchUtils;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/config/WVUrlMatchUtils;->isForbiddenOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iput-object p1, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method public getForbiddenDomainRedirectURL()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->forbiddenDomainRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method public hasInited()Z
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 3

    .line 45
    iget-object v0, p0, Landroid/taobao/windvane/config/WVURLConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wv_main_config"

    const-string/jumbo v1, "url_configwv-data"

    .line 46
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/WVURLConfig;->parseConfig(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVURLConfig;->parseConfig(Ljava/lang/String;)Z

    const-string/jumbo v0, "wv_main_config"

    const-string/jumbo v1, "url_configwv-data"

    .line 81
    invoke-static {v0, v1, p1}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
