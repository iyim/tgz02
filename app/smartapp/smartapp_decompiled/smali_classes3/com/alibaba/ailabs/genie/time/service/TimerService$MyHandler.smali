.class Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;
.super Landroid/os/Handler;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/time/service/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# static fields
.field private static final GAP_VAL:I = 0x4e20


# instance fields
.field private mLastTime:J

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/time/service/TimerService;",
            ">;"
        }
    .end annotation
.end field

.field private mReportFlag:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/time/service/TimerService;Landroid/os/Looper;)V
    .locals 0

    .line 198
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 194
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->mReportFlag:Z

    .line 199
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 204
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/time/service/TimerService;

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimerService2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto/16 :goto_1

    .line 265
    :cond_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$400(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->removeMessages(I)V

    .line 266
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$700(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->doForbiddenMode()V

    .line 267
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$400(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    move-result-object p1

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 254
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->reportData()V

    .line 255
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$400(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$000()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_3
    const-string p1, "---TIME_TICK---"

    .line 212
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 214
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$208(Lcom/alibaba/ailabs/genie/time/service/TimerService;)J

    .line 215
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$200(Lcom/alibaba/ailabs/genie/time/service/TimerService;)J

    move-result-wide v6

    const-wide/16 v8, 0x3

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-nez p1, :cond_4

    .line 216
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v6, "sp_time"

    invoke-static {p1, v6}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v6, "time"

    .line 218
    invoke-interface {p1, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentTimeMillis:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$300(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Ljava/text/SimpleDateFormat;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-wide v6, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->mLastTime:J

    cmp-long p1, v6, v8

    if-eqz p1, :cond_6

    .line 228
    invoke-static {v6, v7, v4, v5}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->isSameDay(JJ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 229
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayEnd()J

    move-result-wide v6

    sub-long/2addr v6, v4

    cmp-long p1, v6, v8

    if-lez p1, :cond_6

    const-wide/16 v8, 0x4e20

    cmp-long p1, v6, v8

    if-gez p1, :cond_6

    .line 232
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->mReportFlag:Z

    if-nez p1, :cond_6

    .line 233
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->mReportFlag:Z

    const-string p1, "\u6700\u540e20\u79d2\u4e0a\u62a5\u6570\u636e"

    .line 234
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->reportData()V

    .line 241
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->deleteLastSevenDay()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->mReportFlag:Z

    const-string p1, "\u8de8\u8d8a\u4e86\u4e00\u5929"

    .line 246
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_6
    :goto_0
    iput-wide v4, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->mLastTime:J

    .line 250
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$400(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v3, v0, v1}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_7
    const-string p1, "MSG_CALCULATE, start"

    .line 259
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$500(Lcom/alibaba/ailabs/genie/time/service/TimerService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$600(Lcom/alibaba/ailabs/genie/time/service/TimerService;J)V

    .line 261
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$400(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    move-result-object p1

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$100(Lcom/alibaba/ailabs/genie/time/service/TimerService;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method
