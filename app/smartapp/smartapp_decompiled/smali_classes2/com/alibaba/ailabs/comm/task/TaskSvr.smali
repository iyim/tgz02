.class public Lcom/alibaba/ailabs/comm/task/TaskSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "TaskSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# static fields
.field private static final ADD_LOCAL:I = 0x3eb

.field private static final ADD_SUPER_TASK_PAGE:I = 0x3ef

.field private static final ADD_TASK_APP:I = 0x3ed

.field private static final ADD_TASK_PAGE:I = 0x3ee

.field private static final CLOSE_MEDIA:I = 0x3e9

.field private static final DIED:I = 0x3e8

.field private static final MUSIC_CFG_NAME:Ljava/lang/String; = "yAdZvp6H5BFG"

.field private static final NOTIFY_CONTAINER_INFO:I = 0x3

.field private static final ON_PAGE_CHANGE:I = 0x3ea

.field private static final REMOVE_LOCAL:I = 0x3ec

.field private static final SCREEN_SAVER_CHANGE:I = 0x3f2

.field private static final SCREEN_STATUS_CHANGE:I = 0x3f1

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.task"

.field private static final START:I = 0x1

.field private static final START_PACKAGE_CHANGE:I = 0x3f3

.field private static final STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TaskSvr"

.field private static final TASK_CFG_NAME:Ljava/lang/String; = "r82pdcBpnxVB"

.field private static final UPDATE_DATA:I = 0x3f0

.field private static final UPDATE_MUSIC_DATA:I = 0x3f4

.field private static sInstance:Lcom/alibaba/ailabs/comm/task/TaskSvr;


# instance fields
.field private mDefaultMusicBackList:Ljava/lang/String;

.field private mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

.field private mHandler:Landroid/os/Handler;

.field private mReadDataListener:Lcom/alibaba/ailabs/comm/task/listener/IReadData;

.field private mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mTaskReceiver:Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;

.field private mTinyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 201
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const-string v0, "{\n\t\"packages\":[\n\t\"com.edu24ol.newclass\",\n\t\"com.youban.xbldhw\",\n\t\"com.jtjsb.storycollect\",\n\t\"com.ywcbs.sinology\",\n\t\"com.dedao.juvenile\",\n\t\"software.ecenter.study\",\n\t\"com.dd.dingdonglive\",\n\t\"com.tal.imonkey.chinese\",\n\t\"com.vipkid.app\",\n\t\"cn.boyakids.m\",\n\t\"com.baidu.baidutranslate\",\n\t\"cn.com.langeasy.LangEasyLexis\",\n\t\"com.acadsoc.learn\",\n\t\"com.gumi.spokenenglish\",\n\t\"com.android.abustory\",\n\t\"com.quark.browser\"\n\t],\n\t\"scenekillList\": {\t\"shortTimeApps\": [\n\t],\n\t\"stickyProcesss\": [\n\t]\n\t}\n}"

    .line 70
    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mDefaultMusicBackList:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/alibaba/ailabs/comm/task/TaskSvr$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr$4;-><init>(Lcom/alibaba/ailabs/comm/task/TaskSvr;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mTaskReceiver:Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    .line 203
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    .line 204
    new-instance p1, Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    .line 206
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3f0

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3f4

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 213
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mTaskReceiver:Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;

    const-string v1, "r82pdcBpnxVB"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->register(Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mTaskReceiver:Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;

    const-string v1, "yAdZvp6H5BFG"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->register(Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;Ljava/lang/String;)V

    .line 215
    new-instance p1, Lcom/alibaba/ailabs/comm/task/TaskSvr$3;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr$3;-><init>(Lcom/alibaba/ailabs/comm/task/TaskSvr;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->setReadDataListener(Lcom/alibaba/ailabs/comm/task/listener/IReadData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Lcom/alibaba/ailabs/comm/task/SceneExecutor;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/content/Context;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;
    .locals 2

    .line 99
    sget-object v0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->sInstance:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    if-nez v0, :cond_1

    .line 100
    const-class v0, Lcom/alibaba/ailabs/comm/task/TaskSvr;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/comm/task/TaskSvr;->sInstance:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/comm/task/TaskSvr;->sInstance:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    .line 104
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 107
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->sInstance:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.task"

    return-object v0
.end method

.method private handleMessageInner(Landroid/os/Message;)Z
    .locals 7

    .line 385
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    const/4 v3, 0x2

    const/16 v4, 0x3e8

    if-eq v0, v3, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    const-string v3, "TaskSvr"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 508
    :pswitch_0
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    const-string v0, "yAdZvp6H5BFG"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicPackage = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QUICK"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mDefaultMusicBackList:Ljava/lang/String;

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->updateMusicListPackage(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 410
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;

    .line 412
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->addPackageRemote(Lcom/alibaba/ailabs/comm/task/client/PackageRemote;)V

    goto/16 :goto_9

    .line 545
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/utils/Utils;->getForegroundPageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 546
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 548
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->setScreenSaver(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 519
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/utils/Utils;->getForegroundPageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 520
    iget-object v5, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v0, v2, v1, v6}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onActivityChange(Ljava/lang/String;ZZZ)V

    .line 524
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_f

    .line 526
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-gtz p1, :cond_4

    const/16 p1, 0x320

    goto :goto_3

    :cond_4
    add-int/2addr p1, v4

    :goto_3
    const/16 v0, 0x1f40

    if-gt p1, v0, :cond_f

    .line 532
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f1

    .line 533
    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 534
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v4, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 535
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry check screen off, timeout = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_4
    const-string v0, "BZY"

    const-string v4, "UPDATE_DATA"

    .line 465
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 470
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getReadDataListener()Lcom/alibaba/ailabs/comm/task/listener/IReadData;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 473
    :try_start_0
    invoke-interface {v4}, Lcom/alibaba/ailabs/comm/task/listener/IReadData;->onReadData()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 475
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    :cond_5
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "onParser data from server"

    .line 482
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onParser(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string p1, "task.cfg"

    .line 486
    iget-object v4, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/alibaba/ailabs/comm/utils/Utils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    invoke-static {v4}, Lcom/alibaba/ailabs/comm/utils/Utils;->existFile(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v5, "onParser data from local"

    .line 489
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v0, p1, v4}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->loadPath(Ljava/lang/String;Z)V

    .line 493
    :goto_5
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isEnableScene()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isEnableTask()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_6

    .line 499
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getImportanceConfig()Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 500
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->registerTinyReceiver()V

    goto/16 :goto_9

    .line 494
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/comm/utils/Utils;->getForegroundPageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 495
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onActivityChange(Ljava/lang/String;ZZZ)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init or update = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->registerScreenStatusReceiver()V

    goto/16 :goto_9

    .line 458
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 459
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 461
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getDetector()Lcom/alibaba/ailabs/comm/task/SceneDetector;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addSuperTaskPage(ILjava/util/List;)V

    goto/16 :goto_9

    .line 450
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 451
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 453
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getDetector()Lcom/alibaba/ailabs/comm/task/SceneDetector;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addTaskPage(ILjava/util/List;)V

    goto/16 :goto_9

    .line 442
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 443
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 445
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getDetector()Lcom/alibaba/ailabs/comm/task/SceneDetector;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addTaskApp(ILjava/util/List;)V

    goto/16 :goto_9

    .line 430
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 431
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 432
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/ailabs/comm/task/listener/IScene;

    .line 434
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3eb

    if-ne p1, v4, :cond_9

    .line 435
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {p1, v0, v2, v3}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->addLocal(IILcom/alibaba/ailabs/comm/task/listener/IScene;)V

    goto :goto_9

    .line 437
    :cond_9
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {p1, v0, v2, v3}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->removeLocal(IILcom/alibaba/ailabs/comm/task/listener/IScene;)V

    goto :goto_9

    .line 387
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onActivityChange(Ljava/lang/String;ZZZ)V

    goto :goto_9

    .line 393
    :pswitch_a
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->exitAllMediaPlayer()V

    goto :goto_9

    .line 555
    :cond_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "id"

    .line 557
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pn"

    .line 558
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "p"

    .line 559
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 561
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/utils/Utils;->getForegroundPageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 568
    iget-object v4, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v4, v0, p1, v2, v3}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onContainerChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 421
    :cond_b
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 423
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v4, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v3, v0, v5}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->removeRemote(Ljava/lang/String;Z)V

    .line 424
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v4, :cond_d

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v0, v2}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->removePackageRemote(Ljava/lang/String;Z)V

    goto :goto_9

    .line 401
    :cond_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;

    .line 402
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->addRemote(Lcom/alibaba/ailabs/comm/task/client/SceneRemote;)V

    :cond_f
    :goto_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerScreenStatusReceiver()V
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerScreenStatusReceiver = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 154
    new-instance v1, Lcom/alibaba/ailabs/comm/task/TaskSvr$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr$2;-><init>(Lcom/alibaba/ailabs/comm/task/TaskSvr;)V

    .line 181
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iput-object v1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerTinyReceiver()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mTinyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 125
    new-instance v1, Lcom/alibaba/ailabs/comm/task/TaskSvr$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr$1;-><init>(Lcom/alibaba/ailabs/comm/task/TaskSvr;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mTinyReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mTinyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addSuperTaskPage(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 600
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addTaskApp(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 590
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addTaskPage(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 595
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cleanAllPlayer()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getCurrentScene()Ljava/lang/String;
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getSceneInfo()Lcom/alibaba/ailabs/comm/task/SceneInfo;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentScene info :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QUICK"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getSceneType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadDataListener()Lcom/alibaba/ailabs/comm/task/listener/IReadData;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mReadDataListener:Lcom/alibaba/ailabs/comm/task/listener/IReadData;

    return-object v0
.end method

.method public getSceneExecutor()Lcom/alibaba/ailabs/comm/task/SceneExecutor;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mExecutor:Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    :try_start_0
    const-string v0, "TaskSvr"

    const-string v1, "handleMessage"

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->handleMessageInner(Landroid/os/Message;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public onActivityChange(Ljava/lang/String;)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 281
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ea

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 285
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 288
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p2, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 290
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "e"

    .line 299
    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 301
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v2

    .line 304
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", clientId = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskSvr"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const/4 v5, 0x0

    if-ne p1, v3, :cond_3

    const-string p1, "b"

    .line 312
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    :try_start_1
    const-string v6, "ck"

    .line 316
    invoke-virtual {p2, v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    .line 318
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v6, "f"

    .line 322
    invoke-virtual {p2, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_2

    .line 325
    new-instance v7, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p1, p0}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 326
    invoke-virtual {v7, v4}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->setClientId(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->setClientKey(Ljava/lang/String;)V

    .line 328
    iget-object v8, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3f3

    invoke-static {v8, v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    and-int/lit8 v7, v6, 0x3

    if-eqz v7, :cond_4

    .line 332
    new-instance v7, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p1, p0}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 333
    invoke-virtual {v7, v4}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->setClientId(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->setClientKey(Ljava/lang/String;)V

    const-string p1, "t"

    .line 335
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->setTaskType(I)V

    .line 336
    invoke-virtual {v7, v6}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->setFlag(I)V

    .line 338
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 343
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 345
    :goto_3
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 358
    instance-of v0, p1, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;

    if-eqz v0, :cond_0

    .line 359
    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->getClientId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 360
    :cond_0
    instance-of v0, p1, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;

    if-eqz v0, :cond_1

    .line 361
    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->getClientId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDied  client = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public oprLocal(ZIILcom/alibaba/ailabs/comm/task/listener/IScene;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x3eb

    goto :goto_0

    :cond_1
    const/16 p1, 0x3ec

    .line 583
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 585
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setReadDataListener(Lcom/alibaba/ailabs/comm/task/listener/IReadData;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mReadDataListener:Lcom/alibaba/ailabs/comm/task/listener/IReadData;

    return-void
.end method

.method public updateData(Ljava/lang/String;)V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 607
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
