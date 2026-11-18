.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleAlarmTimeUp(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Landroid/content/Intent;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAlarmTimeUp with empty data, intent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, -0x1

    const-string v3, "alarm_db_id"

    .line 285
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "dest_time_mills"

    .line 286
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 287
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$500(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v0

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Step#2 handleAlarmTimeUp postBgTask 293, alarm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    move-object v6, v0

    goto :goto_0

    :cond_1
    const-string v6, "alarmInfo is null"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAlarmRingTask time, alarm:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmTimeUp(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 297
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "id"

    .line 299
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "volume"

    .line 300
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getVolume()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "url"

    .line 303
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTtsUrl()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "ttsUrl"

    .line 307
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v6, "ringType"

    .line 310
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getTone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "trigger"

    .line 311
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getOriginTrigger()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getOriginActions()Ljava/lang/String;

    move-result-object v6

    .line 314
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v7, :cond_4

    .line 316
    :try_start_1
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v5, "actions"

    .line 317
    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-object v5, v7

    goto :goto_1

    :catch_1
    move-object v5, v7

    goto :goto_2

    :catch_2
    :cond_4
    :goto_1
    :try_start_3
    const-string v6, "alarm"

    .line 320
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getBizType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "triggerType"

    const-string v7, "alarmClock"

    .line 321
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    :cond_5
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "communicationContexts"

    .line 324
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    :goto_2
    const-string v6, "BaseService handleAlarmTimeUp add json err"

    .line 326
    invoke-static {v1, v6}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    iget-object v6, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x3ec

    invoke-static {v6, v7, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->AlarmStatusSync(Landroid/content/Context;ILjava/lang/String;)V

    .line 334
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->sendDataSync(Ljava/lang/String;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    if-eqz v5, :cond_6

    .line 336
    iget-object v6, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v6

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 336
    invoke-virtual {v6, v5, v7}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->setCurPlayActionData(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    :cond_6
    const/4 v5, 0x1

    .line 340
    invoke-virtual {v0, v5}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->setWaitingOther(Z)V

    .line 341
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const v6, 0x9ca2

    .line 342
    iput v6, v5, Landroid/os/Message;->what:I

    .line 343
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    iget v6, v5, Landroid/os/Message;->what:I

    iget-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->removeBgMessage(ILjava/lang/Object;)V

    .line 345
    sget v6, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->TIME_ALARM_WAITING:I

    int-to-long v6, v6

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    cmp-long v12, v3, v8

    if-lez v12, :cond_8

    .line 347
    sget v6, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->TIME_ALARM_WAITING:I

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v3, v6

    .line 349
    sget v6, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->TIME_ALARM_WAITING:I

    int-to-long v6, v6

    cmp-long v8, v3, v6

    if-lez v8, :cond_7

    .line 350
    sget v3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->TIME_ALARM_WAITING:I

    int-to-long v3, v3

    :cond_7
    move-wide v6, v3

    cmp-long v3, v6, v10

    if-gez v3, :cond_8

    move-wide v6, v10

    .line 356
    :cond_8
    invoke-static {v5, v6, v7}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgMessageDelay(Landroid/os/Message;J)V

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Step#2 Sync alarm to gw payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step#2 delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms to ring!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$700(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto :goto_4

    .line 361
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step#2 handleAlarmTimeUp, but no find alarm info, alarmDbId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAlarmTimeUp runnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
