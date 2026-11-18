.class public Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BootHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;,
        Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;,
        Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;
    }
.end annotation


# static fields
.field public static final MAX_TIME:I = 0x2bf20

.field private static final MSG_DOWNLOAD_FAILED:I = 0x2

.field private static final MSG_TIME_OUT:I = 0x1

.field private static final PERSIST_SYS_VERSION_FIRST_MODE:Ljava/lang/String; = "persist.sys.version.first.mode"

.field private static final RO_GENIE_ROMTYPE:Ljava/lang/String; = "ro.genie.romtype"

.field private static final TAG:Ljava/lang/String; = "BootHomeActivity"


# instance fields
.field private background:Landroid/widget/ImageView;

.field private bar:Landroid/widget/ProgressBar;

.field private content:Landroid/widget/TextView;

.field private isSendNetErro:Z

.field private mHandher:Landroid/os/Handler;

.field public mHandler:Landroid/os/Handler;

.field private mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

.field private mRetryTime:J

.field private mStartShowTime:J

.field private onlineReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;

.field private userReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mRetryTime:J

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isSendNetErro:Z

    .line 105
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$1;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandher:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->installErrorOrTimeOut()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->unRegistUserUnLockedReceiver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->userUnlockProcess(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->unRegistOnLineReceiver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->processAppInfoOnLine(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->checkImgShowEnd(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->checkStartShow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->downLoadAndInstallApk(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->background:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mRetryTime:J

    return-wide v0
.end method

.method static synthetic access$408(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)J
    .locals 4

    .line 61
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mRetryTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mRetryTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->updateImage(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandher:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->startJumpActionOnUserUnLock(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->bar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isSendNetErro:Z

    return p0
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isSendNetErro:Z

    return p1
.end method

.method private checkImgShowEnd(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 8

    .line 566
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mStartShowTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImgShowTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->calcTimeoutTime(JJJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string p1, "BootHomeActivity"

    const-string v0, "goto home because type img timeout"

    .line 568
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "End IMG  show"

    .line 569
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->installErrorOrTimeOut()V

    goto :goto_0

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$7;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private checkNeedShowLogo()V
    .locals 2

    .line 192
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/custom/NTCustom;->isTeliComCustom()Z

    move-result v0

    const-string v1, "BootHomeActivity"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/custom/NTCustom;->isRebootSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "checkNeedShowLogo true"

    .line 193
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/custom/NTCustom;->showTeleComLoadingView(Landroid/content/Context;)V

    :cond_0
    const-string v0, "checkNeedShowLogo false"

    .line 196
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkStartShow()V
    .locals 4

    .line 615
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->isBootAnimFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->setStartShowTime()V

    goto :goto_0

    :cond_0
    const-string v0, "BootHomeActivity"

    const-string v1, "Bootapp wait bootanim finish..."

    .line 618
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$8;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private downLoadAndInstallApk(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 3
    .param p1    # Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 365
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->bar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start download app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootHomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getApp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->downloadAndInstall(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V

    return-void
.end method

.method public static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 583
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    .line 584
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 585
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 588
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method private goHomeBySysPropAndStartAPKService()V
    .locals 0

    .line 439
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->goHomeActivityAndSetProperties()V

    .line 440
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startApkService()V

    .line 441
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->finish()V

    return-void
.end method

.method private goHomeBySysPropAndStartService()V
    .locals 1

    .line 424
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->goHomeActivityAndSetProperties()V

    .line 425
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startApkService()V

    .line 426
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$5;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    .line 432
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->finish()V

    return-void
.end method

.method private goHomeFirstBySysProp()V
    .locals 0

    .line 416
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->goHomeActivityAndSetProperties()V

    .line 417
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->finish()V

    return-void
.end method

.method private initView(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 1

    .line 252
    sget v0, Lcom/alibaba/ailabs/genie/genieboot/R$layout;->activity_boot_home:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->setContentView(I)V

    .line 254
    sget v0, Lcom/alibaba/ailabs/genie/genieboot/R$id;->loading_background:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->background:Landroid/widget/ImageView;

    .line 255
    sget v0, Lcom/alibaba/ailabs/genie/genieboot/R$id;->loading_progressbar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->bar:Landroid/widget/ProgressBar;

    .line 256
    sget v0, Lcom/alibaba/ailabs/genie/genieboot/R$id;->loading_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->content:Landroid/widget/TextView;

    .line 258
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->updateUI(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    return-void
.end method

.method private installErrorOrTimeOut()V
    .locals 2

    const-string v0, "BootHomeActivity"

    const-string v1, "installErrorOrTimeOut"

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->goHomeFirstBySysProp()V

    .line 356
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startApkService()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isAGUIOnLine(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 233
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->isOnLine(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private processAppInfoOnLine(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 5

    .line 536
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeByOnLineMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnType()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 539
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->checkImgShowEnd(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    goto :goto_1

    .line 540
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->isJumpPackageInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "BootHomeActivity"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "processAppInfoOnLine DownloadUrl or Uri NULL!"

    .line 544
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->goHomeBySysPropAndStartAPKService()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "processAppInfoOnLine startJumpActionOnUserUnLock!"

    .line 541
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->startJumpActionOnUserUnLock(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    .line 548
    :goto_1
    new-instance p1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processNoData(Z)V
    .locals 1

    .line 221
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isAGUIOnLine(Z)Z

    move-result p1

    const-string v0, "BootHomeActivity"

    if-eqz p1, :cond_0

    .line 222
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateModeOnLine(Landroid/content/Context;)V

    .line 223
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->goHomeBySysPropAndStartAPKService()V

    const-string p1, "processNoDataCase updateModeOnLine"

    .line 224
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->registDeviceMirrorListener()V

    .line 227
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->goHomeFirstBySysProp()V

    :goto_0
    const-string p1, "processNoData"

    .line 229
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processOnlyMode(Z)V
    .locals 1

    .line 200
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isAGUIOnLine(Z)Z

    move-result p1

    const-string v0, "BootHomeActivity"

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateModeOnLine(Landroid/content/Context;)V

    const-string p1, "updateModeOnLine on AppInfo Empty"

    .line 203
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeByOnLineMode(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "updateChildModeByOnLineMode on AppInfo Empty"

    .line 206
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->goHomeBySysPropAndStartService()V

    goto :goto_1

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeOffLine(Ljava/lang/String;)V

    .line 213
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->registerBrocast(Landroid/content/Context;)V

    .line 214
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->goHomeFirstBySysProp()V

    const-string p1, "AGUIOnlineReceiverManager on AppInfo Empty"

    .line 215
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p1, "processOnlyMode"

    .line 217
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registOnlineReceiver()V
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->onlineReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 500
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->onlineReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;

    .line 501
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.assistant.ONLINE"

    .line 502
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->onlineReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registOnlineReceiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootHomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registUserUnLockedReceiver()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->userReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->userReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->userReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registUserUnLockedReceiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootHomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setStartShowTime()V
    .locals 3

    const-string v0, "BootHomeActivity"

    const-string v1, "Start show time"

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mStartShowTime:J

    .line 533
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mStartShowTime:J

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->setStartShowPicTime(J)V

    return-void
.end method

.method private startJumpActionOnUserUnLock(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 8
    .param p1    # Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 304
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->jumpAction(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    move-result-object v0

    .line 305
    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->NotInstall:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    if-ne v0, v1, :cond_0

    .line 307
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->downLoadAndInstallApk(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    goto :goto_0

    .line 308
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpErro:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    if-ne v0, v1, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->installErrorOrTimeOut()V

    goto :goto_0

    .line 311
    :cond_1
    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpDelay:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    if-ne v0, v1, :cond_2

    .line 312
    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mStartShowTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImgShowTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, v0

    invoke-static/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->calcTimeoutTime(JJJ)J

    move-result-wide v0

    .line 313
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$3;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string p1, "BootHomeActivity"

    const-string v0, "End APP  show"

    .line 321
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startApkService()V

    .line 323
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->finish()V

    :goto_0
    return-void
.end method

.method private unRegistOnLineReceiver()V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->onlineReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 510
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->onlineReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;

    :cond_0
    return-void
.end method

.method private unRegistUserUnLockedReceiver()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->userReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->userReceiver:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegistUserUnLockedReceiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootHomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateImage(Ljava/lang/String;)V
    .locals 2

    .line 273
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    .line 295
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private updateUI(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 2

    .line 262
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->updateImage(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->background:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/genieboot/R$drawable;->boot_view_background:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private userUnlockProcess(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 2

    const-string v0, "BootHomeActivity"

    if-nez p1, :cond_0

    const-string p1, "onReceiveUserUnLockedReceiver Info NULL"

    .line 516
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->goHomeBySysPropAndStartAPKService()V

    return-void

    :cond_0
    const-string v1, "UserUnLockedReceiver updateChildModeByOnLineMode"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 522
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isAGUIOnLine(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getBootInfo(Z)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v0

    .line 524
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->processAppInfoOnLine(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->registOnlineReceiver()V

    :goto_0
    return-void
.end method


# virtual methods
.method public enableEyeYieldMode(Landroid/content/Context;Z)V
    .locals 3

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_0
    const-string v0, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 601
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 603
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "param"

    .line 604
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "method"

    const/4 v2, 0x3

    .line 606
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string p1, "BootHomeActivity"

    const-string p2, "enableEyeYieldMode when first start"

    .line 608
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 610
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .line 130
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-wide/16 v0, 0x0

    .line 131
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mStartShowTime:J

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->setStartShowPicTime(J)V

    .line 134
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->checkNeedShowLogo()V

    const-string p1, ""

    const-string v2, "ro.genie.romtype"

    .line 136
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "persist.sys.version.first.mode"

    .line 137
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandler:Landroid/os/Handler;

    const-string v4, "user"

    .line 140
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate romType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\uff0cisFirst = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BootHomeActivity"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v2}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "child"

    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isAGUIOnLine(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "kidMode"

    .line 145
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeByOnLineMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->enableEyeYieldMode(Landroid/content/Context;Z)V

    const-string p1, "onCreate romType isAGUIOnLine open eyeMode"

    .line 147
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeOnlyOffLine()V

    const-string p1, "onCreate romType updateChildModeOnlyOffLine"

    .line 150
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string p1, "0"

    .line 154
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "onCreate setSystemProperties PERSIST_SYS_VERSION_FIRST_MODE"

    .line 155
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->hasHomeProp()Z

    move-result p1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate hasHomeProp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 160
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->goHomeFirstBySysProp()V

    const-string p1, "goHomeActivityBySystemProperties"

    .line 161
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    move-result-object p1

    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getBootInfo(Z)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    if-nez p1, :cond_4

    .line 168
    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->processNoData(Z)V

    return-void

    .line 172
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnType()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getApp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 173
    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->processOnlyMode(Z)V

    return-void

    .line 177
    :cond_5
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->registDeviceMirrorSilenceListener()V

    .line 178
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->initView(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    .line 179
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->checkStartShow()V

    .line 180
    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 181
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->userUnlockProcess(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    goto :goto_2

    .line 183
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->registUserUnLockedReceiver()V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 343
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 344
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->unRegistUserUnLockedReceiver()V

    .line 345
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 346
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandler:Landroid/os/Handler;

    const-string v0, "BootHomeActivity"

    const-string v1, "onDestroy"

    .line 347
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 336
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 337
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandher:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "BootHomeActivity"

    const-string v1, "onPause"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 329
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 330
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->mHandher:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "BootHomeActivity"

    const-string v1, "onResume"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
