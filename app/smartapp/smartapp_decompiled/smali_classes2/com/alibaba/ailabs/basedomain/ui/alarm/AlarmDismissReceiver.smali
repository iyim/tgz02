.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmDismissReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmDismissReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "AlarmDismissReceiver"

    const-string v0, "\u95f9\u949f AlarmDismissReceiver ........ "

    .line 21
    invoke-static {p2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "alarm_dismiss_by_other"

    .line 22
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->startSelf(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
