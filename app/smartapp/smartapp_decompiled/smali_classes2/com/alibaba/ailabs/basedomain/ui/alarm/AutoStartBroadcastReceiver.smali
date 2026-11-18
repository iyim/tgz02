.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoStartBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static final CHECK_DELAY_TIME:I = 0x1388

.field private static final MIN_TIME:J = 0x179855af000L

.field public static final TAG:Ljava/lang/String; = "AutoStartBroadcastReceiver"

.field static final action_boot:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver;->startAlarmService(Landroid/content/Context;Landroid/content/Intent;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static startAlarmService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "AutoStartBroadcastReceiver"

    const-string v1, "AutoStartBroadcastReceiver startAlarmService"

    .line 86
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "alarm_system_boot"

    .line 91
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->startSelf(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoStartBroadcastReceiver start. curTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutoStartBroadcastReceiver"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v2, 0x179855af000L

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 76
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver;->startAlarmService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x0

    const-wide/16 v1, 0x1388

    .line 82
    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
