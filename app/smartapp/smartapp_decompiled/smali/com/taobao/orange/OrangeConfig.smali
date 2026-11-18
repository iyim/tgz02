.class public abstract Lcom/taobao/orange/OrangeConfig;
.super Ljava/lang/Object;
.source "OrangeConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/orange/OrangeConfig;
    .locals 1

    .line 16
    sget-object v0, Lcom/taobao/orange/OrangeConfigImpl;->mInstance:Lcom/taobao/orange/OrangeConfigImpl;

    return-object v0
.end method


# virtual methods
.method public abstract addCandidate(Lcom/taobao/orange/OCandidate;)V
    .param p1    # Lcom/taobao/orange/OCandidate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract enterBackground()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enterForeground()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract forceCheckUpdate()V
.end method

.method public abstract getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getSyncConfigs(Ljava/lang/String;J)Ljava/util/Map;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0, v0}, Lcom/taobao/orange/OrangeConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract init(Landroid/content/Context;Lcom/taobao/orange/OConfig;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v0}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/orange/OrangeConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    sget-object v0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    invoke-virtual {v0}, Lcom/taobao/orange/OConstant$SERVER;->ordinal()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/orange/OrangeConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 36
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/orange/OrangeConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    new-instance v0, Lcom/taobao/orange/OConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/orange/OConfig$Builder;-><init>()V

    .line 43
    invoke-virtual {v0, p2}, Lcom/taobao/orange/OConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 44
    invoke-virtual {p2, p3}, Lcom/taobao/orange/OConfig$Builder;->setAppVersion(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 45
    invoke-virtual {p2, p4}, Lcom/taobao/orange/OConfig$Builder;->setEnv(I)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 46
    invoke-virtual {p2, p5}, Lcom/taobao/orange/OConfig$Builder;->setServerType(I)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    sget-object p3, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 47
    invoke-virtual {p3}, Lcom/taobao/orange/OConstant$UPDMODE;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/taobao/orange/OConfig$Builder;->setIndexUpdateMode(I)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 48
    invoke-virtual {p2, p6}, Lcom/taobao/orange/OConfig$Builder;->setDcHost(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 49
    invoke-virtual {p2, p7}, Lcom/taobao/orange/OConfig$Builder;->setAckHost(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lcom/taobao/orange/OConfig$Builder;->build()Lcom/taobao/orange/OConfig;

    move-result-object p2

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/OrangeConfig;->init(Landroid/content/Context;Lcom/taobao/orange/OConfig;)V

    return-void
.end method

.method public abstract registerListener([Ljava/lang/String;Lcom/taobao/orange/OConfigListener;Z)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OConfigListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListener;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OrangeConfigListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OrangeConfigListenerV1;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAppSecret(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHosts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setIndexUpdateMode(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setUserId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract unregisterListener([Ljava/lang/String;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterListener([Ljava/lang/String;Lcom/taobao/orange/OConfigListener;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OConfigListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OrangeConfigListenerV1;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
