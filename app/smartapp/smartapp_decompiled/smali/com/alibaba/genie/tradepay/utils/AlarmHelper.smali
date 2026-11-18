.class public Lcom/alibaba/genie/tradepay/utils/AlarmHelper;
.super Ljava/lang/Object;
.source "AlarmHelper.java"


# static fields
.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_ALERT"

.field public static final ALARM_DISMISS_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_DISMISS"

.field public static final ALARM_DONE_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_DONE"

.field public static final ALARM_SNOOZE_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_SNOOZE"

.field private static final TAG:Ljava/lang/String; = "AlarmHelper"

.field private static volatile ourInstance:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;


# instance fields
.field private isRegister:Z

.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->isRegister:Z

    .line 60
    new-instance v0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/tradepay/utils/AlarmHelper$1;-><init>(Lcom/alibaba/genie/tradepay/utils/AlarmHelper;)V

    iput-object v0, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/genie/tradepay/utils/AlarmHelper;
    .locals 2

    .line 25
    sget-object v0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->ourInstance:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->ourInstance:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->ourInstance:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 32
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->ourInstance:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    return-object p0
.end method

.method private snoozeAlarm()V
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.deskclock.ALARM_SNOOZE"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public registerAlarm(Z)V
    .locals 2

    .line 36
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->isRegister:Z

    .line 37
    iget-boolean p1, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->isRegister:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->isRegister:Z

    .line 41
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.deskclock.ALARM_SNOOZE"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.deskclock.ALARM_DISMISS"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.deskclock.ALARM_DONE"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.deskclock.ALARM_ALERT"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "AlarmHelper"

    const-string/jumbo v1, "register!"

    .line 46
    invoke-static {v0, v1}, Lcom/alibaba/genie/tradepay/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public stopAlarm()V
    .locals 2

    const-string v0, "AlarmHelper"

    const-string/jumbo v1, "stop alarm"

    .line 92
    invoke-static {v0, v1}, Lcom/alibaba/genie/tradepay/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.basedomain"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_DISMISS"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public unRegisterAlarm()V
    .locals 2

    const-string v0, "AlarmHelper"

    const-string/jumbo v1, "unregister!"

    .line 52
    invoke-static {v0, v1}, Lcom/alibaba/genie/tradepay/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->isRegister:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->isRegister:Z

    .line 56
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
