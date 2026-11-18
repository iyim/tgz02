.class public Lcom/taobao/orange/launch/TaobaoLaunchOrange;
.super Ljava/lang/Object;
.source "TaobaoLaunchOrange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TbLaunchOrange"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TbLaunchOrange"

    const-string v3, "init start"

    invoke-static {v2, v3, v1}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "*"

    .line 31
    sget-object v3, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v3}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v3

    :try_start_0
    const-string v4, "appVersion"

    .line 33
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "envIndex"

    .line 34
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 36
    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    if-ne v3, v1, :cond_0

    const-string v1, "onlineAppKey"

    .line 37
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    .line 38
    :cond_0
    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    if-ne v3, v1, :cond_1

    const-string v1, "preAppKey"

    .line 39
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "dailyAppkey"

    .line 41
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v4, v1

    .line 44
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "init"

    invoke-static {v2, v5, p2, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string p2, "21646297"

    .line 46
    :goto_1
    new-instance v1, Lcom/taobao/orange/OConfig$Builder;

    invoke-direct {v1}, Lcom/taobao/orange/OConfig$Builder;-><init>()V

    .line 47
    invoke-virtual {v1, p2}, Lcom/taobao/orange/OConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 48
    invoke-virtual {p2, v4}, Lcom/taobao/orange/OConfig$Builder;->setAppVersion(Ljava/lang/String;)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 49
    invoke-virtual {p2, v3}, Lcom/taobao/orange/OConfig$Builder;->setEnv(I)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    sget-object v1, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    .line 50
    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$SERVER;->ordinal()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/taobao/orange/OConfig$Builder;->setServerType(I)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    sget-object v1, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 51
    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$UPDMODE;->ordinal()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/taobao/orange/OConfig$Builder;->setIndexUpdateMode(I)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 52
    invoke-virtual {p2, v0}, Lcom/taobao/orange/OConfig$Builder;->setReportAck(Z)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p2, v0}, Lcom/taobao/orange/OConfig$Builder;->setStatUsedConfig(Z)Lcom/taobao/orange/OConfig$Builder;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/taobao/orange/OConfig$Builder;->build()Lcom/taobao/orange/OConfig;

    move-result-object p2

    .line 55
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/orange/OrangeConfig;->init(Landroid/content/Context;Lcom/taobao/orange/OConfig;)V

    return-void
.end method
