.class public Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;
.super Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.source "VisionWakeUpService.java"


# static fields
.field private static final EVENT_CODE_PERSON_SEARCH_DB:I = 0x111d8

.field private static final EVENT_CODE_VISION_VAD_RESULT:I = 0x111d7

.field private static final EVENT_CODE_VOICE_ANGLE:I = 0x579

.field private static final MODE_ACTIVE:Ljava/lang/String; = "ACTIVE"

.field private static final MODE_IDLE:Ljava/lang/String; = "IDLE"

.field private static final TAG:Ljava/lang/String; = "VisionWakeUpService"

.field private static mAsynHandler:Landroid/os/Handler;


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private lastModeChangeTime:J

.field private mBlackSceneModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMode:Ljava/lang/String;

.field private mIsVisionWakeUpCancel:Z

.field private mIsVisionWakeUpReady:Z

.field private mIsVisionWakeUpSuspend:Z

.field private mPersonIdTableEventId:J

.field private mSpeechDoaEventId:J

.field private mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mVisionWakeUpCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mVisionWakeUpCancelTime:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "IDLE"

    .line 39
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mCurrentMode:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->lastModeChangeTime:J

    .line 42
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mSpeechDoaEventId:J

    .line 43
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mPersonIdTableEventId:J

    const/4 v2, 0x0

    .line 45
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpSuspend:Z

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "video"

    const-string v5, "screen_off"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mBlackSceneModeList:Ljava/util/List;

    .line 61
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpCancel:Z

    .line 62
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpCancelTime:J

    .line 99
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpReady:Z

    .line 128
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->conn:Landroid/content/ServiceConnection;

    .line 346
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$4;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)Lcom/alibaba/ailabs/avesdk/AVEClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->modeMachineProcess(Lcom/alibaba/fastjson/JSONObject;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private changeMode(Ljava/lang/String;)V
    .locals 5

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->lastModeChangeTime:J

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->lastModeChangeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mCurrentMode:Ljava/lang/String;

    const-string v1, "ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    const-string v0, "IDLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vision_wakeup_invalid"

    .line 268
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->visionWakeUpStatusCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mCurrentMode:Ljava/lang/String;

    .line 272
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpCancelTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1b58

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    const-string p1, "vision_wakeup_ready"

    .line 273
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->visionWakeUpStatusCallback(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "re-enter active mode, reset mIsVisionWakeUpCancel"

    .line 274
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 275
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpCancel:Z

    :cond_1
    return-void
.end method

.method private checkVisionWakeUpSettingStatus()Z
    .locals 1

    .line 238
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isVisionWakeUpOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "checkVisionWakeUpSettingStatus: setting open: false"

    .line 239
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "checkVisionWakeUpSettingStatus: setting open: true"

    .line 242
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 3

    .line 115
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mAsynHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 116
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mAsynHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "vision_java"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mAsynHandler:Landroid/os/Handler;

    .line 122
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mAsynHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isInSceneModeBlackList()Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mBlackSceneModeList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->getCurrentSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->getCurrentSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in scene mode black list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->getCurrentSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not in scene mode black list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private modeMachineProcess(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mCurrentMode:Ljava/lang/String;

    const-string v1, "IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "0"

    const-string v4, "face_number"

    const-string v5, "result"

    const-string v6, "Error type for : "

    const-string v7, "face"

    const-string v8, "type"

    const-string v9, "ACTIVE"

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 302
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "TmallGenie_Multimode_WakeUp_Listen"

    .line 304
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->onEventHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 305
    invoke-direct {p0, v9}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->changeMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 314
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lip_movement"

    .line 316
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lipMove = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "true"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "TmallGenie_Multimode_Page_Microphone"

    .line 320
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->onEventHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AVE. startTalk(). mIsVisionWakeUpCancel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpCancel:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsVisionWakeUpSuspend = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpSuspend:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 322
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpCancel:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpSuspend:Z

    if-nez p1, :cond_2

    const-string p1, "startTalk"

    const-string v0, "lip_wakeup"

    .line 323
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->callback(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u53e3\u578b\u68c0\u6d4b"

    .line 324
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "suspend"

    const-string v1, "GenieWakeUpVEngine"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    .line 326
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpSuspend:Z

    .line 327
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "resume"

    const-string v1, "GenieVisionVadVEngine"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 329
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not startTalk mIsVisionWakeUpCancel = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpCancel:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpSuspend:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No face detect looping in mode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->changeMode(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public callbackWrapper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->callback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getServiceTag()Ljava/lang/String;
    .locals 1

    const-string v0, "VisionWakeUpService"

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 195
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " args = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "start"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpSuspend:Z

    .line 199
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz p1, :cond_0

    const-string p2, "resume"

    const-string v0, "GenieWakeUpVEngine"

    .line 200
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz p1, :cond_9

    const-string p2, "suspend"

    const-string v0, "GenieVisionVadVEngine"

    .line 203
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "stop"

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    goto/16 :goto_0

    :cond_2
    const-string v0, "muteState"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "true"

    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->stopVisionWakeup()V

    goto :goto_0

    :cond_3
    const-string p1, "false"

    .line 212
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->startVisionWakeupService()V

    goto :goto_0

    :cond_4
    const-string p2, "activityChange"

    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->isInBlackList()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "in Vision WakeUp Invalid Page"

    .line 217
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->stopVisionWakeup()V

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->startVisionWakeupService()V

    goto :goto_0

    :cond_6
    const-string p2, "touchEvent"

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p1, "touchEvent trigger vision wakeUp cancel"

    .line 223
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string p1, "vision_wakeup_invalid"

    const-string p2, ""

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->visionWakeUpStatusCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez p1, :cond_7

    const-string p1, "touchEvent trigger when vision wakeUp stop"

    .line 226
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpCancelTime:J

    :cond_7
    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpCancel:Z

    goto :goto_0

    :cond_8
    const-string p2, "queryMakeSense"

    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 231
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz p1, :cond_9

    const-string v0, "null"

    .line 232
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_9
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 143
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCreate()V

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->startVisionWakeupService()V

    const-string v0, "onCreate"

    .line 146
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->conn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 149
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)V

    const/16 v2, 0x579

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerEventDispatcher(ILcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mSpeechDoaEventId:J

    .line 170
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService$3;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;)V

    const v2, 0x111d8

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerEventDispatcher(ILcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mPersonIdTableEventId:J

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 184
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onDestroy()V

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->stopVisionWakeup()V

    const-string v0, "onDestroy"

    .line 186
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    .line 188
    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mSpeechDoaEventId:J

    const/16 v3, 0x579

    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->unregisterEventDispatcher(IJ)V

    .line 189
    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mPersonIdTableEventId:J

    const v3, 0x111d8

    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->unregisterEventDispatcher(IJ)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onSceneModeChanged(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 71
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mBlackSceneModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onSceneModeChanged hit black list"

    .line 72
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->stopVisionWakeup()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->startVisionWakeupService()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScreenChanged(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onWepAppVideoPlayChanged(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "start_play"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->stopVisionWakeup()V

    goto :goto_0

    :cond_0
    const-string v0, "stop_play"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->startVisionWakeupService()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public startVisionWakeup()V
    .locals 3

    const-string v0, "startVisionWakeup"

    .line 280
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpSuspend:Z

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v0, :cond_0

    const-string v1, "enable"

    const-string v2, "GenieWakeUpVEngine"

    .line 283
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v2, "GeniePersonRegisterVEngine"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v2, "GenieVisionVadVEngine"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "suspend"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 287
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "loadPersonIdTable"

    const-string v2, "/sdcard/syncData/human-recognize-db"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "IDLE"

    .line 288
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->changeMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "startVisionWakeup:mVisionWakeUpAveClient = null"

    .line 290
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    const-string v0, "startVisionWakeup end"

    .line 292
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public startVisionWakeupService()V
    .locals 2

    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->syncBlackListConf()V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVisionWakeupService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->checkVisionWakeUpSettingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->isInSceneModeBlackList()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->getMuteState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->isInBlackList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->getWebAppPlayStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "startVisionWakeupService impl"

    .line 418
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "genieallinone"

    .line 419
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 421
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "not run startVisionWakeupService"

    .line 423
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 425
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopVisionWakeup()V
    .locals 3

    .line 247
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez v0, :cond_0

    .line 249
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "stopVisionWakeup"

    .line 252
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "vision_wakeup_invalid"

    const-string v1, ""

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->callback(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "disable"

    const-string v2, "GenieWakeUpVEngine"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "disable"

    const-string v2, "GeniePersonRegisterVEngine"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "disable"

    const-string v2, "GenieVisionVadVEngine"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "stopVisionWakeup ... end"

    .line 259
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 260
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public visionWakeUpStatusCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "vision_wakeup_ready"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpReady:Z

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->callback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "vision_wakeup_invalid"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpReady:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->mIsVisionWakeUpReady:Z

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;->callback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
