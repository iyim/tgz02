.class public Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;
.super Ljava/lang/Object;
.source "BootTaskStartAppFactory.java"


# annotations
.annotation build Landroid/support/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;,
        Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;
    }
.end annotation


# static fields
.field private static final DOUYIN:Ljava/lang/String; = "com.ss.android.ugc.aweme"

.field private static final KUAISHOU:Ljava/lang/String; = "com.smile.gifmaker"

.field private static final MGTV:Ljava/lang/String; = "com.mgtv.tv"

.field private static final QIYI:Ljava/lang/String; = "com.qiyi.video.speaker"

.field private static final QQLIVE:Ljava/lang/String; = "com.tencent.qqlive.audiobox"

.field public static final YOUKU:Ljava/lang/String; = "com.youku.iot"

.field private static volatile instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;


# instance fields
.field pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy<",
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;",
            ">;>;"
        }
    .end annotation
.end field

.field startAWEME:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy<",
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;",
            ">;"
        }
    .end annotation
.end field

.field startGIFMAKER:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy<",
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;",
            ">;"
        }
    .end annotation
.end field

.field startQIYI:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy<",
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;",
            ">;"
        }
    .end annotation
.end field

.field startYOUKU:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy<",
            "Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->pool:Ljava/util/Map;

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$lJ3N2DxTOwEiYgNQ_l3kOkOxpgA;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$lJ3N2DxTOwEiYgNQ_l3kOkOxpgA;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->startQIYI:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$2Meunp8QOdyRvWSQZF3ym80iHeg;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$2Meunp8QOdyRvWSQZF3ym80iHeg;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->startYOUKU:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;

    .line 57
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$4q7ax394W8eFdzJGrfzKi9H8HkY;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$4q7ax394W8eFdzJGrfzKi9H8HkY;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->startAWEME:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;

    .line 68
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$Vf5u_5fwjiZdCO240WI4ydlIQOY;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$Vf5u_5fwjiZdCO240WI4ydlIQOY;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->startGIFMAKER:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->pool:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->startQIYI:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;

    const-string v2, "com.qiyi.video.speaker"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->pool:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->startAWEME:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;

    const-string v2, "com.ss.android.ugc.aweme"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->pool:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->startGIFMAKER:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;

    const-string v2, "com.smile.gifmaker"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->pool:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->startYOUKU:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;

    const-string v2, "com.youku.iot"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;
    .locals 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 85
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;

    if-nez v0, :cond_1

    .line 86
    const-class v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;

    .line 90
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 93
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->instance:Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;

    return-object v0
.end method

.method static synthetic lambda$new$3()Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;
    .locals 1

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$JD79Tw6dDaFGt6_oEKQQq4OkB8E;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$JD79Tw6dDaFGt6_oEKQQq4OkB8E;

    return-object v0
.end method

.method static synthetic lambda$new$5()Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;
    .locals 1

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$t7IQZtbyQDtcX9vZ8eTGB5Qf_MI;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$t7IQZtbyQDtcX9vZ8eTGB5Qf_MI;

    return-object v0
.end method

.method static synthetic lambda$new$7()Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;
    .locals 1

    .line 57
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$a2WhM4CwNMsPQwC98US6PhuczaU;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$a2WhM4CwNMsPQwC98US6PhuczaU;

    return-object v0
.end method

.method static synthetic lambda$new$9()Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;
    .locals 1

    .line 68
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$nX99WGfFyVxFKZj0_afocFAhYMM;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$nX99WGfFyVxFKZj0_afocFAhYMM;

    return-object v0
.end method

.method static synthetic lambda$null$2(Landroid/content/Context;)V
    .locals 4

    const-string v0, "QUICK"

    const-string v1, "Boot start iQIYI"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.qiyi.video.speaker"

    const-string v3, "com.qiyi.video.speaker.init.TmallBootReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$null$4(Landroid/content/Context;)V
    .locals 4

    const-string v0, "QUICK"

    const-string v1, "Boot start YOUKU"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.youku.iot"

    const-string v3, "com.yunos.tv.yingshi.boutique.boot.GenieReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$null$6(Landroid/content/Context;)V
    .locals 4

    const-string v0, "QUICK"

    const-string v1, "Boot start AWEME"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.ss.android.ugc.aweme"

    const-string v3, "com.ss.android.ugc.aweme.carplay.main.tmall.TmallBootOptReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$null$8(Landroid/content/Context;)V
    .locals 2

    const-string v0, "QUICK"

    const-string v1, "Boot start GIF"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.smile.gifmaker"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public cached(Ljava/lang/String;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->pool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->pool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->pool:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BootTaskStartAppFactory No Cached : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QUICK"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->pool:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;

    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;->startUp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
