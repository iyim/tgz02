.class public Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;
.super Ljava/lang/Object;
.source "AntiAttackHandlerImpl.java"

# interfaces
.implements Lmtopsdk/mtop/antiattack/AntiAttackHandler;


# static fields
.field private static final DEFAULT_WAIT_RESULT_TIME_OUT:I = 0x4e20

.field private static final MTOPSDK_ANTI_ATTACK_ACTION:Ljava/lang/String; = "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

.field private static final MTOPSDK_ANTI_ATTACK_RESULT_ACTION:Ljava/lang/String; = "mtopsdk.extra.antiattack.result.notify.action"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.AntiAttackHandlerImpl"


# instance fields
.field final antiAttackReceiver:Landroid/content/BroadcastReceiver;

.field final handler:Landroid/os/Handler;

.field private final intentFilter:Landroid/content/IntentFilter;

.field final isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mContext:Landroid/content/Context;

.field final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "mtopsdk.extra.antiattack.result.notify.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->intentFilter:Landroid/content/IntentFilter;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->handler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;-><init>(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;-><init>(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)V

    iput-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->antiAttackReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    iput-object p1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string p2, "mtopsdk.AntiAttackHandlerImpl"

    .line 69
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {}, Lmtopsdk/xstate/XState;->isAppBackground()Z

    move-result v0

    .line 74
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[handle]execute new 419 Strategy,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "location="

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isBackground="

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 87
    :cond_2
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->getGlobalAttackAttackWaitInterval()J

    move-result-wide v0

    .line 88
    iget-object v2, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x4e20

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "Location"

    .line 94
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object p1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    iget-object p1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->antiAttackReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "[handle] execute new 419 Strategy error."

    .line 98
    invoke-static {p2, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
