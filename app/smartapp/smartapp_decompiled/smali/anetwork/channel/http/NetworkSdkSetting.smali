.class public Lanetwork/channel/http/NetworkSdkSetting;
.super Ljava/lang/Object;
.source "NetworkSdkSetting.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static CURRENT_ENV:Lanet/channel/entity/ENV; = null

.field private static final TAG:Ljava/lang/String; = "anet.NetworkSdkSetting"

.field private static context:Landroid/content/Context;

.field private static initParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static isInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->initParams:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 85
    sget-object v0, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 3
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

    :try_start_0
    const-string/jumbo v1, "ttid"

    .line 64
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    invoke-static {v1}, Lanet/channel/GlobalAppRuntimeInfo;->setTtid(Ljava/lang/String;)V

    const-string v1, "deviceId"

    .line 66
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-static {v1}, Lanet/channel/GlobalAppRuntimeInfo;->setUtdid(Ljava/lang/String;)V

    const-string v1, "process"

    .line 68
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-static {v1}, Lanet/channel/GlobalAppRuntimeInfo;->setCurrentProcess(Ljava/lang/String;)V

    .line 72
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lanetwork/channel/http/NetworkSdkSetting;->initParams:Ljava/util/HashMap;

    .line 73
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lanetwork/channel/http/NetworkSdkSetting;->init(Landroid/content/Context;)V

    .line 74
    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->initParams:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 76
    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "anet.NetworkSdkSetting"

    const-string v2, "Network SDK initial failed!"

    invoke-static {v1, v2, v0, p0, p1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    const-string v0, "anet.NetworkSdkSetting"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 44
    :try_start_0
    sget-object v3, Lanetwork/channel/http/NetworkSdkSetting;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "NetworkSdkSetting init"

    .line 45
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    sput-object p0, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lanet/channel/GlobalAppRuntimeInfo;->setInitTime(J)V

    .line 48
    invoke-static {p0}, Lanet/channel/GlobalAppRuntimeInfo;->setContext(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->initTaobaoAdapter()V

    .line 50
    invoke-static {}, Lanetwork/channel/monitor/Monitor;->init()V

    .line 51
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->init()V

    .line 52
    invoke-static {}, Lanet/channel/AwcnConfig;->isTbNextLaunch()Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    invoke-static {p0}, Lanetwork/channel/cookie/CookieManager;->setup(Landroid/content/Context;)V

    .line 55
    :cond_1
    invoke-static {p0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Network SDK initial failed!"

    invoke-static {v0, v3, v1, p0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static initTaobaoAdapter()V
    .locals 9

    const-string v0, "anet.NetworkSdkSetting"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "anet.channel.TaobaoNetworkAdapter"

    const-string v5, "init"

    const/4 v6, 0x2

    .line 90
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Ljava/util/HashMap;

    aput-object v8, v7, v2

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    aput-object v8, v6, v3

    sget-object v8, Lanetwork/channel/http/NetworkSdkSetting;->initParams:Ljava/util/HashMap;

    aput-object v8, v6, v2

    invoke-static {v4, v5, v7, v6}, Lanet/channel/util/Utils;->invokeStaticMethodThrowException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "init taobao adapter success"

    .line 91
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v1, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 93
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    const-string v3, "initTaobaoAdapter failed. maybe not taobao app"

    invoke-static {v0, v3, v1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTtid(Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-static {p0}, Lanet/channel/GlobalAppRuntimeInfo;->setTtid(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
