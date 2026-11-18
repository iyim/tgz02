.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmScheduleSyncDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmScheduleSyncDataReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AlarmScheduleSyncDataReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "AlarmScheduleSyncDataReceiver"

    const-string v0, "AlarmScheduleSyncDataReceiver -------- begin "

    .line 23
    invoke-static {p2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "schedule_sync_alarm_data"

    .line 24
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->startSelf(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
