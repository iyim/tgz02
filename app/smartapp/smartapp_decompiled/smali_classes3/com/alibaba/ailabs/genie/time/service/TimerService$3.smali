.class Lcom/alibaba/ailabs/genie/time/service/TimerService$3;
.super Landroid/content/BroadcastReceiver;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/time/service/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/time/service/TimerService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/time/service/TimerService;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$3;->this$0:Lcom/alibaba/ailabs/genie/time/service/TimerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimerService2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.DATE_CHANGED"

    .line 335
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8de8\u8d8a\u4e86\u4e00\u5929\uff0ctime:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$3;->this$0:Lcom/alibaba/ailabs/genie/time/service/TimerService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$300(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->haveEnteredScreenSaver()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "onReceive, \u8fdb\u5165\u4e86\u5c4f\u4fdd\u6216\u8005\u606f\u5c4f\u4e86"

    .line 338
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertForegroundEvent()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 341
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertBackgroundEvent()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertForegroundEvent()V

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 345
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertBackgroundEvent()V

    .line 347
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->stop()V

    .line 349
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->reportData()V

    goto :goto_0

    :cond_5
    const-string v0, "ACTION_SCREEN_SAVER"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p2, "screen_saver_state"

    .line 353
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screenState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    .line 356
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->enteredScreenSaver(Z)V

    .line 357
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertBackgroundEvent()V

    goto :goto_0

    :cond_6
    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 359
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->enteredScreenSaver(Z)V

    .line 360
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertForegroundEvent()V

    goto :goto_0

    :cond_7
    const-string p2, "android.intent.action.REBOOT"

    .line 363
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_8
    :goto_0
    return-void
.end method
