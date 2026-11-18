.class public final Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;
.super Ljava/lang/Object;
.source "UMConfigHelper.java"


# instance fields
.field private final memConfigs:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->memConfigs:Ljava/util/Map;

    .line 25
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper$1;-><init>(Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->refreshConfigs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->refreshConfigs(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->memConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->memConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    return-object p2

    :cond_2
    return-object p1
.end method

.method private refreshConfigs(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/orange/OrangeConfig;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->memConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->memConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getBool(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, ""

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 61
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, ""

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/umbrella/link/util/UMConfigHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
