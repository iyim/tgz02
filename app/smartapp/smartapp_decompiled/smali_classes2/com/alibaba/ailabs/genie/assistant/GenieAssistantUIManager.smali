.class public Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;
.super Ljava/lang/Object;
.source "GenieAssistantUIManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;
.implements Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;
.implements Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;
.implements Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;
.implements Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;
.implements Lcom/alibaba/ailabs/geniesdk/nlp/ICorpusTrainManager;
.implements Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;


# static fields
.field public static final BIND_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.BINDUSER"

.field public static final CHILD_MODE_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.childmode.provider/childMode"

.field public static final CONVERSATION_INFO_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/conversation_recognize"

.field public static final CONVERSATION_STATUS:Ljava/lang/String; = "conversation_status"

.field private static final DND_MODE_ENABLE:Ljava/lang/String; = "enable"

.field public static final DND_MODE_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

.field private static final DURATION_ANIMATION_START_ASR_DELAY:I = 0x3e8

.field private static final DURATION_BIND_USER:I = 0x7d0

.field private static final DURATION_CHECK_IME_SHOW:I = 0x3e8

.field private static final DURATION_HIDE_UI:I = 0x3e8

.field private static final DURATION_SESSION_END:I = 0x7d0

.field private static final DURATION_SESSION_END_BY_COMMAND:I = 0x3e8

.field private static final DURATION_SESSION_END_BY_FULL_DUPLEX:I = 0xdac

.field private static final DURATION_UPDATE_START_TIMES:I = 0x3e8

.field private static final DURATION_WAKE_LOCK_TIMEOUT_LONGRECORD:I = 0x493e0

.field private static final DURATION_WAKE_LOCK_TIMEOUT_SESSION:I = 0xafc8

.field private static final DURATION_WAKE_LOCK_TIMEOUT_TTS:I = 0x11170

.field private static final MESSAGE_ANIMATION_ASR_STOP:I = 0x271f

.field private static final MESSAGE_ANIMATION_START_ASR:I = 0x2715

.field private static final MESSAGE_BIND_USER:I = 0x2716

.field private static final MESSAGE_CALL_STATUS_UPDATE:I = 0x271d

.field private static final MESSAGE_CHECK_IME_SHOW:I = 0x2711

.field private static final MESSAGE_FOCUS_CHANGE:I = 0x2717

.field private static final MESSAGE_HIDE_MAINBG:I = 0x271e

.field private static final MESSAGE_HIDE_UI:I = 0x2714

.field private static final MESSAGE_SESSION_END:I = 0x2718

.field private static final MESSAGE_UPDATE_SATRT_TIME:I = 0x271c

.field private static final MESSAGE_WAKE_LOCK_TIMEOUT:I = 0x271b

.field public static final ONLINE_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.ONLINE"

.field public static final ONLINE_STATUS_KEY:Ljava/lang/String; = "gw_online_status"

.field public static final PLAY_STATUS_COMPLETE:I = 0xc

.field public static final PLAY_STATUS_FAIL:I = 0x3

.field public static final PLAY_STATUS_FINISH:I = 0x1

.field public static final PLAY_STATUS_INTERRUPT:I = 0xb

.field public static final PLAY_STATUS_PAUSE:I = 0xa

.field public static final PLAY_STATUS_PLAYING:I = 0x0

.field public static final PLAY_STATUS_PREPARED:I = 0xd

.field public static final PLAY_STATUS_STOP:I = 0x8

.field public static final SCREEN_SAVER_START:I = 0x1

.field public static final SCREEN_SAVER_STOP:I = 0x0

.field private static final SESSION_FLAG_EXTERNAL:I = 0x4

.field private static final SESSION_FLAG_INNER:I = 0x3

.field private static final SESSION_FLAG_NORMAL:I = 0x1

.field private static final SESSION_FLAG_PUSH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GenieAssistantUIManager"

.field public static final UNBIND_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

.field private static final VTAG:Ljava/lang/String; = "vision-wakeup"


# instance fields
.field private clickTimes:I

.field conn:Landroid/content/ServiceConnection;

.field private currentIMEShow:Z

.field private currentTopActivity:Ljava/lang/String;

.field private genieStatusBeforeIMEShow:Z

.field private hasFocus:Z

.field private lastClickTime:J

.field private lastPackageAndActivityName:Ljava/lang/String;

.field private mAVEManagerService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

.field private mCallStatus:I

.field private mChildContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCorpus:Ljava/lang/String;

.field private mCurrentTid:I

.field private mDndContentObserver:Landroid/database/ContentObserver;

.field private mFullDuplexBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFullDuplexBlackListOrangeKey:Ljava/lang/String;

.field private mFullDuplexDialogEnabled:Z

.field private mFullDuplexDialogEnabledObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mInFullDuplexDialogMode:Z

.field private mIsRecording:Z

.field private mLastVisionWakeUpTextShowTime:J

.field private mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

.field private mVisionClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

.field private mWakeUpType:I

.field private mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

.field private muteState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->genieStatusBeforeIMEShow:Z

    .line 189
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->currentIMEShow:Z

    const-string v1, ""

    .line 195
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastPackageAndActivityName:Ljava/lang/String;

    .line 198
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->muteState:Z

    .line 201
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->hasFocus:Z

    const-wide/16 v2, 0x0

    .line 203
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastClickTime:J

    .line 205
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeUpType:I

    .line 206
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mLastVisionWakeUpTextShowTime:J

    .line 207
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCurrentTid:I

    .line 211
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mInFullDuplexDialogMode:Z

    .line 212
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabled:Z

    .line 214
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabledObserver:Landroid/database/ContentObserver;

    const-string v2, "Mo1wlo1muq97"

    .line 226
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexBlackListOrangeKey:Ljava/lang/String;

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexBlackList:Ljava/util/List;

    .line 232
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->clickTimes:I

    .line 237
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCallStatus:I

    .line 243
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mIsRecording:Z

    .line 245
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 351
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mAVEManagerService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    .line 353
    new-instance v3, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$3;-><init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->conn:Landroid/content/ServiceConnection;

    .line 532
    new-instance v3, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$6;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$6;-><init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mDndContentObserver:Landroid/database/ContentObserver;

    .line 545
    new-instance v3, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$7;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$7;-><init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mChildContentObserver:Landroid/database/ContentObserver;

    .line 745
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->currentTopActivity:Ljava/lang/String;

    .line 398
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    .line 399
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 400
    new-instance v1, Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const-string v3, "agis"

    invoke-direct {v1, v3}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    .line 401
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->initial(Landroid/content/Context;)V

    .line 402
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    new-instance v3, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$4;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$4;-><init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->setGenieBallClickListener(Lcom/alibaba/ailabs/genie/client/GenieUiClient$OnClickListener;)V

    .line 412
    new-instance v1, Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const-string v3, "visionWakeUp"

    invoke-direct {v1, v3}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mVisionClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    .line 413
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mVisionClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->initial(Landroid/content/Context;)V

    .line 415
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->initListener()V

    .line 416
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->initAVEManagerService()V

    .line 417
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/16 v3, 0x2711

    const-wide/16 v4, 0x3e8

    .line 418
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 420
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isOnLine()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {p0, v0, v2, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->onNotify(ILjava/lang/Object;II)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p0, v0, v2, v0, v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->onNotify(ILjava/lang/Object;II)V

    :goto_0
    const-string v0, "content://com.android.settings.SettingsProvider.voiceprint/conversation_recognize"

    .line 425
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 426
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 427
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->fullDuplexDialogEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabled:Z

    .line 429
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Device;->isMuteState(Landroid/content/Context;)Z

    move-result v0

    .line 430
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->updateMuteState(Z)V

    .line 431
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->initRomStatusReceiver()V

    .line 432
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->registerChildAndDndMode()V

    .line 435
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->syncFullDuplexBlackList()V

    .line 436
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexBlackListOrangeKey:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$5;-><init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->regsiterOrangeCallback(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->fullDuplexDialogEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->closeScreenSaver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Lcom/alibaba/ailabs/genie/client/GenieUiClient;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mVisionClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mLastVisionWakeUpTextShowTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;J)J
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mLastVisionWakeUpTextShowTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->onBallClick()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->onBgClick()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->syncFullDuplexBlackList()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mInFullDuplexDialogMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->checkIMEShow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Landroid/os/Handler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$602(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->hasFocus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Lcom/alibaba/ailabs/genie/client/GenieUiClient;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mAVEManagerService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p0
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mAVEManagerService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCallStatus:I

    return p0
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCallStatus:I

    return p1
.end method

.method private checkDisableFunction(I)Z
    .locals 2

    const-string v0, "persist.cmcc.user.disable"

    const-string v1, "0"

    .line 607
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 606
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 611
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->exitSession(I)V

    .line 612
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ArtcProviderUtils;->getTips(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 613
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;-><init>()V

    .line 615
    iput-object p1, v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->text:Ljava/lang/String;

    .line 616
    iput-boolean v1, v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->isOpenMic:Z

    .line 617
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->playTts(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;)I

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play tts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenieAssistantUIManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private checkIMEShow()Z
    .locals 2

    .line 1162
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->isIMEShow()Z

    move-result v0

    .line 1163
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->currentIMEShow:Z

    if-eq v1, v0, :cond_1

    .line 1164
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->currentIMEShow:Z

    .line 1165
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->currentIMEShow:Z

    if-eqz v1, :cond_0

    .line 1166
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->enterIMEShow()V

    goto :goto_0

    .line 1168
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->enterIMEHide()V

    :cond_1
    :goto_0
    return v0
.end method

.method private closeScreenSaver()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string v1, "cancelsleep"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private enterIMEHide()V
    .locals 1

    .line 1184
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->genieStatusBeforeIMEShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1185
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->showUi(Z)V

    const/4 v0, 0x0

    .line 1186
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->genieStatusBeforeIMEShow:Z

    :cond_0
    return-void
.end method

.method private enterIMEShow()V
    .locals 2

    .line 1175
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->isUiShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->hideUi(Z)V

    const/4 v0, 0x1

    .line 1177
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->genieStatusBeforeIMEShow:Z

    goto :goto_0

    .line 1179
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->genieStatusBeforeIMEShow:Z

    :goto_0
    return-void
.end method

.method private exitBluetoothMode(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    :cond_0
    :try_start_0
    const-string p1, "com.alibaba.ailabs.genie.gms"

    .line 1297
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.alibaba.ailabs.genie.commonplayer"

    .line 1298
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.alibaba.ailabs.genie.musicplayer"

    .line 1299
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.youku.iot"

    .line 1300
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.youkuchild.android"

    .line 1301
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1302
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    move-result-object p1

    .line 1303
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->isConnect()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->isNeedDisconnect()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1304
    sget p2, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->bluetooths_tip:I

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/ToastUtils;->showShort(I)V

    const/4 p2, 0x0

    .line 1305
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->closeDiscoverableTimeout(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1310
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private forceShowGenieAssistantBar()V
    .locals 3

    const-string v0, "GenieAssistantUIManager"

    const-string v1, "forceShowGenieAssistantBar."

    .line 1051
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/16 v2, 0x2714

    .line 1053
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getCurrentScene()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desktop"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "forceShowGenieAssistantBar. disable."

    .line 1056
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const/high16 v1, 0x1000000

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->disable(Landroid/content/Context;I)V

    goto :goto_0

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->disable(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private fullDuplexDialogEnabled()Z
    .locals 10

    const-string v0, "GenieAssistantUIManager"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "content://com.android.settings.SettingsProvider.voiceprint/conversation_recognize"

    .line 1405
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1406
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 1407
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "conversation_status"

    .line 1408
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    .line 1414
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v4

    const/4 v3, 0x0

    .line 1411
    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNatureConversationEnable: Exception caught! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1417
    :cond_1
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNatureConversationEnable: get state"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne v3, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :goto_4
    if-eqz v2, :cond_3

    .line 1414
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static getDoNotDisturbModeStatus(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    .line 504
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 505
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 506
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "enable"

    .line 508
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 510
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v3, "GenieAssistantUIManager"

    if-lez v2, :cond_1

    .line 511
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found dnd mode enable info in DB, number="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query DND mode enable status, enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "NO dnd mode info found in datacenter! return false"

    .line 519
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object p0, v0

    .line 524
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 526
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 527
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catchall_1
    move-exception v1

    .line 526
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 527
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method private hideIME()V
    .locals 4

    .line 1148
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->isIMEShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v0, "GenieAssistantUIManager"

    const-string v1, "hideIME. toggleSoftInput."

    .line 1150
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "input keyevent 4"

    .line 1154
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when hideIme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private initListener()V
    .locals 1

    .line 1117
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->getInstance()Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    .line 1120
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->setActivityChangeListener(Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;)V

    .line 1121
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->setPackageChangeListener(Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IPackageChangeListener;)V

    .line 1122
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->setWindowChangeListener(Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IWindowChangeListener;)V

    .line 1123
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;->setTouchEventListener(Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/ITouchEventListener;)V

    .line 1125
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->setScreenListener(Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;)V

    return-void
.end method

.method private initRomStatusReceiver()V
    .locals 3

    .line 557
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 558
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 559
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 560
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 561
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 562
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/rom/RomStatusReceiver;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/assistant/rom/RomStatusReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isIMEShow()Z
    .locals 5

    .line 1133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 1134
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 1136
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInputMethodWindowVisibleHeight"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1138
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isNeedShow()Z
    .locals 4

    const/4 v0, 0x1

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 572
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static messageDescription(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 1449
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "MESSAGE_CALL_STATUS_UPDATE"

    return-object p0

    :pswitch_2
    const-string p0, "MESSAGE_UPDATE_SATRT_TIME"

    return-object p0

    :pswitch_3
    const-string p0, "MESSAGE_WAKE_LOCK_TIMEOUT"

    return-object p0

    :pswitch_4
    const-string p0, "MESSAGE_SESSION_END "

    return-object p0

    :pswitch_5
    const-string p0, "MESSAGE_FOCUS_CHANGE"

    return-object p0

    :pswitch_6
    const-string p0, "MESSAGE_BIND_USER"

    return-object p0

    :pswitch_7
    const-string p0, "MESSAGE_ANIMATION_START_ASR"

    return-object p0

    :pswitch_8
    const-string p0, "MESSAGE_HIDE_UI"

    return-object p0

    :pswitch_9
    const-string p0, "MESSAGE_CHECK_IME_SHOW"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onBallClick()V
    .locals 6

    .line 309
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->muteState:Z

    if-eqz v0, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    const-string v4, "GenieAssistantUIManager"

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    .line 314
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->clickTimes:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const-string v0, "TouchTalk start:clickTimes>2 in 1 second"

    .line 315
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 319
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->clickTimes:I

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastClickTime:J

    .line 322
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12020898"

    .line 323
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "genie_click"

    const-string v2, "desktop_adult"

    .line 324
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 325
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->clickTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->clickTimes:I

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchTalk start:clickTimes ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->clickTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;-><init>()V

    const/16 v1, 0x8

    .line 330
    iput v1, v0, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->type:I

    .line 331
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->startTalk(ILcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;)Z

    return-void
.end method

.method private onBgClick()V
    .locals 4

    .line 335
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->hasFocus:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GenieAssistantUIManager"

    const-string v1, "TouchTalk:cancel"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mIsRecording:Z

    .line 340
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->exitSession(I)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x2715

    .line 342
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2718

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 346
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spm"

    const-string v2, "a1z3lt.12020898"

    .line 347
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "genie_click_cancel"

    const-string v2, "desktop_adult"

    .line 348
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private registerChildAndDndMode()V
    .locals 5

    const/4 v0, 0x0

    .line 478
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.alibaba.ailabs.childmode.provider/childMode"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mChildContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 479
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mDndContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 481
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->isChildMode(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 488
    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    .line 490
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->getDoNotDisturbModeStatus(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x2

    .line 491
    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private syncFullDuplexBlackList()V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexBlackListOrangeKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get fullDuplex blackList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenieAssistantUIManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "pages_name"

    .line 455
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexBlackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 457
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 458
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 459
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexBlackList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexBlackList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 464
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private wakeupProcess(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 579
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->getWakeupType(I)I

    move-result v0

    const-string v1, "GenieAssistantUIManager"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string p1, "shortcut not need bring up"

    .line 580
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 584
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string v2, "cancelsleep"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 587
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->getInstace()Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->setScreenAlwaysOn(Z)V

    .line 588
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x271b

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->getWakeupType(I)I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    .line 590
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0x493e0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 592
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xafc8

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 594
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getScreenBrightness(Landroid/content/Context;)I

    move-result p1

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenBrightness=   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-gt p1, v0, :cond_3

    const/16 p1, 0x19

    .line 597
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->saveScreenBrightness(ILandroid/content/Context;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public fullDuplexCurPageInBlackList()Z
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexBlackList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastPackageAndActivityName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCurrentActivityInBlackList: current activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastPackageAndActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenieAssistantUIManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public hideUi(Z)V
    .locals 4

    .line 785
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getTalkStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 787
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideUi. isSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ";isThird: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ";listenMode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isListenMode()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GenieAssistantUIManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->hideUI(Z)V

    return-void
.end method

.method public initAVEManagerService()V
    .locals 4

    .line 393
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public isUiShowing()Z
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->isUiShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityChange(Ljava/lang/String;)V
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->onActivityChange(Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->onActivityChange(Ljava/lang/String;)V

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityChange, packageAndActivityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; current top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->currentTopActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->hasFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listenMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isListenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    .line 1196
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastPackageAndActivityName:Ljava/lang/String;

    .line 1199
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastPackageAndActivityName:Ljava/lang/String;

    .line 1200
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastPackageAndActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->fullDuplexDialogPageChangeToBlackList(Ljava/lang/String;)V

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 1204
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->handleWakeupWords(ILjava/lang/String;)V

    .line 1206
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->getThirdAppMonitor()Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->onActivityChange(Ljava/lang/String;)V

    return-void
.end method

.method public onNotify(ILjava/lang/Object;II)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "WrongConstant"
        }
    .end annotation

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotify. type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->NotifyTypeDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->ttsStatusDescription(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; arg2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 843
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "null"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GenieAssistantUIManager"

    .line 841
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x1000000

    if-eqz p1, :cond_1d

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v3, :cond_19

    const/4 v7, 0x6

    const/4 v8, 0x3

    const-string v9, ""

    const/16 v10, 0x2718

    if-eq p1, v1, :cond_13

    const/16 v1, 0x16

    if-eq p1, v1, :cond_12

    const/16 v1, 0x3f3

    if-eq p1, v1, :cond_f

    const/16 p4, 0x44d

    if-eq p1, p4, :cond_1e

    if-eq p1, v7, :cond_d

    const/4 p4, 0x7

    if-eq p1, p4, :cond_9

    const/16 p2, 0xf

    if-eq p1, p2, :cond_8

    const/16 p2, 0x10

    if-eq p1, p2, :cond_7

    const/16 p2, 0x271d

    if-eq p1, p2, :cond_5

    const/16 p2, 0x271e

    if-eq p1, p2, :cond_3

    goto/16 :goto_7

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 942
    :goto_3
    invoke-virtual {p0, v5}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->updateMuteState(Z)V

    goto/16 :goto_7

    .line 1024
    :cond_5
    iput p3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCallStatus:I

    .line 1025
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCallStatus:I

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->updateCallStatus(I)V

    if-nez p3, :cond_6

    .line 1027
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_7

    .line 1029
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 946
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->cleanMuteStatus(Landroid/content/Context;)V

    goto/16 :goto_7

    .line 938
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->onBlueStatusChange(I)V

    goto/16 :goto_7

    :cond_9
    if-nez p2, :cond_a

    goto :goto_4

    .line 862
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 863
    :goto_4
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->setQrcode(Ljava/lang/String;)V

    const-string p1, "block"

    .line 864
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 865
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 866
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->enableGesture(Z)V

    .line 867
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->showBindUI(Ljava/lang/String;)V

    goto :goto_5

    .line 870
    :cond_b
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->enableGesture(Z)V

    .line 871
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->showBindUI(Ljava/lang/String;)V

    .line 873
    :cond_c
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NOTIFY_QRCODE_MESSAGE = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_d
    const/16 p1, 0x20

    if-nez p3, :cond_e

    .line 878
    invoke-static {v8}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKeyNow(I)V

    .line 879
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 881
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 882
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->enableGesture(Z)V

    .line 883
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 884
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->showBindUI(Ljava/lang/String;)V

    .line 885
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x2716

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 886
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const-wide/16 p3, 0x7d0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 887
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->cleanAllPlayer(Landroid/content/Context;Z)V

    goto/16 :goto_7

    .line 889
    :cond_e
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 891
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 893
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_7

    .line 993
    :cond_f
    iput p4, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCurrentTid:I

    if-eq p3, v5, :cond_11

    if-eq p3, v8, :cond_10

    if-eq p3, v3, :cond_10

    goto/16 :goto_7

    :cond_10
    if-nez p4, :cond_1e

    .line 998
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;-><init>()V

    .line 999
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setWrittenText(Ljava/lang/String;)V

    const-string p2, "onNotify. NOTIFY_TTS_PLAY_TXT. showUi."

    .line 1002
    invoke-static {v2, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v9}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    .line 1005
    invoke-virtual {p0, v6, p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->onRecognizeResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;)V

    goto/16 :goto_7

    :cond_11
    if-eqz p4, :cond_1e

    .line 1010
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1020
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->exitBluetoothMode(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_13
    const/16 p1, 0x271b

    if-eqz p3, :cond_15

    if-eq p3, v5, :cond_14

    if-eq p3, v8, :cond_14

    const/16 p2, 0x8

    if-eq p3, p2, :cond_14

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_7

    .line 978
    :cond_14
    :pswitch_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 979
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->getInstace()Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->setScreenAlwaysOn(Z)V

    .line 980
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mInFullDuplexDialogMode:Z

    if-nez p1, :cond_1e

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mIsRecording:Z

    if-nez p1, :cond_1e

    const-string p1, "onNotify. NOTIFY_TTS_STATUS. MESSAGE_SESSION_END."

    .line 982
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 985
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 953
    :cond_15
    :pswitch_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_16

    .line 955
    invoke-virtual {p2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 957
    :cond_16
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 958
    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 959
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->getInstace()Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->setScreenAlwaysOn(Z)V

    .line 960
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v0, 0x11170

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 963
    :cond_17
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCurrentTid:I

    if-eq p1, p4, :cond_1e

    .line 965
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabled:Z

    if-eqz p1, :cond_18

    .line 966
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {p1, v7, v9}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    .line 967
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {p1, v9}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->updateASRText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 969
    :cond_18
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v9}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 898
    :cond_19
    move-object p1, p2

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;

    .line 900
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getType()I

    move-result p2

    const/16 p4, 0x7d0

    if-ne p2, p4, :cond_1a

    .line 901
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getWrittenText()Ljava/lang/String;

    move-result-object p1

    .line 902
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1e

    .line 903
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 906
    :cond_1a
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getPreOnResultScreenMode()Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 911
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getExtraData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;

    if-eqz p2, :cond_1b

    .line 912
    iget-object p4, p2, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;->commandInfo:Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;

    if-eqz p4, :cond_1b

    .line 913
    iget-object p2, p2, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;->commandInfo:Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;

    .line 914
    iget-object v4, p2, Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;->commandDomain:Ljava/lang/String;

    .line 915
    iget-object p4, p2, Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;->command:Ljava/lang/String;

    .line 916
    iget-object p2, p2, Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;->commandParams:Lorg/json/JSONObject;

    move-object v5, p2

    move-object v3, v4

    move-object v4, p4

    goto :goto_6

    :cond_1b
    move-object v3, v4

    move-object v5, v3

    :goto_6
    move v1, p3

    move-object v2, p1

    .line 918
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;->preOnNLPResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    :cond_1c
    if-eqz p1, :cond_1e

    .line 920
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getWrittenText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1e

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getSpokenText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 921
    invoke-virtual {p0, v6}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->showUi(Z)V

    .line 932
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->onRecognizeResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;)V

    goto :goto_7

    .line 846
    :cond_1d
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 847
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "com.alibaba.ailabs.genie.assistant.ONLINE"

    .line 848
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "gw_online_status"

    .line 849
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 854
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->maybeInit(Landroid/content/Context;)V

    const-string p1, "core router orange config maybeInit"

    .line 855
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 857
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1e
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPackageChange(Ljava/lang/String;)V
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->notifyChangeByApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onPretreatedResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 7

    .line 798
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onPretreatedResult session:"

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "; domain:"

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ", command:"

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p6, "GenieAssistantUIManager"

    invoke-static {p6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Back"

    .line 800
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    .line 801
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string p2, "return"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string p2, "CancelSleep"

    .line 803
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 804
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string p2, "cancelsleep"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string p2, "GoToDesktop"

    .line 806
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 807
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string p2, "home"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string p2, "SetBrightness"

    .line 809
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p5, :cond_8

    :try_start_0
    const-string p1, "value"

    const/4 p2, -0x1

    .line 812
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_8

    .line 814
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->saveScreenBrightness(ILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 817
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p2, "UnlitScreen"

    .line 821
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 822
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const-string p2, "screen_off"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p2, "Reboot"

    .line 824
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 825
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->rebootDevice(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    const-string p2, "Standby"

    .line 827
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "ShutDown"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 828
    :cond_7
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getPreOnResultScreenMode()Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 830
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;->preOnNLPResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    .line 834
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPretreatedResult, return:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/protocol/ReturnCode;->description(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onRecognizeResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;)V
    .locals 4

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecognizeResult. sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenieAssistantUIManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 709
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mIsRecording:Z

    .line 710
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string p1, "onRecognizeResult. mHandler empty"

    .line 711
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0x271b

    .line 715
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->getInstace()Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->setScreenAlwaysOn(Z)V

    .line 717
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabled:Z

    if-eqz v1, :cond_2

    .line 721
    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getWakeupType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mInFullDuplexDialogMode:Z

    goto :goto_0

    .line 723
    :cond_2
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mInFullDuplexDialogMode:Z

    .line 725
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2715

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2718

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->queryMakeSense()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 729
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mAVEManagerService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    const-string v2, "queryMakeSense"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getRetCode()I

    move-result p1

    .line 732
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecognizeResult. retCode: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ReturnCode;->description(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", in full duplex dialog mode:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mInFullDuplexDialogMode:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; mFullDuplexDialogEnabled:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabled:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    goto :goto_1

    .line 742
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 735
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mInFullDuplexDialogMode:Z

    if-nez p1, :cond_6

    .line 736
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void
.end method

.method public onRecordStart(I)V
    .locals 6

    .line 625
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->getWakeupType(I)I

    move-result v0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordStart: session id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wakeup type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenieAssistantUIManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->checkDisableFunction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "onRecordStart: disabled by carrier custom machine"

    .line 628
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2715

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2718

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    .line 634
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->hasFocus:Z

    .line 635
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mIsRecording:Z

    .line 636
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->collapsingNotification(Landroid/content/Context;)V

    .line 637
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->wakeupProcess(I)V

    .line 638
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mAVEManagerService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    const-string v2, ""

    if-eqz p1, :cond_1

    const-string v3, "stop"

    .line 639
    invoke-virtual {p1, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x4

    if-ne v0, p1, :cond_2

    return-void

    .line 646
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->forceShowGenieAssistantBar()V

    .line 648
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->hideIME()V

    .line 650
    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 652
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->setWakeupRecommendEnable(Z)V

    .line 653
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    goto :goto_1

    .line 657
    :cond_3
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    if-eqz v0, :cond_5

    const/16 v5, 0x8

    if-eq v0, v5, :cond_5

    const/4 v5, 0x7

    if-ne v0, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->setWakeupRecommendEnable(Z)V

    .line 658
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {v0, p1, v2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    .line 660
    :goto_1
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeUpType:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    .line 661
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const-wide/16 v0, 0x7d0

    const-string v2, "\u5df2\u6325\u624b\u5524\u9192\uff0c\u6211\u6b63\u5728\u542c..."

    invoke-virtual {p1, v2, v0, v1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->promptMessage(Ljava/lang/String;J)V

    .line 662
    iput v4, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeUpType:I

    goto :goto_2

    .line 664
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->updateASRText(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onRecordStop(I)V
    .locals 3

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordStop. sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; mInFullDuplexDialogMode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mInFullDuplexDialogMode:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenieAssistantUIManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 693
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mIsRecording:Z

    .line 694
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mInFullDuplexDialogMode:Z

    if-eqz p1, :cond_0

    .line 697
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2718

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onStreaming(ILjava/lang/String;Z)V
    .locals 2

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreaming. sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ;streamText = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ;isFinish = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "GenieAssistantUIManager"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 p3, 0x2718

    .line 672
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string p1, ""

    const-string p3, " "

    .line 674
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 675
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 676
    iget-boolean p3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mFullDuplexDialogEnabled:Z

    if-eqz p3, :cond_1

    .line 677
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 v0, 0x6

    invoke-virtual {p3, v0, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_1
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 v0, 0x4

    invoke-virtual {p3, v0, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    .line 681
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->updateASRText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Ljava/lang/String;)V
    .locals 2

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent. touchEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mAVEManagerService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    if-eqz v0, :cond_0

    const-string v1, "touchEvent"

    .line 1425
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVolume(II)V
    .locals 2

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVolume. sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; volume:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GenieAssistantUIManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowChange. topPackageAndActivityName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mAVEManagerService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    if-eqz v0, :cond_0

    const-string v2, "activityChange"

    .line 1318
    invoke-virtual {v0, v2, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getVisionRenew()Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1322
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->updatePackageInfo(Ljava/lang/String;)V

    .line 1324
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->notifyChangeByActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 1327
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mIsRecording:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "android."

    invoke-static {p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 1329
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "onWindowChange notify agui to get context "

    .line 1331
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getSystemContext()V

    :cond_2
    return-void
.end method

.method public setFullDuplexDialogRenew(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showGestureAnimation(ILjava/lang/String;)V
    .locals 7

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGestureAnimation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " text : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/16 v1, 0xe9

    if-ne p1, v1, :cond_0

    .line 1352
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "on"

    const-string v1, "true"

    .line 1354
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1356
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1358
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getInstance()Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->enableGestureUi()V

    .line 1359
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getInstance()Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getGestureUi(IILorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0x14d

    const/4 v2, 0x2

    if-ne p1, v1, :cond_2

    .line 1362
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pre"

    .line 1363
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "next"

    .line 1364
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ok"

    .line 1365
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "no"

    .line 1366
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "back"

    .line 1367
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1368
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1369
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1370
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x1

    .line 1371
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x3

    .line 1373
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x5

    .line 1375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getInstance()Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setTipsData(Ljava/util/HashMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1379
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_2
    const/16 v0, 0x1b1

    if-ne p1, v0, :cond_3

    .line 1382
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getInstance()Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setTipsData(Ljava/util/HashMap;)V

    .line 1383
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getInstance()Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->disableGestureUi()V

    goto :goto_2

    :cond_3
    const/16 v0, 0x215

    if-ne p1, v0, :cond_4

    .line 1385
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1386
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v0, "type"

    .line 1388
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1390
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1392
    :goto_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getInstance()Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    move-result-object p1

    invoke-virtual {p1, v2, v2, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getGestureUi(IILorg/json/JSONObject;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public showUi(Z)V
    .locals 5

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showUi. isThird:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; listenMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isListenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isMemberType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 753
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->hideUi(Z)V

    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->showUI(Z)V

    .line 761
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/AppUtils;->getTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 762
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/AppUtils;->getTopActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->isNeedShow()Z

    move-result v2

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showUi. needShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";topPackageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; topActivityName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 769
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->currentTopActivity:Ljava/lang/String;

    .line 771
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isListenMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v2, :cond_2

    .line 772
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->forceShowGenieAssistantBar()V

    :cond_2
    :goto_0
    return-void
.end method

.method public startTalk(Ljava/lang/String;)V
    .locals 4

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTalk : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vision-wakeup"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;-><init>()V

    const-string v1, "lip_wakeup"

    .line 1104
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "GenieAssistantUIManager"

    if-eqz v2, :cond_0

    .line 1105
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    .line 1106
    iput p1, v0, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->type:I

    .line 1107
    iget p1, v0, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->type:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeUpType:I

    goto :goto_0

    :cond_0
    const-string v1, "gesture_wakeup"

    .line 1108
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1109
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 1110
    iput p1, v0, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->type:I

    .line 1111
    iget p1, v0, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->type:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeUpType:I

    .line 1113
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->startTalk(ILcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;)Z

    return-void
.end method

.method public updateCorpus(Ljava/lang/String;)V
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCorpus:Ljava/lang/String;

    .line 1287
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mCorpus:Ljava/lang/String;

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    .line 1289
    invoke-static {v0, v1, p1, v1}, Lcom/alibaba/ailabs/genie/assistant/mtop/NetApi;->updateCorpusData(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateGenieText(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateGenieText. type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->updateGenieTextInner(ILjava/util/List;)V

    return-void
.end method

.method public updateGenieTextByPageName(ILjava/lang/String;)V
    .locals 2

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateGenieTextByPageName. type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ;pageName = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GenieAssistantUIManager"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateGenieTextInner(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1070
    invoke-static {p2}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1073
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->promptMessage(Ljava/lang/String;J)V

    return-void
.end method

.method public updateMuteState(Z)V
    .locals 2

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMuteState. isMute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->muteState:Z

    .line 1271
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mAVEManagerService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    if-eqz p1, :cond_0

    .line 1272
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->muteState:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "muteState"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->muteState:Z

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 1275
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 1277
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mUIClient:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateScreenSaverState(I)V
    .locals 4

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenSaverState. state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, p1, :cond_0

    const-string p1, ""

    .line 1221
    invoke-virtual {v0, v3, p1}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->handleWakeupWords(ILjava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->handleWakeupWords(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "screenon"

    .line 1224
    invoke-virtual {v0, v3, p1}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->handleWakeupWords(ILjava/lang/String;)V

    .line 1225
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastPackageAndActivityName:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->handleWakeupWords(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateScreenState(Z)V
    .locals 6

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenState. isScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUIManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2711

    const-string v1, "0"

    const-string v2, "sys.power.standby"

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 1234
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    if-eqz p1, :cond_0

    const-string v5, "screenon"

    .line 1235
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->handleWakeupWords(ILjava/lang/String;)V

    .line 1236
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->lastPackageAndActivityName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->handleWakeupWords(ILjava/lang/String;)V

    .line 1239
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 1240
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1242
    :cond_1
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1244
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    if-eqz p1, :cond_3

    const-string v5, ""

    .line 1245
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->handleWakeupWords(ILjava/lang/String;)V

    .line 1246
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    invoke-virtual {p1, v3, v5}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->handleWakeupWords(ILjava/lang/String;)V

    .line 1249
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 1250
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    :cond_4
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    .line 1253
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1254
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->cleanAllPlayer(Landroid/content/Context;Z)V

    .line 1258
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1260
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->stopTts(I)V

    :cond_6
    :goto_0
    return-void
.end method
