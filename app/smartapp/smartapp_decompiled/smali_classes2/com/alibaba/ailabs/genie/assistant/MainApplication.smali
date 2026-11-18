.class public Lcom/alibaba/ailabs/genie/assistant/MainApplication;
.super Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;
.source "MainApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;
.implements Lcom/alibaba/ailabs/geniesdk/rom/IRom;
.implements Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;
.implements Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;


# static fields
.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final TAG:Ljava/lang/String; = "MainApplication"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static volatile mApplication:Landroid/app/Application;


# instance fields
.field public mCurrentLevel:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Landroid/app/Application;
    .locals 1

    .line 63
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 264
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mHandlerThread:Landroid/os/HandlerThread;

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 286
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mHandler:Landroid/os/Handler;

    .line 288
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 290
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getVolumeReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 371
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/MainApplication$3;-><init>(Lcom/alibaba/ailabs/genie/assistant/MainApplication;)V

    return-object v0
.end method

.method private initDynamicLogSwitch()V
    .locals 2

    const/4 v0, 0x1

    .line 306
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->setEnableDebug(Z)V

    const-string v0, "MainApplication"

    const-string v1, "initDynamicLogSwitch"

    .line 307
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isMainProcess()Z
    .locals 5

    .line 313
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    .line 314
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 317
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "AGIS_RUN_PROCESS_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 322
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "com.alibaba.ailabs.genie.smartapp"

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    const-string v1, ":"

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procesName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainApplication"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMainProcess. processName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private registerStandbyReceiver(Landroid/content/Context;)V
    .locals 2

    .line 340
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.assistant.ACTION_STANDBY"

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/StandbyReceiver;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/StandbyReceiver;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerVolumeChangeReceiver(Landroid/content/Context;)V
    .locals 2

    .line 362
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getVolumeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startService(Ljava/lang/String;)V
    .locals 2

    .line 269
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    sget-object p1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 350
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 355
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/app/Application;)V
    .locals 14

    .line 78
    sput-object p1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    .line 80
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getInstance()Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->init(Landroid/content/Context;)V

    const/4 v0, 0x3

    .line 86
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mCurrentLevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 94
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->setEnableDebug(Z)V

    const-string v1, "MainApplication"

    const-string v2, "xxxxx=======onCreate."

    .line 95
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HQN. SmartappGenieAssistant onCreate."

    .line 96
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 101
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->initDynamicLogSwitch()V

    const-string v2, "onCreate. start log..."

    .line 102
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    .line 107
    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    .line 108
    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/Global;->init(Landroid/content/Context;)V

    const-string v3, "com.alibaba.ailabs.geniesdk.NativeService"

    .line 109
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->startService(Ljava/lang/String;)V

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/aligeniesdk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 121
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v4

    sget-object v5, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    .line 127
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v12, "/data/data/com.alibaba.ailabs.genie.smartapp/lib"

    .line 132
    new-instance v13, Lcom/alibaba/ailabs/genie/assistant/Device;

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    .line 133
    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/config.json"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    .line 134
    invoke-virtual {v3}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "libcapem.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v10, "xnljkbezshadywqcsecuqdvipaurwpyc"

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/alibaba/ailabs/genie/assistant/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---haha--device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3, v13}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->init(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/device/IDevice;)Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v10

    .line 140
    new-instance v3, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v3, v4}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v10, v3}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->setUiManager(Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;)V

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init: setUiManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v10, v3}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->setCorpusManager(Lcom/alibaba/ailabs/geniesdk/nlp/ICorpusTrainManager;)V

    .line 144
    invoke-virtual {v10, p0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->setRomInterface(Lcom/alibaba/ailabs/geniesdk/rom/IRom;)V

    .line 145
    invoke-virtual {v10, p0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->setTraceInterface(Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;)V

    .line 146
    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->hideAsrUI()V

    .line 148
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->getInstance()Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

    move-result-object v3

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->startLocation(Landroid/content/Context;)V

    .line 150
    new-instance v3, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v3, v4}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v10, v3}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->setPreResultScreenMode(Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;)V

    .line 153
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isCmccDevice()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    invoke-virtual {v2, p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setExtUserBindInfoListener(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;)V

    .line 160
    :cond_3
    new-instance v7, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;

    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    move-result-object v3

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v7, v3, v4}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;-><init>(Lcom/yunos/tv/alitvasr/IAliTVASRCallback;Landroid/content/Context;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v4, "com.android.bluetooth"

    move-object v3, v2

    .line 161
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;Z)V

    .line 168
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setOrangeNotifyProxy(Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;)V

    .line 171
    :try_start_3
    new-instance v3, Landroid/content/ComponentName;

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v4, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    sget-object v5, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    .line 175
    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-direct {v4, v5, v6, v9}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 178
    invoke-virtual {v4}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 179
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    const-class v5, Lcom/alibaba/ailabs/genie/assistant/service/AccessibilityMonitorService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v4, v3}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    .line 182
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string v3, "onCreate. end."

    .line 185
    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    new-instance v3, Lcom/alibaba/ailabs/genie/assistant/GetAppInfoEx;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/assistant/GetAppInfoEx;-><init>()V

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setIGetAppInfoListener(Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;)V

    .line 189
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->start()V

    .line 190
    invoke-virtual {v13}, Lcom/alibaba/ailabs/genie/assistant/Device;->getDeviceInfo()Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->accountMode:I

    if-ne v1, v0, :cond_4

    const/16 v0, 0x300

    .line 191
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setAccountMask(I)V

    .line 195
    :cond_4
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/GestureUIManager;

    .line 198
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 199
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    .line 198
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setSystemEventProcessor(Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->registerStandbyReceiver(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->registerVolumeChangeReceiver(Landroid/content/Context;)V

    .line 203
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;

    invoke-direct {v0, p0, v10}, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/MainApplication;Lcom/alibaba/ailabs/geniesdk/AguiCtx;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 260
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onExtUserBinderInfo(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "MainApplication"

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtUserBinderInfo. extInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "genie://com.alibaba.ailabs.genie.custom.rtc/page/cmcc_notify"

    .line 406
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 407
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.alibaba.ailabs.genie.custom.rtc"

    .line 408
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cmccGwExt"

    .line 409
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    sget-object p1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p1, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 412
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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

    .line 296
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/MainApplication;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMute(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 419
    sget-object p1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ROM_OPEN_MODEL_MUTE"

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomControl;->enterControl(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_0
    sget-object p1, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ROM_CLOSE_MODEL_MUTE"

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/rom/RomControl;->enterControl(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setStandby()V
    .locals 2

    .line 427
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mApplication:Landroid/app/Application;

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
