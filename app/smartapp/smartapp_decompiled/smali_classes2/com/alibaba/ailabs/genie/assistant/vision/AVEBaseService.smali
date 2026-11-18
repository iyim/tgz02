.class public abstract Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.super Landroid/app/Service;
.source "AVEBaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$AVEBaseBinder;
    }
.end annotation


# static fields
.field private static mPageBlackListOrangeKey:Ljava/lang/String; = "U9OWwKq8aBfi"


# instance fields
.field private TAG:Ljava/lang/String;

.field private isWebAppPlayingVideo:Z

.field private mCurrentActivity:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mIsMuteState:Z

.field private mOnAVECallback:Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;

.field public mPackageName:Ljava/lang/String;

.field public mPageName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSceneListener:Lcom/alibaba/ailabs/comm/task/listener/IScene;

.field private mSceneMode:Ljava/lang/String;

.field private mScreenState:Ljava/lang/String;

.field private mVisionFeaturePageBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "null"

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mSceneMode:Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 47
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mScreenState:Ljava/lang/String;

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mIsMuteState:Z

    .line 49
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mCurrentActivity:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mPackageName:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mPageName:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->isWebAppPlayingVideo:Z

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mVisionFeaturePageBlackList:Ljava/util/List;

    .line 157
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mSceneListener:Lcom/alibaba/ailabs/comm/task/listener/IScene;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mScreenState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mSceneMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->isWebAppPlayingVideo:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->isWebAppPlayingVideo:Z

    return p1
.end method

.method public static getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 290
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 291
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 292
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 301
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setForeground()V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const-string v0, ""

    const-string v1, "MiscService"

    .line 67
    :try_start_0
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "Channel human readable title"

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "notification"

    .line 71
    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    const-string v1, "NotificationManager null"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 79
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mOnAVECallback:Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;->onCallback(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getCurrentActivity()Ljava/lang/String;
    .locals 3

    .line 108
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/AppUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    const-string v1, "componentName is null"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCurrentSceneMode()Ljava/lang/String;
    .locals 3

    .line 102
    invoke-static {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mSceneMode:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSceneMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentScreenState()Ljava/lang/String;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mScreenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mScreenState:Ljava/lang/String;

    return-object v0
.end method

.method public getMuteState()Z
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMuteState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mIsMuteState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mIsMuteState:Z

    return v0
.end method

.method public abstract getServiceTag()Ljava/lang/String;
.end method

.method public getWebAppPlayStatus()Z
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWebAppPlayingVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->isWebAppPlayingVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->isWebAppPlayingVideo:Z

    return v0
.end method

.method public isInBlackList()Z
    .locals 5

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->getCurrentActivity()Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    const-string v2, "Panic cann`t get current activity"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mVisionFeaturePageBlackList:Ljava/util/List;

    if-nez v2, :cond_1

    return v1

    .line 262
    :cond_1
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mVisionFeaturePageBlackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 269
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 272
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in black list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1

    :catchall_0
    move-exception v0

    .line 269
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 92
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$AVEBaseBinder;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$AVEBaseBinder;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)V

    return-object p1
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "/"

    .line 225
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " args = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "muteState"

    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string p1, "true"

    .line 227
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mIsMuteState:Z

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 230
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mIsMuteState:Z

    goto :goto_0

    :cond_1
    const-string v1, "activityChange"

    .line 232
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mCurrentActivity:Ljava/lang/String;

    .line 235
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mCurrentActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mPackageName:Ljava/lang/String;

    .line 236
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mCurrentActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mPageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 169
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->getServiceTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->setForeground()V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->syncBlackListConf()V

    .line 176
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mPageBlackListOrangeKey:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$3;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)V

    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->regsiterOrangeCallback(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;)V

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    invoke-static {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    const-string v2, "setExecutor"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getSceneExecutor()Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mSceneListener:Lcom/alibaba/ailabs/comm/task/listener/IScene;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->addSceneListener(Lcom/alibaba/ailabs/comm/task/listener/IScene;)Z

    .line 193
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)V

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->registerMediaListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaListener;)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 213
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    invoke-static {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getSceneExecutor()Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mSceneListener:Lcom/alibaba/ailabs/comm/task/listener/IScene;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->removeSceneListener(Lcom/alibaba/ailabs/comm/task/listener/IScene;)Z

    .line 216
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mPageBlackListOrangeKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->unRegsiterOrangeCallback(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEventHit(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 280
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 281
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mPackageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mPageName:Ljava/lang/String;

    const-string v1, "pageName"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "spm"

    const-string v1, "a1z3lt.b79258703"

    .line 284
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TmallGenie_Multimode_Page"

    .line 285
    invoke-static {p1, v0, p2}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public abstract onSceneModeChanged(Ljava/lang/String;IILjava/lang/String;)Z
.end method

.method public abstract onScreenChanged(Ljava/lang/String;)Z
.end method

.method public abstract onWepAppVideoPlayChanged(Ljava/lang/String;)Z
.end method

.method public setCallback(Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mOnAVECallback:Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;

    return-void
.end method

.method public syncBlackListConf()V
    .locals 6

    .line 309
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mPageBlackListOrangeKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visionFeaturePageBlackList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "vision_feature_page_blacklist.json"

    .line 312
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visionFeaturePageBlackList_ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mVisionFeaturePageBlackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 319
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "pages_name"

    .line 320
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 321
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 322
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "page = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mVisionFeaturePageBlackList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->mVisionFeaturePageBlackList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method
