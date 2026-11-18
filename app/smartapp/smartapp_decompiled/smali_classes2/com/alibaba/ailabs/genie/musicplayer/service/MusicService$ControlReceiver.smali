.class public Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControlReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$12$MusicService$ControlReceiver(IZZLandroid/content/Intent;)V
    .locals 9

    const-string v0, ""

    const/4 v1, 0x1

    const-string v2, "MusicService"

    const/4 v3, -0x1

    if-eq p1, v1, :cond_c

    const/4 v4, 0x2

    const-string v5, "Control"

    const-string v6, "com.alibaba.ailabs.genie.musicplayer.cmd"

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eq p1, v4, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    if-eq p1, v7, :cond_5

    const/4 p2, 0x7

    if-eq p1, p2, :cond_3

    const/16 p2, 0x16

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    const-string p2, "seekValue"

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1386
    :pswitch_0
    :try_start_0
    invoke-virtual {p4, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v3, :cond_f

    mul-int/lit16 p1, p1, 0x3e8

    if-ltz p1, :cond_f

    int-to-long p1, p1

    .line 1389
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getDuration()J

    move-result-wide p3

    cmp-long v0, p1, p3

    if-gtz v0, :cond_f

    .line 1390
    sget-object p3, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcSeekTo(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 1394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "skipTo error,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1372
    :pswitch_1
    :try_start_1
    invoke-virtual {p4, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v3, :cond_f

    .line 1374
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getProgress()I

    move-result p2

    mul-int/lit16 p1, p1, 0x3e8

    sub-int/2addr p2, p1

    if-ltz p2, :cond_f

    .line 1377
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcSeekTo(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 1381
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "seekBack error,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1354
    :pswitch_2
    :try_start_2
    invoke-virtual {p4, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v3, :cond_f

    if-nez p1, :cond_0

    .line 1357
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    int-to-long p3, p1

    invoke-interface {p2, p3, p4}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcSeekTo(J)V

    goto/16 :goto_0

    .line 1360
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getProgress()I

    move-result p2

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr p2, p1

    int-to-long p1, p2

    .line 1362
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getDuration()J

    move-result-wide p3

    cmp-long v0, p1, p3

    if-gez v0, :cond_f

    .line 1363
    sget-object p3, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcSeekTo(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 1367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "seekTo error,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1404
    :pswitch_3
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_f

    .line 1405
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object p2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_CANCEL_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1399
    :pswitch_4
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_f

    .line 1400
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object p2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_ADD_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    if-eqz p3, :cond_1

    const-string p1, "sendBroadcast-stop"

    .line 1336
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1339
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x12

    .line 1340
    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "live"

    .line 1341
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1342
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1344
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->stop()V

    .line 1345
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    iput-boolean v8, p1, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mIsClickPreOrNext:Z

    goto/16 :goto_0

    .line 1350
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->directStop()V

    goto/16 :goto_0

    .line 1319
    :cond_3
    sput v3, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->Operation:I

    .line 1320
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1321
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->resume()V

    .line 1323
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    iput-boolean v8, p1, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mIsClickPreOrNext:Z

    goto/16 :goto_0

    .line 1327
    :cond_5
    sput v3, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->Operation:I

    .line 1328
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1329
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1, v8}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->pause(Z)V

    .line 1331
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    iput-boolean v8, p1, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mIsClickPreOrNext:Z

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 1285
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result p1

    if-nez p1, :cond_8

    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->Operation:I

    if-ne p1, v3, :cond_8

    const-string p1, "\u624b\u52a8\u6682\u505c\u4e86\uff0c\u4e0b\u4e00\u9996\u4e0d\u8d77\u4f5c\u7528\u9632\u8bef\u5524\u9192"

    .line 1286
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;)V

    const-string p1, "Command.NEXT is from voice, return"

    .line 1287
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-eqz p3, :cond_9

    .line 1293
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    iput-boolean v1, p1, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mIsClickPreOrNext:Z

    :cond_9
    const-string p1, "next"

    .line 1295
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendStatCheckListLog(Ljava/lang/String;)V

    .line 1296
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_f

    .line 1297
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object p2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_NEXT:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    goto :goto_0

    .line 1302
    :cond_a
    sput v3, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->Operation:I

    .line 1304
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_b

    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcIsPlaying()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1305
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    if-eqz p3, :cond_b

    const-string p1, "sendBroadcast-pause"

    .line 1307
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1309
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1311
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1315
    :cond_b
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->toggle()V

    .line 1316
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    iput-boolean v8, p1, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mIsClickPreOrNext:Z

    goto :goto_0

    :cond_c
    if-eqz p2, :cond_d

    .line 1268
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result p1

    if-nez p1, :cond_d

    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->Operation:I

    if-ne p1, v3, :cond_d

    const-string p1, "\u624b\u52a8\u6682\u505c\u4e86\uff0c\u4e0a\u4e00\u9996\u4e0d\u8d77\u4f5c\u7528\u9632\u8bef\u5524\u9192"

    .line 1269
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;)V

    const-string p1, "Command.PREV is from voice, return"

    .line 1270
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    if-eqz p3, :cond_e

    .line 1275
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    iput-boolean v1, p1, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mIsClickPreOrNext:Z

    :cond_e
    const-string p1, "previous"

    .line 1277
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendStatCheckListLog(Ljava/lang/String;)V

    .line 1278
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_f

    .line 1279
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object p2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_PREVIOUS:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-interface {p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    :cond_f
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-eqz p2, :cond_3

    .line 1247
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p1, -0x1

    const-string v0, "Control"

    .line 1250
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "MusicService"

    if-ne v3, p1, :cond_1

    .line 1252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u65e0\u6548\u7684\u64ad\u653e\u547d\u4ee4 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1254
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$600()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 1255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Control Utils.isFastClick() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1258
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mLastPlayState:Z

    .line 1259
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->access$602(I)I

    const-string p1, "from_voice"

    .line 1260
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1261
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "FromNotify"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revc Control "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->translateCommandName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;IZZLandroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->postRunnable(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
