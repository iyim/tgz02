.class public Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;
.super Landroid/app/Service;
.source "DataCenterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;,
        Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;,
        Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;,
        Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;,
        Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;
    }
.end annotation


# static fields
.field private static final API_FETCH_DND_MODE_INFO:I = 0x10c8e3

.field private static final API_FETCH_DND_MODE_INFO_VERSION:I = 0x10c8e4

.field private static final API_USER_SETTING_ELEM_TTS_CFG_UPLOAD:I = 0x10c8e1

.field private static final API_USER_SETTING_ELEM_WAKEUP_FEEDBACK_CFG_UPLOAD:I = 0x10c8e2

.field public static final DNDMODE_ACTION_BUTTON:Ljava/lang/String; = "actionButton"

.field public static final DNDMODE_ACTION_START:Ljava/lang/String; = "actionStart"

.field public static final DNDMODE_ACTION_VALUE:Ljava/lang/String; = "actionValue"

.field public static final DNDMODE_DND_MODE_VERSION:Ljava/lang/String; = "dndModeVersion"

.field public static final DNDMODE_DSB_EASY_WAKEUP:Ljava/lang/String; = "dsbEasyWakeup"

.field public static final DNDMODE_DSB_MSG_NOTIFY:Ljava/lang/String; = "dsbMsgNotify"

.field public static final DNDMODE_DSB_PHONE_NOTIFY:Ljava/lang/String; = "dsbPhoneNotify"

.field public static final DNDMODE_DSB_QUIET_MSG_REQ:I = 0x186a5

.field public static final DNDMODE_DSB_QUIET_PHONE_REQ:I = 0x186a6

.field public static final DNDMODE_DSB_WAKEUP_SENSITIVITY_REQ:I = 0x186a8

.field public static final DNDMODE_ENABLE:Ljava/lang/String; = "enable"

.field public static final DNDMODE_ENABLE_REQ:I = 0x186a1

.field public static final DNDMODE_END:Ljava/lang/String; = "end"

.field public static final DNDMODE_MIN_DARK_SCREEN:Ljava/lang/String; = "minDarkScreen"

.field public static final DNDMODE_MIN_DARK_SCREEN_REQ:I = 0x186a4

.field public static final DNDMODE_QUIET_WAKEUP_REQ:I = 0x186a7

.field public static final DNDMODE_START:Ljava/lang/String; = "start"

.field public static final DNDMODE_SYSTEMUI_DND_MANUAL_MODE_ENABLE_REQ:I = 0x186a9

.field public static final DNDMODE_TIME_END_REQ:I = 0x186a3

.field public static final DNDMODE_TIME_START_REQ:I = 0x186a2

.field public static final DNDMODE_WAKEUP_SOUND:Ljava/lang/String; = "wakeupSound"

.field public static final EXTRA_TONE_TYPE:Ljava/lang/String; = "tone_type"

.field public static final EXTRA_WAKEUP_FEEDBACK:Ljava/lang/String; = "feedback_type"

.field public static final FETCH_DND_MODE_INFO:Ljava/lang/String; = "fetch_dnd_mode_info"

.field public static final FETCH_DND_MODE_INFO_ONLY:Ljava/lang/String; = "fetch_dnd_mode_info_only"

.field public static final FETCH_MODE_SETTING_INFO:Ljava/lang/String; = "fetch_mode_setting_info"

.field public static final FETCH_TTS_INFO:Ljava/lang/String; = "fetch_tts_info"

.field public static final KEY:Ljava/lang/String; = "data"

.field public static final RETRY_INFO_UPLOAD:Ljava/lang/String; = "retry_info_upload"

.field private static final RETRY_INTERVAL_MINUTE:I = 0xea60

.field private static final RETRY_TYPE_DND_MODE_INFO_UPLOAD:I = 0x1

.field private static final RETRY_TYPE_TTS_UPLOAD:I = 0x2

.field private static final RETRY_TYPE_WAKEUP_FEEDBACK_UPLOAD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DataCenterService"

.field public static final TTS_INFO_CLASS:Ljava/lang/String; = "class"

.field public static final TTS_INFO_ENCODE:Ljava/lang/String; = "encode"

.field public static final TTS_INFO_PITCH:Ljava/lang/String; = "pitch"

.field public static final TTS_INFO_SAMPLERATE:Ljava/lang/String; = "sampleRate"

.field public static final TTS_INFO_SPEECHRATE:Ljava/lang/String; = "speechRate"

.field public static final TTS_INFO_VOICE:Ljava/lang/String; = "voice"

.field public static final TTS_INFO_VOLUME:Ljava/lang/String; = "volume"

.field public static final UI_UPDATE_CALL_QUIET_STATUS:I = 0x20

.field public static final UI_UPDATE_DND_MANUAL_MODE_STATUS:I = 0x1

.field public static final UI_UPDATE_LOW_SENSITIVITY_STATUS:I = 0x40

.field public static final UI_UPDATE_MSG_QUIET_STATUS:I = 0x10

.field public static final UI_UPDATE_SCREEN_OFF_SETTINGS:I = 0x8

.field public static final UI_UPDATE_TCM_MODE_STATUS:I = 0x2

.field public static final UI_UPDATE_TIME_SETTINGS:I = 0x4

.field public static final UPLOAD_DND_MODE_INFO:Ljava/lang/String; = "upload_dnd_mode_info"

.field public static final UPLOAD_MODE_SETTING_INFO:Ljava/lang/String; = "upload_mode_setting_info"

.field public static final UPLOAD_TTS_INFO:Ljava/lang/String; = "upload_tts_info"

.field public static final UPLOAD_WAKEUP_FEEDBACK_INFO:Ljava/lang/String; = "upload_wakeup_feedback_info"

.field public static final URI_CHILD_MODE:Ljava/lang/String; = "content://com.alibaba.ailabs.childmode.provider"

.field public static mSkipFetchDndInfo:Z = false


# instance fields
.field private final FEEDBACK_TYPE_MUSIC:I

.field private final FEEDBACK_TYPE_QUIET:I

.field private final FEEDBACK_TYPE_VOICE:I

.field private final STR_FEEDBACK_TYPE_MUSIC:Ljava/lang/String;

.field private final STR_FEEDBACK_TYPE_QUIET:Ljava/lang/String;

.field private final STR_FEEDBACK_TYPE_VOICE:Ljava/lang/String;

.field private mBroadcastHelper:Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;

.field private mChildModeContentObserver:Landroid/database/ContentObserver;

.field private mCurrentName:Ljava/lang/String;

.field private mDevInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;

.field private mDndManualModeContentObserver:Landroid/database/ContentObserver;

.field private mDndModeInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

.field private mDndModeInfoUpdater:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;

.field private mObserverHelper:Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;

.field private mRetryCount:I

.field private mRetryPendingIntent:Landroid/app/PendingIntent;

.field private mRetryType:I

.field private mTtsListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

.field private mTtsUpdateListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

    .line 68
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsUpdateListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;

    .line 69
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDevInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;

    .line 70
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

    .line 71
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoUpdater:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;

    const/4 v1, 0x1

    .line 98
    iput v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->FEEDBACK_TYPE_VOICE:I

    const/4 v1, 0x2

    .line 99
    iput v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->FEEDBACK_TYPE_MUSIC:I

    const/4 v1, 0x3

    .line 100
    iput v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->FEEDBACK_TYPE_QUIET:I

    const-string v1, "opsSound"

    .line 102
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->STR_FEEDBACK_TYPE_VOICE:Ljava/lang/String;

    const-string v1, "shortSound"

    .line 103
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->STR_FEEDBACK_TYPE_MUSIC:Ljava/lang/String;

    const-string v1, "none"

    .line 104
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->STR_FEEDBACK_TYPE_QUIET:Ljava/lang/String;

    const/4 v1, 0x0

    .line 131
    iput v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    .line 133
    iput v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    .line 137
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryPendingIntent:Landroid/app/PendingIntent;

    .line 758
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndManualModeContentObserver:Landroid/database/ContentObserver;

    .line 886
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$2;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mChildModeContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchTtsInfo()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->startTimer(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->calculateAndSetTryTimer()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->parseDndModeParameters(Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->calculateUpdateIndex(Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->updateDndModeInfo(Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadDndModeInfo(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private declared-synchronized calculateAndSetTryTimer()V
    .locals 4

    monitor-enter p0

    .line 1084
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1085
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    const/16 v0, 0x2710

    .line 1086
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->startTimer(I)V

    goto :goto_0

    .line 1087
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    if-ne v0, v1, :cond_1

    .line 1088
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    const v0, 0xea60

    .line 1089
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->startTimer(I)V

    goto :goto_0

    .line 1090
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const v0, 0x2bf20

    .line 1091
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->startTimer(I)V

    .line 1092
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    goto :goto_0

    .line 1093
    :cond_2
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    const/4 v2, 0x6

    if-ge v0, v2, :cond_3

    const-string v0, "DataCenterService"

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateAndSetTryTimer: reach max retry count, give up one time, mRetryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    .line 1097
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 1098
    iput v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private calculateUpdateIndex(Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I
    .locals 6

    .line 627
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 628
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbEnable(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x1

    const-string v2, "disturb_timed"

    .line 629
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 630
    iget-boolean v2, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 633
    :goto_0
    iget-boolean p1, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    if-eq v0, p1, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object p1

    .line 637
    iget v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    .line 638
    iget v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    .line 639
    iget v3, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    .line 640
    iget v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    .line 642
    iget v5, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    if-ne v0, v5, :cond_2

    iget v0, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    if-ne v2, v0, :cond_2

    iget v0, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    if-ne v3, v0, :cond_2

    iget v0, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    if-eq v4, v0, :cond_3

    :cond_2
    or-int/lit8 v1, v1, 0x4

    .line 646
    :cond_3
    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    .line 647
    iget-boolean v2, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    if-eq v0, v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    .line 649
    :cond_4
    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    .line 650
    iget-boolean v2, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    if-eq v0, v2, :cond_5

    or-int/lit8 v1, v1, 0x10

    .line 652
    :cond_5
    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    .line 653
    iget-boolean v2, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    if-eq v0, v2, :cond_6

    or-int/lit8 v1, v1, 0x20

    .line 655
    :cond_6
    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    .line 656
    iget-boolean p2, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    if-eq p1, p2, :cond_7

    or-int/lit8 v1, v1, 0x40

    .line 658
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateUpdateIndex: index="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataCenterService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private fetchDeviceInfo()V
    .locals 3

    const-string v0, "DataCenterService"

    const-string v1, "try to get device info from server"

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDevInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDevInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;

    :cond_0
    const/4 v0, -0x1

    .line 353
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDevInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getDeviceInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;)V

    return-void
.end method

.method private fetchSettingModeInfo()V
    .locals 2

    const-string v0, "DataCenterService"

    const-string v1, "fetchSettingModeInfo try to update mode setting from server"

    .line 330
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/tts/NetApi;->getSettingInfo(Landroid/content/Context;)V

    return-void
.end method

.method private fetchTtsInfo()V
    .locals 4

    const-string v0, "DataCenterService"

    const-string v1, "try to get tts info from server"

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CHILD"

    goto :goto_0

    :cond_1
    const-string v0, "ADULT"

    :goto_0
    const/4 v1, -0x1

    .line 315
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/tts/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/ailabs/genie/tts/NetApi;->getTtsInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static generateDndModeInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 919
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 920
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object p0

    .line 921
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "actionValue"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndManualModeBtnClick:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "actionButton"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    const-string v2, "actionStart"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object v1

    .line 925
    iget v2, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iget v3, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "start"

    .line 926
    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end"

    .line 927
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "minDarkScreen"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "dsbMsgNotify"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "dsbPhoneNotify"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "dsbEasyWakeup"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget p0, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "dndModeVersion"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "111 generateDndModeInfo: final Json String="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCenterService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getDndModeInfo(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .line 895
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 896
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object p0

    .line 897
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "actionValue"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "actionButton"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 900
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 901
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "actionStart"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iget p1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object p1

    .line 903
    iget v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timeFormat(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    .line 904
    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "end"

    .line 905
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "enable"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "minDarkScreen"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "dsbMsgNotify"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "dsbPhoneNotify"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "dsbEasyWakeup"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iget p0, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "dndModeVersion"

    invoke-virtual {v0, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 913
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateDndModeInfo: final Json String="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataCenterService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private handleRetry()V
    .locals 3

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand:Get info upload retry alarm. mRetryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCenterService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand:Retry TTS="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    and-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; Retry DND="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; Retry WakeupFeedback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    and-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    if-eqz v0, :cond_1

    .line 1164
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No network available, reset Alarm"

    .line 1165
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1d4c0

    .line 1166
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->startTimer(I)V

    goto :goto_0

    .line 1168
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->launchRetry()V

    goto :goto_0

    :cond_1
    const-string v0, "onStartCommand: No upload failure found, do nothing"

    .line 1171
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initBroadcastReceiver(Landroid/content/Context;)V
    .locals 3

    const-string v0, "DataCenterService"

    const-string v1, "registerBroadReceiver"

    .line 1205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.datacenter.FETCH_TTS_INFO"

    .line 1208
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.datacenter.UPLOAD_TTS_INFO"

    .line 1209
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.datacenter.UPLOAD_WAKEUP_FEEDBACK_INFO"

    .line 1210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 1211
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 1212
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 1213
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DND_MODE_ALARM_RECEIVER"

    .line 1214
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 1215
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    .line 1216
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    .line 1217
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 1218
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 1219
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.alibaba.ailabs.genie.datacenter.FETCH_MODE_SETTING_INFO"

    .line 1220
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.alibaba.ailabs.genie.datacenter.UPLOAD_MODE_SETTING_INFO"

    .line 1221
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1224
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1226
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private killTimer()V
    .locals 2

    .line 1128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const-string v0, "DataCenterService"

    const-string v1, "killTimer: Cancel retry timer"

    .line 1129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1131
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 1132
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method private declared-synchronized launchRetry()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DataCenterService"

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchRetry: mRetryType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->generateDndModeInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadDndModeInfo(Ljava/lang/String;)V

    .line 1108
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1109
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadTtsInfoToServer()V

    .line 1111
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryType:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 1112
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadWakeupFeedbackInfoToServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private parseDndModeParameters(Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 582
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->getDndModeVersion()I

    move-result v0

    iput v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    .line 583
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->isActionValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    .line 584
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->isEnable()Z

    move-result v0

    iput-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    .line 585
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->getStart()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->getEnd()Ljava/lang/String;

    move-result-object v1

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get time cycle mode info from server, enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; start time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; end time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenterService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HH:mm"

    .line 588
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 592
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0xc

    const/16 v7, 0xb

    if-nez v5, :cond_0

    .line 595
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 596
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 597
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    .line 598
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    .line 600
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 603
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 604
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    .line 605
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    .line 607
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After parse, tcm info from server, start hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; start min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; end hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; end min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->isMinDarkScreen()Z

    move-result v0

    iput-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    .line 613
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->isDsbMsgNotify()Z

    move-result v0

    iput-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    .line 614
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->isDsbPhoneNotify()Z

    move-result v0

    iput-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    .line 615
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->isDsbEasyWakeup()Z

    move-result v0

    iput-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    const-string v0, "none"

    .line 616
    iput-object v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    .line 617
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->isActionButton()Z

    move-result v0

    iput-boolean v0, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndManualModeBtnClick:Z

    .line 618
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->getActionStart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 619
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->getActionStart()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method private startTimer(I)V
    .locals 6

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimer: Set retry timer, time in minutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v1, p1

    const v2, 0x476a6000    # 60000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCenterService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data"

    const-string v2, "retry_info_upload"

    .line 1120
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 1121
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryPendingIntent:Landroid/app/PendingIntent;

    .line 1122
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mRetryPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private updateDndModeInfo(Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;I)V
    .locals 21

    move-object/from16 v0, p1

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDndModeInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 665
    iget-boolean v3, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    const-string v4, "disturb_enabled"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 666
    iget-boolean v3, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    const-string v4, "disturb_timed"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 667
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 669
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/Global;->setDNDEnable(Z)V

    and-int/lit8 v1, p2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    and-int/lit8 v1, p2, 0x2

    if-eq v1, v3, :cond_1

    and-int/lit8 v1, p2, 0x4

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "updateDndModeSettingsForSystem: DND mode, TCM and Time no change, skip some settings."

    .line 741
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 677
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    const v5, 0xea60

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 678
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    if-eqz v1, :cond_4

    const-string v1, "updateDndModeSettingsForSystem:SCOF:Enable screen off in 1 minute"

    .line 679
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v4}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 683
    :cond_2
    invoke-static {v6}, Lcom/alibaba/ailabs/childmode/Global;->getCacheScreenOffTimeout(I)I

    move-result v1

    if-lez v1, :cond_3

    move v5, v1

    .line 685
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDndModeSettingsForSystem:SCOF:Roll back screen off time to original="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; time in sp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v6}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    :cond_4
    :goto_1
    const-string v1, "updateDndModeSettingsForSystem: Update TCM alarm settings"

    .line 688
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    if-nez v1, :cond_8

    .line 690
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    if-nez v1, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    .line 693
    invoke-direct/range {v7 .. v13}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->updateTcmAlarm(ZIIIII)V

    goto/16 :goto_2

    .line 698
    :cond_5
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iget v5, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    iget v7, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iget v8, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-static {v1, v5, v7, v8}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->beforeOrAfterTimeCycleModePeriod(IIII)I

    move-result v1

    if-ne v1, v3, :cond_6

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 702
    iget v10, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iget v11, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    iget v12, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iget v13, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->updateTcmAlarm(ZIIIII)V

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 706
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iget v3, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    iget v5, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iget v7, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    move-object/from16 v14, p0

    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v7

    invoke-direct/range {v14 .. v20}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->updateTcmAlarm(ZIIIII)V

    goto :goto_2

    :cond_7
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 708
    iget v11, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iget v12, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    iget v13, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iget v14, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->updateTcmAlarm(ZIIIII)V

    goto :goto_2

    .line 712
    :cond_8
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    if-nez v1, :cond_9

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    .line 714
    invoke-direct/range {v7 .. v13}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->updateTcmAlarm(ZIIIII)V

    goto :goto_2

    :cond_9
    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 718
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iget v3, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    iget v5, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iget v7, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    move-object/from16 v14, p0

    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v7

    invoke-direct/range {v14 .. v20}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->updateTcmAlarm(ZIIIII)V

    .line 724
    :goto_2
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    if-eqz v1, :cond_a

    .line 725
    iget v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iget v3, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    iget v5, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iget v7, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-static {v1, v3, v5, v7}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isInTimeCycleModePeriod(IIII)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "updateDndModeSettingsForSystem: TCM enabled and current time is in it"

    .line 726
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_a
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    if-eqz v1, :cond_b

    const-string v1, "updateDndModeSettingsForSystem: DND mode enabled"

    .line 731
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    const-string v1, "updateDndModeSettingsForSystem: DND mode disabled"

    .line 734
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 737
    :goto_3
    invoke-static {v4}, Lcom/alibaba/ailabs/childmode/Global;->setDNDGlableEnable(Z)V

    .line 738
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getDNDGlableEnable()I

    move-result v1

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDndModeSettingsForSystem: After set, DND_GLOBAL_ENABLE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v1, "updateDndModeSettingsForSystem: update properties for advance settings."

    .line 744
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, p2, 0x10

    const/16 v2, 0x10

    const-string v3, "1"

    const-string v4, "0"

    if-ne v1, v2, :cond_d

    .line 748
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    if-eqz v1, :cond_c

    move-object v1, v3

    goto :goto_5

    :cond_c
    move-object v1, v4

    :goto_5
    const-string v2, "persist.sys.message_mute"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_d
    and-int/lit8 v1, p2, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_f

    .line 751
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    if-eqz v1, :cond_e

    move-object v1, v3

    goto :goto_6

    :cond_e
    move-object v1, v4

    :goto_6
    const-string v2, "persist.sys.call_mute"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_f
    const/16 v1, 0x40

    and-int/lit8 v2, p2, 0x40

    if-ne v2, v1, :cond_11

    .line 754
    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    move-object v3, v4

    :goto_7
    const-string v0, "persist.sys.is.low_sensitive"

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_11
    return-void
.end method

.method private updateTcmAlarm(ZIIIII)V
    .locals 5

    .line 1138
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x186a1

    const/16 v3, 0x65

    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x186a2

    const/16 v4, 0x66

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "DataCenterService"

    if-eqz p1, :cond_1

    .line 1142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTcmAlarm: enable TCM Alarm, delay_days="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {p3, p4, p5, p6}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isLastToNextDay(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p1, p2, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    const-string v3, "DataCenterService Update TCM start alarm,"

    .line 1146
    invoke-static {p3, p4, p2, v3}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object p2

    const-string p3, "DataCenterService Update TCM end alarm,"

    .line 1147
    invoke-static {p5, p6, p1, p3}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    .line 1148
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const/4 p4, 0x0

    invoke-virtual {v0, p4, p2, p3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 1149
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {v0, p4, p1, p2, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    const-string p1, "updateTcmAlarm: cancel TCM Alarm"

    .line 1151
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1153
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_1
    return-void
.end method

.method private uploadDndModeInfo(Ljava/lang/String;)V
    .locals 4

    .line 1076
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoUpdater:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;

    if-nez v0, :cond_0

    .line 1077
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoUpdater:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;

    :cond_0
    const/4 v0, -0x1

    .line 1079
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoUpdater:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x186a9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->uploadDndModeInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private uploadDynamicSettingToServer(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1006
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->queryDynamicSettingStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;

    move-result-object v0

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeSettingParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 1009
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "open"

    const-string v3, "close"

    if-eqz p3, :cond_0

    move-object p3, v2

    goto :goto_0

    :cond_0
    move-object p3, v3

    :goto_0
    const-string v4, "camera"

    .line 1010
    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    move-object p3, v2

    goto :goto_1

    :cond_1
    move-object p3, v3

    :goto_1
    const-string p4, "scene"

    .line 1011
    invoke-interface {v1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-boolean p3, v0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    if-eqz p3, :cond_2

    .line 1013
    invoke-static {v2, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 1015
    :cond_2
    invoke-static {v3, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1017
    :goto_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    iget-object p5, v0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->name:Ljava/lang/String;

    :goto_3
    iget-boolean p2, v0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    invoke-direct {p0, p1, p5, p2, p6}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadSettingModeInfo(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method private uploadModeSettingToServer(Landroid/content/Context;Ljava/lang/String;ZZZ)V
    .locals 7

    .line 1023
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getCurrentModeSetting(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;

    move-result-object v0

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeSettingParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_11

    .line 1026
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "visualArousal"

    .line 1027
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "scene"

    const-string v4, "camera"

    const-string v5, "open"

    const-string v6, "close"

    if-eqz v2, :cond_3

    if-eqz p3, :cond_0

    move-object p3, v5

    goto :goto_0

    :cond_0
    move-object p3, v6

    .line 1028
    :goto_0
    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    move-object p3, v5

    goto :goto_1

    :cond_1
    move-object p3, v6

    .line 1029
    :goto_1
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-boolean p3, v0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    if-eqz p3, :cond_2

    .line 1031
    invoke-static {v5, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_9

    .line 1033
    :cond_2
    invoke-static {v6, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_3
    const-string v2, "childFaceRecognize"

    .line 1035
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p3, :cond_4

    move-object p3, v5

    goto :goto_2

    :cond_4
    move-object p3, v6

    .line 1036
    :goto_2
    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_5

    move-object p3, v5

    goto :goto_3

    :cond_5
    move-object p3, v6

    .line 1037
    :goto_3
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_6

    move-object p3, v5

    goto :goto_4

    :cond_6
    move-object p3, v6

    :goto_4
    const-string p4, "password"

    .line 1038
    invoke-interface {v1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    iget-boolean p3, v0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    if-eqz p3, :cond_7

    .line 1040
    invoke-static {v5, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_9

    .line 1042
    :cond_7
    invoke-static {v6, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_9

    :cond_8
    const-string p5, "fullDuplexDialog"

    .line 1044
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c

    if-eqz p3, :cond_9

    move-object p3, v5

    goto :goto_5

    :cond_9
    move-object p3, v6

    .line 1045
    :goto_5
    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_a

    move-object p3, v5

    goto :goto_6

    :cond_a
    move-object p3, v6

    .line 1046
    :goto_6
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-boolean p3, v0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    if-eqz p3, :cond_b

    .line 1048
    invoke-static {v5, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_9

    .line 1050
    :cond_b
    invoke-static {v6, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_9

    :cond_c
    const-string p5, "smartCare"

    .line 1052
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_10

    if-eqz p3, :cond_d

    move-object p3, v5

    goto :goto_7

    :cond_d
    move-object p3, v6

    .line 1053
    :goto_7
    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_e

    move-object p3, v5

    goto :goto_8

    :cond_e
    move-object p3, v6

    .line 1054
    :goto_8
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget-boolean p3, v0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    if-eqz p3, :cond_f

    .line 1056
    invoke-static {v5, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_9

    .line 1058
    :cond_f
    invoke-static {v6, p2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1061
    :cond_10
    :goto_9
    iget-object p2, v0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->name:Ljava/lang/String;

    iget-boolean p3, v0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadSettingModeInfo(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_11
    return-void
.end method

.method private uploadSettingModeInfo(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try to update mode setting from server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCenterService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {p1, p3, p2, p4}, Lcom/alibaba/ailabs/genie/tts/NetApi;->uploadSettingInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uploadTtsInfo(J)V
    .locals 7

    const-string v0, "DataCenterService"

    const-string v1, "try to upload tts info to server"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsUpdateListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsUpdateListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CHILD"

    goto :goto_0

    :cond_1
    const-string v0, "ADULT"

    :goto_0
    move-object v6, v0

    const v1, 0x10c8e1

    .line 326
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsUpdateListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/tts/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/tts/NetApi;->uploadTtsInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private uploadTtsInfoToLocal(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "tone_type"

    .line 977
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 980
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 981
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->updateCurrentTTS(Landroid/content/Context;J)I

    .line 982
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getCurrentTTS(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 984
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->voiceTemplateId:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/SystemPropertiesUtil;->setTTSToneProp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 988
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPLOAD_TTS_INFO failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataCenterService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private uploadTtsInfoToServer()V
    .locals 3

    .line 996
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getCurrentTTS(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadTtsInfoToServer:Get current tts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-wide v0, v0, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->voiceTypeId:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadTtsInfo(J)V

    :cond_0
    return-void
.end method

.method private uploadWakeupFeedbackInfo(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "DataCenterService"

    const-string v1, "try to upload wakeup feedback info to server"

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsUpdateListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsUpdateListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;

    :cond_0
    const v1, 0x10c8e2

    .line 344
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mTtsUpdateListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "wakeupStyle"

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->uploadTtsInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private uploadWakeupFeedbackInfoToServer()V
    .locals 3

    .line 1067
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDeviceInfoDataCenter(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;

    move-result-object v0

    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadWakeupFeedbackInfoToServer: mWakeupFeedback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1070
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1072
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadWakeupFeedbackInfo(Ljava/lang/String;I)V

    return-void
.end method

.method private uploadWakeupFeedbackInfoToServer(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "feedback_type"

    const/4 v1, -0x1

    .line 1177
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "none"

    goto :goto_0

    :cond_1
    const-string p1, "shortSound"

    goto :goto_0

    :cond_2
    const-string p1, "opsSound"

    .line 1191
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand:Gonna upload new wakeup feedback type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 1194
    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;-><init>(Z)V

    .line 1195
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    .line 1196
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->updateDeviceInfoToDB(Landroid/content/Context;Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;Z)I

    .line 1197
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "value"

    .line 1198
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1200
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadWakeupFeedbackInfo(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public fetchDoNotDisturbModeInfo()V
    .locals 4

    const-string v0, "DataCenterService"

    const-string v1, "fetchDoNotDisturbModeInfo try to get DND mode info from server"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

    :cond_0
    const v0, 0x10c8e3

    .line 495
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getDndModeInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized fetchDoNotDisturbModeVersionInfoOnly()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "DataCenterService"

    const-string v1, "fetchDoNotDisturbModeVersionInfoOnly try to get DND mode version info from server"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

    :cond_0
    const v0, 0x10c8e4

    .line 505
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndModeInfoListener:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;->getDndModeInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 6

    const-string v0, "DataCenterService"

    const-string v1, "onCreate invoke"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 204
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->show(Z)V

    .line 205
    new-instance v1, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mObserverHelper:Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;

    .line 206
    new-instance v1, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mBroadcastHelper:Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndManualModeContentObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "Force to trigger onChange for mDndManualModeContentObserver to check data changes"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndManualModeContentObserver:Landroid/database/ContentObserver;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.alibaba.ailabs.childmode.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mChildModeContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mObserverHelper:Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->register()V

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mBroadcastHelper:Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;->registerBroadcast()V

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->initBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DataCenterService"

    const-string v1, "onDestroy invoke"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndManualModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mDndManualModeContentObserver:Landroid/database/ContentObserver;

    .line 303
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mObserverHelper:Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->unRegister()V

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mBroadcastHelper:Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;->unRegisterBroadcast()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStartCommand invoke, intent="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DataCenterService"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string v0, "data"

    .line 236
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 237
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mCurrentName:Ljava/lang/String;

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand data= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    return p2

    :cond_1
    const-string v2, "fetch_tts_info"

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchTtsInfo()V

    .line 247
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchDeviceInfo()V

    .line 248
    sget-boolean p1, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mSkipFetchDndInfo:Z

    if-eqz p1, :cond_2

    const-string p1, "Skip fetch DND mode info due to DND mode changes when boot up"

    .line 249
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sput-boolean v3, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->mSkipFetchDndInfo:Z

    goto/16 :goto_1

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchDoNotDisturbModeInfo()V

    goto/16 :goto_1

    :cond_3
    const-string v2, "fetch_dnd_mode_info"

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchDoNotDisturbModeInfo()V

    goto/16 :goto_1

    :cond_4
    const-string v2, "upload_dnd_mode_info"

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, " UPLOAD_DND_MODE_INFO"

    .line 257
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->generateDndModeInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadDndModeInfo(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "upload_wakeup_feedback_info"

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 260
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadWakeupFeedbackInfoToServer(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "upload_tts_info"

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "UPLOAD_TTS_INFO"

    .line 262
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadTtsInfoToLocal(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 265
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadTtsInfoToServer()V

    goto/16 :goto_1

    :cond_7
    const-string v2, "retry_info_upload"

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 268
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->handleRetry()V

    goto/16 :goto_1

    :cond_8
    const-string v2, "fetch_dnd_mode_info_only"

    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchDoNotDisturbModeVersionInfoOnly()V

    goto/16 :goto_1

    :cond_9
    const-string v2, "upload_mode_setting_info"

    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 272
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera"

    .line 273
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "scene"

    .line 274
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "password"

    .line 275
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v4, "dynamic"

    .line 277
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "upload_key"

    .line 280
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "upload_value_key"

    .line 281
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 282
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v4, p0

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadDynamicSettingToServer(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v4, p0

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->uploadModeSettingToServer(Landroid/content/Context;Ljava/lang/String;ZZZ)V

    .line 286
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "methodName="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " camera="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " scene="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " password="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    const-string p1, "fetch_mode_setting_info"

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 289
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchSettingModeInfo()V

    :cond_c
    :goto_1
    return p2
.end method
