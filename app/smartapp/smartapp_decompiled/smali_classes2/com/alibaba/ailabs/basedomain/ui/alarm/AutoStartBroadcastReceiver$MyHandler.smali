.class final Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;
.super Landroid/os/Handler;
.source "AutoStartBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyHandler"
.end annotation


# instance fields
.field private mCheckCount:I

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x3

    .line 31
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mCheckCount:I

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mCheckCount:I

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 46
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mIntent:Landroid/content/Intent;

    return-void

    .line 51
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoStartBroadcastReceiver MyHandler checkCount = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mCheckCount:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,curTime = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "AutoStartBroadcastReceiver"

    invoke-static {v3, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mCheckCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mCheckCount:I

    const-wide v3, 0x179855af000L

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mIntent:Landroid/content/Intent;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver;->access$000(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mContext:Landroid/content/Context;

    .line 61
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->mIntent:Landroid/content/Intent;

    return-void

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v0, 0x1388

    .line 65
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AutoStartBroadcastReceiver$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
