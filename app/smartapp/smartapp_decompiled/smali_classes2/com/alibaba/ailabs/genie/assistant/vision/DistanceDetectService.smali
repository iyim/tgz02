.class public Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;
.super Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.source "DistanceDetectService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "DistanceDetectService"

.field private static defaultEyeCareModePageList:Ljava/lang/String; = null

.field private static final mAdultDesktopActivity:Ljava/lang/String; = "com.alibaba.ailabs.genie.launcher/com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity"

.field private static final mChildDesktopActivity:Ljava/lang/String; = "com.alibaba.ailabs.genie.children/com.alibaba.ailabs.genie.children.activity.HomeActivity"


# instance fields
.field private final EyeCareModePageConfigOrangeIndex:Ljava/lang/String;

.field private lastShowTime:J

.field private mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field mDriveDistanceRunnable:Ljava/lang/Runnable;

.field private mEyeCareModePageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsEngineRunning:Z

.field private mProviderApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

.field mShowDialogRunnable:Ljava/lang/Runnable;

.field private mTriggerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mTriggerCount:I

    const-wide/16 v1, -0x1

    .line 37
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->lastShowTime:J

    .line 44
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mIsEngineRunning:Z

    .line 46
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    const-string v0, "Mo1wlo1muq97"

    .line 95
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->EyeCareModePageConfigOrangeIndex:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mEyeCareModePageList:Ljava/util/List;

    .line 229
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 264
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$3;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mDriveDistanceRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mTriggerCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mTriggerCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)I
    .locals 2

    .line 33
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mTriggerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mTriggerCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->lastShowTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;J)J
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->lastShowTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mIsEngineRunning:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->count()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkEyeCareModeSettingStatus()Z
    .locals 1

    .line 144
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isEyeCareModeOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "checkEyeCareModeSettingStatus: setting open: false"

    .line 145
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private count()V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mProviderApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    const/4 v1, -0x1

    const-string v2, "distanceWarning"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/genie/data/provider/api/ProviderApi;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v3, v0

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mProviderApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/genie/data/provider/api/ProviderApi;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public driveDistanceDetect(Ljava/lang/String;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mEyeCareModePageList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->getWebAppPlayStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->checkEyeCareModeSettingStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->getCurrentScreenState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "start distance detect"

    .line 135
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->startDistanceDetect()Z

    goto :goto_0

    :cond_1
    const-string p1, "stop distance detect"

    .line 138
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->stopDistanceDetect()Z

    :goto_0
    return-void
.end method

.method public fetchEyeCareModePageList()V
    .locals 5

    const-string v0, "video_player_pages.json"

    .line 100
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->defaultEyeCareModePageList:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultEyeCareModePageList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->defaultEyeCareModePageList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "Mo1wlo1muq97"

    .line 102
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eyeCareModePageConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->defaultEyeCareModePageList:Ljava/lang/String;

    .line 108
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mEyeCareModePageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 111
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "pages_name"

    .line 112
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 114
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mEyeCareModePageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mEyeCareModePageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EyeCareModePageList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mEyeCareModePageList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public getServiceTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DistanceDetectService"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 88
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " args = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string p2, "activityChange"

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mDriveDistanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCreate()V

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->fetchEyeCareModePageList()V

    .line 187
    new-instance v0, Lcom/alibaba/genie/data/provider/api/ProviderApi;

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    invoke-direct {v0, p0, v1}, Lcom/alibaba/genie/data/provider/api/ProviderApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mProviderApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mHandler:Landroid/os/Handler;

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    const-string v1, "genieallinone"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mDriveDistanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "start distance detect11"

    .line 191
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onDestroy()V

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->stopDistanceDetect()Z

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->releaseAVEService(Lcom/alibaba/ailabs/avesdk/AVEClient;)V

    const-string v0, "stop distance detect"

    .line 218
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onEventHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 223
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "spm"

    const-string v1, "a1z3lt.b79258703"

    .line 225
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p2, p1, p3}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSceneModeChanged(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScreenChanged(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mDriveDistanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->stopDistanceDetect()Z

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onWepAppVideoPlayChanged(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "start_play"

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "start distance detect"

    .line 175
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mDriveDistanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "stop_play"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->stopDistanceDetect()Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public startDistanceDetect()Z
    .locals 4

    .line 195
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mIsEngineRunning:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v2, "enable"

    const-string v3, "GenieFaceDistanceVEngine"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mIsEngineRunning:Z

    :cond_0
    return v1
.end method

.method public stopDistanceDetect()Z
    .locals 3

    .line 204
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mIsEngineRunning:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "disable"

    const-string v2, "GenieFaceDistanceVEngine"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mIsEngineRunning:Z

    const/4 v0, 0x1

    return v0
.end method
