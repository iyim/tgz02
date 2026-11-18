.class public Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "MediaService.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;
.implements Landroid/os/Handler$Callback;
.implements Lcom/alibaba/ailabs/geniesdk/agmc/IAgmcCallback;


# static fields
.field private static final AGMC_METHOD_ABANDON_FOCUS:I = 0xe

.field private static final AGMC_METHOD_ADD_PLAYER_PARAM:I = 0x12

.field private static final AGMC_METHOD_GET_CURRENT_POSITION:I = 0x9

.field private static final AGMC_METHOD_GET_DURATION:I = 0xa

.field private static final AGMC_METHOD_GET_PLAYABLE_DURATION:I = 0xb

.field private static final AGMC_METHOD_HAS_FOCUS:I = 0xd

.field private static final AGMC_METHOD_IS_PLAYING:I = 0xc

.field private static final AGMC_METHOD_MUSIC_CONTROL:I = 0x11

.field private static final AGMC_METHOD_PAUSE:I = 0x6

.field private static final AGMC_METHOD_PLAY:I = 0x2

.field private static final AGMC_METHOD_REGISTER_CALLBACK:I = 0x0

.field private static final AGMC_METHOD_REGISTER_RETRY:I = 0x32

.field private static final AGMC_METHOD_RESUME:I = 0x7

.field private static final AGMC_METHOD_SEEK_TO:I = 0x8

.field private static final AGMC_METHOD_SET_FADE_IN:I = 0x3

.field private static final AGMC_METHOD_SET_SPEED:I = 0x10

.field private static final AGMC_METHOD_SET_VOLUME:I = 0x4

.field private static final AGMC_METHOD_STATUS_CALLBACK:I = 0xf

.field private static final AGMC_METHOD_STOP:I = 0x5

.field private static final AGMC_METHOD_UNREGISTER_CALLBACK:I = 0x1

.field private static final AGMC_SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.agmc"

.field private static final MUSIC_CONTROL_ADD_FAVORITE:I = 0x2

.field private static final MUSIC_CONTROL_CANCEL_FAVORITE:I = 0x3

.field private static final MUSIC_CONTROL_NEXT:I = 0x0

.field private static final MUSIC_CONTROL_PREVIOUS:I = 0x1

.field private static final MUSIC_CONTROL_REFRESH:I = 0x4

.field private static final MUSIC_CONTROL_SET_PLAY_MODE:I = 0x5

.field private static final MUSIC_CONTROL_SET_QUALITY:I = 0x6

.field private static final TAG:Ljava/lang/String; = "AgmcPlayerService"

.field public static sMediaServiceImpl:Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;


# instance fields
.field private isRegisterListener:Z

.field private final mClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->isRegisterListener:Z

    .line 83
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "AgmcMediaService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getAppPkg(I)Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    const-string v1, ""

    .line 622
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-eqz v2, :cond_1

    .line 624
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 625
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 626
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    .line 627
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 628
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 629
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 636
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;
    .locals 2

    .line 71
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sMediaServiceImpl:Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sMediaServiceImpl:Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sMediaServiceImpl:Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 78
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sMediaServiceImpl:Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.agmc"

    return-object v0
.end method

.method private sendTrace(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "add_player_param"

    goto :goto_0

    :pswitch_1
    const-string p1, "music_control"

    goto :goto_0

    :pswitch_2
    const-string p1, "set_speed"

    goto :goto_0

    :pswitch_3
    const-string p1, "status_change"

    goto :goto_0

    :pswitch_4
    const-string p1, "abandon_focus"

    goto :goto_0

    :pswitch_5
    const-string p1, "seek_to"

    goto :goto_0

    :pswitch_6
    const-string p1, "resume"

    goto :goto_0

    :pswitch_7
    const-string p1, "pause"

    goto :goto_0

    :pswitch_8
    const-string p1, "stop"

    goto :goto_0

    :pswitch_9
    const-string p1, "set_volume"

    goto :goto_0

    :pswitch_a
    const-string p1, "set_fade_in"

    goto :goto_0

    :pswitch_b
    const-string p1, "play"

    goto :goto_0

    :pswitch_c
    const-string p1, "release"

    goto :goto_0

    :pswitch_d
    const-string p1, "init"

    .line 610
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 613
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getTraceInterface()Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 615
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getTraceInterface()Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    move-result-object v0

    const-string v1, "android_agmc_service"

    invoke-interface {v0, p1, v1, p2}, Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;->send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14

    .line 263
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    .line 264
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x32

    const/4 v3, 0x1

    const-string v4, "AgmcPlayerService"

    if-eq v1, v2, :cond_d

    const/4 v5, 0x0

    const-string v6, "id"

    const-string v7, "clientId"

    const-string v8, ""

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_3

    .line 521
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 522
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    .line 523
    invoke-virtual {p1, v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 524
    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "append"

    .line 525
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 530
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 531
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "key"

    .line 532
    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "value"

    .line 533
    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v6, "append"

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x12

    .line 535
    invoke-direct {p0, p1, v5}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGMC_METHOD_ADD_PLAYER_PARAM id = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " key = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 461
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 462
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "payload"

    .line 463
    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    const-string v9, "controlType"

    .line 464
    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AGMC_METHOD_MUSIC_CONTROL id = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " controlType = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_10

    .line 467
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v6, "CommandIssued"

    const-string v9, "AliGenie.Button"

    const-string v10, "BUTTON_ONLY"

    const-string v11, "interactionType"

    const-string v12, "buttonId"

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_2
    :try_start_0
    const-string v8, "buttonContexts"

    .line 496
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v8, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 498
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v8, "SoundQualitySelect"

    .line 500
    invoke-virtual {v4, v12, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {v4, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9, v6, v4, v5}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :pswitch_3
    const-string v8, "ChangePlayMode"

    .line 490
    invoke-virtual {v4, v12, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {v4, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9, v6, v4, v5}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :pswitch_4
    const-string v4, "AliGenie.Audio"

    const-string v6, "RefreshPlay"

    .line 505
    invoke-virtual {v0, v4, v6, v8, v5}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :pswitch_5
    const-string v8, "CancelFavorite"

    .line 485
    invoke-virtual {v4, v12, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {v4, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9, v6, v4, v5}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :pswitch_6
    const-string v8, "AddFavorite"

    .line 480
    invoke-virtual {v4, v12, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-virtual {v4, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9, v6, v4, v5}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :pswitch_7
    const-string v8, "ContentPrevious"

    .line 475
    invoke-virtual {v4, v12, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-virtual {v4, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9, v6, v4, v5}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :pswitch_8
    const-string v8, "ContentNext"

    .line 470
    invoke-virtual {v4, v12, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-virtual {v4, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9, v6, v4, v5}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 510
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 511
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "controlType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "payload"

    .line 514
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 p1, 0x11

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    goto/16 :goto_3

    .line 444
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 445
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "soundDelta"

    .line 446
    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "speed"

    .line 447
    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcSetSpeed(Ljava/lang/String;IF)V

    .line 452
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 453
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "soundDelta"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v6, "speed"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x10

    .line 456
    invoke-direct {p0, v5, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGMC_METHOD_SET_SPEED id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " soundDelta = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " speed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 417
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 418
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;

    const/16 v2, 0xf

    .line 421
    invoke-virtual {v1, v2, p1}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;->onStatusCallback(ILandroid/os/Bundle;)V

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGMC_METHOD_STATUS_CALLBACK id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 402
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 403
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 407
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcSeekTo(Ljava/lang/String;J)V

    .line 409
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "position"

    .line 411
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x8

    .line 412
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AGMC_METHOD_SEEK_TO id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 389
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 390
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 393
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcResume(Ljava/lang/String;)V

    .line 395
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 396
    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 397
    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGMC_METHOD_RESUME id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 376
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 377
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcPause(Ljava/lang/String;)V

    .line 382
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 384
    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGMC_METHOD_PAUSE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 363
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 364
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_5

    .line 367
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcStop(Ljava/lang/String;)V

    .line 369
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 370
    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 371
    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGMC_METHOD_STOP id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 348
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 349
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_6

    .line 353
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcSetVolume(Ljava/lang/String;F)V

    .line 355
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 356
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "position"

    .line 357
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 358
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AGMC_METHOD_SET_VOLUME id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 329
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 330
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "range"

    .line 331
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "start"

    .line 332
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    const-string v9, "end"

    .line 333
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    if-eqz v0, :cond_7

    .line 336
    invoke-virtual {v0, v1, v5, v8, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcSetFadeIn(Ljava/lang/String;IFF)V

    .line 338
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 339
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 343
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AGMC_METHOD_SET_FADE_IN id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 311
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 312
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 313
    const-class v2, Lcom/alibaba/ailabs/geniesdk/agmc/AgmcMedia;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/agmc/AgmcMedia;

    .line 314
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_8

    .line 317
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcPlay(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/agmc/AgmcMedia;)I

    .line 319
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 320
    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-boolean v2, v1, Lcom/alibaba/ailabs/geniesdk/agmc/AgmcMedia;->exclusive:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "exclusive"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v2, v1, Lcom/alibaba/ailabs/geniesdk/agmc/AgmcMedia;->audioUrl:Ljava/lang/String;

    const-string v5, "audioUrl"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v1, v1, Lcom/alibaba/ailabs/geniesdk/agmc/AgmcMedia;->extraData:Ljava/lang/String;

    const-string v2, "extraData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 324
    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGMC_METHOD_PLAY id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 292
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 294
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 295
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;

    if-eqz v1, :cond_9

    .line 297
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;->unlinkToDeath()V

    .line 300
    :cond_9
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 302
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcRelease(Ljava/lang/String;)V

    .line 304
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 305
    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-direct {p0, v3, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGMC_METHOD_UNREGISTER_CALLBACK id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 266
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 267
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v1

    .line 268
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 270
    new-instance v6, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, v1, p0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 271
    invoke-virtual {v6, p1}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;->setClientId(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v6}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;->linkToDeath()V

    .line 274
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 276
    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->isRegisterListener:Z

    if-nez v1, :cond_b

    .line 277
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcRegisterCallback(Lcom/alibaba/ailabs/geniesdk/agmc/IAgmcCallback;)V

    .line 278
    iput-boolean v3, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->isRegisterListener:Z

    .line 280
    :cond_b
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcInit(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 282
    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-direct {p0, v5, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGMC_METHOD_REGISTER_CALLBACK id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string v0, "register callback core is null"

    .line 286
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 429
    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 431
    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->isRegisterListener:Z

    if-nez v1, :cond_e

    .line 432
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcRegisterCallback(Lcom/alibaba/ailabs/geniesdk/agmc/IAgmcCallback;)V

    .line 433
    iput-boolean v3, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->isRegisterListener:Z

    .line 435
    :cond_e
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcInit(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    const-string v0, "register callback core is null"

    .line 437
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 440
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGMC_METHOD_REGISTER_RETRY id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const-string v0, "#"

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "r"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "AgmcPlayerService"

    const-string v9, "e"

    const-string v10, "id"

    const-string v11, ""

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 240
    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 236
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 232
    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 214
    :pswitch_4
    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "virtual"

    .line 215
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcAbandonFocus(Ljava/lang/String;Z)Z

    move-result v7

    .line 222
    :cond_0
    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AGMC_METHOD_ABANDON_FOCUS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "clientId"

    .line 225
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "result"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xe

    .line 228
    invoke-direct {p0, p1, v2}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    goto/16 :goto_2

    .line 202
    :pswitch_5
    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcHasFocus(Ljava/lang/String;)Z

    move-result v7

    .line 209
    :cond_1
    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AGMC_METHOD_HAS_FOCUS id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 190
    :pswitch_6
    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcIsPlaying(Ljava/lang/String;)Z

    move-result v7

    .line 197
    :cond_2
    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 178
    :pswitch_7
    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_3

    .line 182
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcGetPlayableDuration(Ljava/lang/String;)J

    move-result-wide v5

    .line 185
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AGMC_METHOD_GET_PLAYABLE_DURATION id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 166
    :pswitch_8
    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_4

    .line 170
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcGetDuration(Ljava/lang/String;)J

    move-result-wide v5

    .line 173
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AGMC_METHOD_GET_DURATION id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 154
    :pswitch_9
    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_5

    .line 158
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->agmcGetCurrentPosition(Ljava/lang/String;)J

    move-result-wide v5

    .line 161
    :cond_5
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 150
    :pswitch_a
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 146
    :pswitch_b
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 142
    :pswitch_c
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 138
    :pswitch_d
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 134
    :pswitch_e
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 130
    :pswitch_f
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 126
    :pswitch_10
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 122
    :pswitch_11
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 98
    :pswitch_12
    invoke-static {p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 99
    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 104
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 106
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->getAppPkg(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :cond_7
    :goto_0
    invoke-virtual {p2, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v7, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_8
    :goto_1
    const-string p1, "Agmc client binder is null or dead"

    .line 100
    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v1, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 3

    .line 251
    instance-of v0, p1, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;

    if-eqz v0, :cond_0

    .line 252
    nop

    nop

    .line 253
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;->getClientId()Ljava/lang/String;

    move-result-object p1

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "e"

    .line 255
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media client dead, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgmcPlayerService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStatusCallback(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatusCallback id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgmcPlayerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 549
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "playId"

    .line 550
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "status"

    .line 551
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "data"

    .line 552
    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xf

    invoke-static {v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "clientId"

    .line 555
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-interface {v0, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-direct {p0, v5, v0}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->sendTrace(ILjava/util/Map;)V

    return-void
.end method
