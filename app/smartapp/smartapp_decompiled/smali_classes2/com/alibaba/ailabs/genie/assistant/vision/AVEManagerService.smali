.class public Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;
.super Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.source "AVEManagerService.java"


# static fields
.field private static final EVENT_CODE_CRY_DETECT:I = 0x111da

.field private static final TAG:Ljava/lang/String; = "AVEManagerService"


# instance fields
.field changer:Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;

.field private mAVECommandHandler:Landroid/os/Handler;

.field mChildFaceDetectConn:Landroid/content/ServiceConnection;

.field private mChildFaceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

.field private mCryDetectEventId:J

.field private mCurrentActivity:Ljava/lang/String;

.field mDistanceDetectConn:Landroid/content/ServiceConnection;

.field private mDistanceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

.field mGestureDetectConn:Landroid/content/ServiceConnection;

.field private mGestureDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastActivity:Ljava/lang/String;

.field private mOnAVECallback:Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;

.field mVisionWakeUpConn:Landroid/content/ServiceConnection;

.field private mVisionWakeUpService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 188
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mCurrentActivity:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 47
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mCryDetectEventId:J

    .line 49
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 51
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 52
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mAVECommandHandler:Landroid/os/Handler;

    .line 54
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mVisionWakeUpService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    .line 55
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mVisionWakeUpConn:Landroid/content/ServiceConnection;

    .line 75
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mChildFaceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    .line 76
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mChildFaceDetectConn:Landroid/content/ServiceConnection;

    .line 96
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mDistanceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    .line 97
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mDistanceDetectConn:Landroid/content/ServiceConnection;

    .line 117
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mGestureDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    .line 118
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$4;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mGestureDetectConn:Landroid/content/ServiceConnection;

    .line 223
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$6;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->changer:Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;

    .line 346
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mLastActivity:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mVisionWakeUpService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mVisionWakeUpService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mOnAVECallback:Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mChildFaceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mChildFaceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mDistanceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mDistanceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mGestureDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mGestureDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mLastActivity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mLastActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mCurrentActivity:Ljava/lang/String;

    return-object p1
.end method

.method public static getTime()Ljava/lang/String;
    .locals 2

    .line 215
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT+08"

    .line 217
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 218
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAveService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 193
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 207
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v2, 0x1

    .line 208
    invoke-virtual {v1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->checkAveSettingStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->startAveService(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getServiceTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AVEManagerService"

    return-object v0
.end method

.method public notifyAVE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "args = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.alibaba.ailabs.ave.controlProvider"

    .line 332
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 333
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 334
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 335
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "cmd"

    .line 336
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "args"

    .line 337
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 340
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p1
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mAVECommandHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Panic mAVECommandHandler = null"

    .line 409
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 237
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCreate()V

    .line 238
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AVEHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 240
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mAVECommandHandler:Landroid/os/Handler;

    const-string v0, "GenieFaceDistanceVEngine"

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/eyeYieldMode"

    .line 244
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->initAveService(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->changer:Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->registerListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;)Z

    :cond_0
    const-string v0, "GenieChildFaceVEngine"

    .line 251
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->checkAveSettingStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->startAveService(Ljava/lang/String;)V

    .line 255
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 256
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    const v1, 0x111da

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$7;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerEventDispatcher(ILcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mCryDetectEventId:J

    .line 279
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V

    const-string v2, "UriProcessMessage"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 305
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onDestroy()V

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 310
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->changer:Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->unregisterListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;)Z

    :cond_1
    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 316
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mAVECommandHandler:Landroid/os/Handler;

    .line 317
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 318
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 319
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    const v1, 0x111da

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mCryDetectEventId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->unregisterEventDispatcher(IJ)V

    return-void
.end method

.method public onSceneModeChanged(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScreenChanged(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onWepAppVideoPlayChanged(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mOnAVECallback:Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;

    return-void
.end method

.method public startAveService(Ljava/lang/String;)V
    .locals 4

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "GenieChildFaceVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "GenieGestureVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "GenieWakeUpVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "GenieFaceDistanceVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 157
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mGestureDetectConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_2

    .line 153
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mDistanceDetectConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_2

    .line 149
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mChildFaceDetectConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_2

    .line 145
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/ailabs/genie/assistant/vision/VisionWakeUpService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mVisionWakeUpConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79651b66 -> :sswitch_3
        -0x4060baf3 -> :sswitch_2
        -0x32f5f3c5 -> :sswitch_1
        0x5c4872eb -> :sswitch_0
    .end sparse-switch
.end method

.method public stopAveService(Ljava/lang/String;)V
    .locals 4

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "GenieChildFaceVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "GenieGestureVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "GenieWakeUpVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "GenieFaceDistanceVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mDistanceDetectConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mDistanceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    goto :goto_2

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mGestureDetectConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 179
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mGestureDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    goto :goto_2

    .line 170
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mChildFaceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    if-eqz p1, :cond_4

    .line 171
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mChildFaceDetectConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mChildFaceDetectService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    goto :goto_2

    :cond_4
    const-string p1, "ChildFaceDetectService already stopped"

    .line 174
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mVisionWakeUpConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 167
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->mVisionWakeUpService:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79651b66 -> :sswitch_3
        -0x4060baf3 -> :sswitch_2
        -0x32f5f3c5 -> :sswitch_1
        0x5c4872eb -> :sswitch_0
    .end sparse-switch
.end method
