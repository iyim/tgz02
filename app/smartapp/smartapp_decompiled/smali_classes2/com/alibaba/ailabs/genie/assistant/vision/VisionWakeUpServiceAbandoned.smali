.class public Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;
.super Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.source "VisionWakeUpServiceAbandoned.java"


# static fields
.field private static final FAILED_TIMES:I = 0xf

.field private static final MODE_ACTIVE:Ljava/lang/String; = "ACTIVE"

.field private static final MODE_FOCUS:Ljava/lang/String; = "FOCUS"

.field private static final MODE_IDLE:Ljava/lang/String; = "IDLE"

.field private static final MODE_LISTEN:Ljava/lang/String; = "LISTEN"

.field private static final MODE_RECOMMEND:Ljava/lang/String; = "RECOMMEND"

.field private static SCENE_MODE_MEDIA:Ljava/lang/String; = "video"

.field private static final TAG:Ljava/lang/String; = "VisionWakeUpServiceA"


# instance fields
.field private failedTimes:I

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

.field private mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mVisionWakeUpCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 4

    .line 19
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "IDLE"

    .line 29
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->lastModeChangeTime:J

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->failedTimes:I

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->SCENE_MODE_MEDIA:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mBlackSceneModeList:Ljava/util/List;

    .line 228
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;)Lcom/alibaba/ailabs/avesdk/AVEClient;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->modeMachineProcess(Lcom/alibaba/fastjson/JSONObject;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private changeMode(Ljava/lang/String;)V
    .locals 3

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->lastModeChangeTime:J

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->lastModeChangeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionWakeUpServiceA"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

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

    .line 134
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->callback(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "vision_wakeup_ready"

    .line 139
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->callback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private changeToBodyCheck()V
    .locals 3

    const-string v0, "VisionWakeUpServiceA"

    const-string v1, "changeToBodyCheck"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "changeMode"

    const-string v2, "body"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private changeToFaceCheck()V
    .locals 3

    const-string v0, "VisionWakeUpServiceA"

    const-string v1, "changeToFaceCheck"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "changeMode"

    const-string v2, "face"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private checkVisionWakeUpSettingStatus()Z
    .locals 2

    .line 99
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isVisionWakeUpOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VisionWakeUpServiceA"

    const-string v1, "checkVisionWakeUpSettingStatus: setting open: false"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private modeMachineProcess(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 13

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    const-string v1, "IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "true"

    const-string v3, "FOCUS"

    const/4 v4, 0x0

    const-string v5, "result"

    const-string v6, "Error type for : "

    const-string v7, "type"

    const-string v8, "VisionWakeUpServiceA"

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "body"

    .line 160
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "people"

    .line 162
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iput v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->failedTimes:I

    .line 165
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeMode(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeToFaceCheck()V

    goto/16 :goto_0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No people detect looping in mode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "No face detect looping in mode : "

    const-string v9, "0"

    const-string v10, "face_number"

    const-string v11, "face"

    const-string v12, "ACTIVE"

    if-eqz v0, :cond_5

    .line 176
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 179
    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 181
    invoke-direct {p0, v12}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->failedTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->failedTimes:I

    .line 185
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->failedTimes:I

    const/16 v0, 0xf

    if-le p1, v0, :cond_a

    .line 186
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeMode(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeToBodyCheck()V

    .line 188
    iput v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->failedTimes:I

    goto/16 :goto_0

    .line 192
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 195
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 197
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 198
    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 200
    iput v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->failedTimes:I

    const-string v0, "lip_movement"

    .line 201
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lipMove = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "AVE. startTalk()."

    .line 205
    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "startTalk"

    const-string v0, "lip_wakeup"

    .line 206
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->callback(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u53e3\u578b\u68c0\u6d4b"

    .line 207
    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeMode(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeToBodyCheck()V

    goto :goto_0

    .line 215
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    const-string v0, "RECOMMEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    .line 219
    :cond_9
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mCurrentMode:Ljava/lang/String;

    const-string v0, "LISTEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_a
    :goto_0
    return-void
.end method


# virtual methods
.method public callbackWrapper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->callback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getServiceTag()Ljava/lang/String;
    .locals 1

    const-string v0, "VisionWakeUpServiceA"

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
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

    const-string v1, "VisionWakeUpServiceA"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "start"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->startVisionWakeupService()V

    goto :goto_0

    :cond_0
    const-string v0, "stop"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->stopVisionWakeup()V

    goto :goto_0

    :cond_1
    const-string v0, "muteState"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "true"

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->stopVisionWakeup()V

    goto :goto_0

    :cond_2
    const-string p1, "false"

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->startVisionWakeupService()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCreate()V

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->startVisionWakeupService()V

    const-string v0, "VisionWakeUpServiceA"

    const-string v1, "onCreate"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onDestroy()V

    const-string v0, "VisionWakeUpServiceA"

    const-string v1, "onDestroy"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSceneModeChanged(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    const-string p2, "video"

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->stopVisionWakeup()V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->startVisionWakeupService()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScreenChanged(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->startVisionWakeupService()V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->stopVisionWakeup()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onWepAppVideoPlayChanged(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startVisionWakeup()V
    .locals 4

    const-string v0, "VisionWakeUpServiceA"

    const-string v1, "startVisionWakeup"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v1, :cond_0

    const-string v2, "enable"

    const-string v3, "GenieWakeUpVEngine"

    .line 146
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeToBodyCheck()V

    const-string v1, "IDLE"

    .line 148
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->changeMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "startVisionWakeup:mVisionWakeUpAveClient = null"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "startVisionWakeup end"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startVisionWakeupService()V
    .locals 2

    const-string v0, "VisionWakeUpServiceA"

    const-string v1, "startVisionWakeupService"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->checkVisionWakeUpSettingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mBlackSceneModeList:Ljava/util/List;

    .line 269
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->getCurrentSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->getMuteState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    const-string v1, "genieWakeUpService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public stopVisionWakeup()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "VisionWakeUpServiceA"

    const-string v1, "stopVisionWakeup"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v2, "disable"

    const-string v3, "GenieWakeUpVEngine"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 115
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpServiceAbandoned;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "stopVisionWakeup ... end"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
