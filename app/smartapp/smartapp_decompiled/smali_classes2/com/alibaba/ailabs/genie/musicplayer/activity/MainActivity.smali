.class public Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;
.super Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity<",
        "Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0xbb8

.field public static final PAGE_TME_BIND_SCENE:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.musicplayer.tme/page/tme_main?showScene=bind&source="

.field public static final PAGE_TME_SETTING:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.musicplayer.tme/page/tme_main?showScene=setting&showBenefits="

.field public static final SOURCE_GENIE:Ljava/lang/String; = "GENIE"

.field public static final SOURCE_KG:Ljava/lang/String; = "KG"

.field public static final SOURCE_KW:Ljava/lang/String; = "KW"

.field public static final SOURCE_NE:Ljava/lang/String; = "NE"

.field public static final SOURCE_QM:Ljava/lang/String; = "QM"

.field public static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private canReceive:Z

.field private delayStopGestureRunnable:Ljava/lang/Runnable;

.field private hasShowedContent:Z

.field private mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

.field private mCurrentFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureClient:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

.field private mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

.field private onGestureListener:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;

.field private realDataShowed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->hasShowedContent:Z

    .line 62
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->realDataShowed:Z

    .line 65
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->canReceive:Z

    .line 67
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->delayStopGestureRunnable:Ljava/lang/Runnable;

    .line 411
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$MainActivity$fcX6QMTFYSJd8Ta4WHgPdEuDYnc;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$MainActivity$fcX6QMTFYSJd8Ta4WHgPdEuDYnc;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->onGestureListener:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mGestureClient:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->canReceive:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissRightAccountDialog()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private dismissRightAccountDialog()V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->dismiss()V

    const/4 v0, 0x0

    .line 613
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    :cond_0
    return-void
.end method

.method private handContentPlay()V
    .locals 2

    const-string v0, "hanContentPlay start"

    .line 523
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setIsRequesting(Z)V

    .line 525
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->processContentPlay()V

    return-void
.end method

.method private handContentPlayWithoutLogin()V
    .locals 2

    const-string v0, "hanContentPlay start"

    .line 529
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setIsRequesting(Z)V

    .line 531
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v0

    .line 532
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 533
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissLoadingDialog()V

    return-void
.end method

.method private intentProcessForContent(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 8

    .line 537
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCanReceiveRights()Z

    move-result v0

    .line 538
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 539
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x95c

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_3

    const/16 v4, 0x96c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x9b7

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa1c

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "QM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "NE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const-string v3, "KW"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const-string v3, "KG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_5

    .line 554
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPopPaper()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 555
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->contentPlayToMetadata(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showLoginDialog(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_1

    .line 544
    :cond_5
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->finishTMEMainActivity()V

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genie://com.alibaba.ailabs.genie.musicplayer.tme/page/tme_main?showScene=bind&source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&showBenefits="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 548
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 551
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->finishMainActivity()V

    :cond_6
    :goto_1
    return-void
.end method

.method private processContentPlay()V
    .locals 5

    .line 498
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v0

    .line 500
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 501
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissLoadingDialog()V

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPopPaper()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPopPaper()Ljava/lang/String;

    move-result-object v1

    const-string v2, "binding_can_receive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "hasShow"

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 505
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->canReceive:Z

    .line 506
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCanPlay()Z

    move-result v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getRightImage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showRightAccountDialog(Ljava/lang/String;ZLjava/lang/String;)V

    .line 507
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setPopPaper(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPopPaper()Ljava/lang/String;

    move-result-object v1

    const-string v2, "binding_not_receive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 509
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->canReceive:Z

    .line 510
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCanPlay()Z

    move-result v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getRightImage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showRightAccountDialog(Ljava/lang/String;ZLjava/lang/String;)V

    .line 511
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setPopPaper(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 514
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isNeedLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->intentProcessForContent(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissLoginDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showEmptyFragment(Ljava/lang/String;)V
    .locals 2

    .line 167
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 170
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->fyContentId:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 171
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 118
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemType is null, contentPlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getToast()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->no_play_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setToast(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->setMusicShowFragment(J)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->hasShowedContent:Z

    .line 131
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->hasShowedContent:Z

    if-eqz v0, :cond_1

    const-string p1, "showFragment hasShowedContent return"

    .line 132
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "realDataShowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->realDataShowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->realDataShowed:Z

    if-eqz v0, :cond_2

    const-string p1, "showFragment realDataShowed return"

    .line 140
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_2
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    const-string v0, "showFragment contentPlay show "

    .line 146
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;-><init>()V

    .line 152
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    .line 153
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 154
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->setController(Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 157
    :cond_3
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->fyContentId:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 158
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    :cond_5
    :goto_0
    return-void

    .line 125
    :cond_6
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->no_play_hint:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private showRightAccountDialog(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 579
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->setClickListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;)V

    .line 600
    invoke-virtual {v0, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$Builder;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    .line 601
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$MainActivity$R1Qkg6ZkvF9YJMpMrSEUgQ9Urco;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$MainActivity$R1Qkg6ZkvF9YJMpMrSEUgQ9Urco;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;Z)V

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 606
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mRightAccountDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog;->show()V

    :cond_0
    return-void
.end method

.method private startGesture()V
    .locals 5

    const-string v0, "MainActivity"

    const-string v1, "startGesture"

    .line 395
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    .line 397
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u4e0b\u4e00\u66f2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 398
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u4e0a\u4e00\u66f2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u64ad\u653e"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u6682\u505c"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x10

    .line 401
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u8fd4\u56de"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\u6536\u85cf"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mGestureClient:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    const/16 v3, 0x3f

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->onGestureListener:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;

    invoke-virtual {v2, v3, v1, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->start(ILjava/util/Map;Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 407
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 300
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "MainActivity"

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->onActionUp(Landroid/view/MotionEvent;)V

    :cond_2
    const-string v0, "dispatchTouchEvent,ACTION_UP"

    .line 307
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_4
    const-string v0, "dispatchTouchEvent,ACTION_DOWN"

    .line 313
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected handError(Ljava/lang/Integer;)V
    .locals 0

    .line 474
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissLoadingDialog()V

    return-void
.end method

.method protected handMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setIsRequesting(Z)V

    if-nez p1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissLoadingDialog()V

    return-void

    :cond_0
    const-string p1, " handMetadata processContentPlay show "

    .line 492
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->processContentPlay()V

    const/4 p1, 0x1

    .line 494
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->realDataShowed:Z

    return-void
.end method

.method public handleBack()V
    .locals 4

    const-string v0, "MainActivity"

    const-string v1, "handleBack"

    .line 86
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getGlobalSongList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "quit"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "escapepod_back"

    .line 92
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendStatCheckListLog(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->finish()V

    :cond_1
    return-void
.end method

.method public handleExtraChanged(Landroid/os/Bundle;)V
    .locals 1

    .line 479
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handleExtraChanged(Landroid/os/Bundle;)V

    .line 480
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->updateExtra(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public handlePlayState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 437
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handlePlayState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 438
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    .line 439
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getPlayState()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 420
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handleSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "sessionEvent"

    .line 421
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "position"

    .line 422
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "duration"

    .line 423
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 424
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getDuration()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    add-int/lit16 v0, p1, 0x320

    if-le v0, p2, :cond_0

    .line 428
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getProgress()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getProgress()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;
    .locals 2

    .line 106
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    return-object v0
.end method

.method public synthetic lambda$new$40$MainActivity(I)V
    .locals 0

    .line 411
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->handleGesture(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$39$MainActivity(Ljava/lang/Boolean;)V
    .locals 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHandleCreateListData,aBoolean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setIsRequesting(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissLoadingDialog()V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandleCreateListData,handContentPlay:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->handContentPlayWithoutLogin()V

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->realDataShowed:Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$showRightAccountDialog$41$MainActivity(ZLandroid/content/DialogInterface;)V
    .locals 0

    if-nez p1, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onBackPressed()V

    const-string v0, "MainActivity"

    const-string v1, "onBackPressed"

    .line 113
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const-string v0, "MainActivity onCreate--begin"

    .line 177
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->setMusicCreateStart(J)V

    .line 179
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->setNeedViewReport(Z)V

    .line 180
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getHandleCreateListData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$MainActivity$501rQ23bkWNBKq45JbLnkvx6Gco;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$MainActivity$501rQ23bkWNBKq45JbLnkvx6Gco;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)V

    invoke-virtual {p1, p0, v0}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 193
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->music_activity_unity:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->setContentView(I)V

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "UIThread"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->clearAllActivity()V

    .line 196
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->addActivity(Landroid/app/Activity;)V

    .line 197
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mGestureClient:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 202
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCreate--  uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v2

    if-nez v0, :cond_1

    const-string p1, "MainActivity"

    const-string v0, "uri is null"

    .line 206
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string p1, " onCreate-- handContentPlay contentPlay start "

    .line 208
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->handContentPlay()V

    const-string p1, " onCreate-- handContentPlay contentPlay end"

    .line 210
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 212
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->setMusicType(I)V

    goto :goto_2

    .line 214
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->setMusicType(I)V

    const-string v1, "itemType"

    .line 215
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onCreate--  itemType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    const-string v3, "onCreate showEmptyFragment start "

    .line 219
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    if-nez v2, :cond_3

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showEmptyFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showEmptyFragment(Ljava/lang/String;)V

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showLoadingDialog()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 229
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setCollect(Z)V

    const-string v3, ""

    .line 230
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setPopPaper(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setNeedLogin(Z)V

    if-eqz v2, :cond_4

    .line 234
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->handContentPlay()V

    .line 237
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->processUri(Landroid/net/Uri;Ljava/lang/String;)V

    :goto_2
    const-string p1, "MainActivity onCreate--end"

    .line 240
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "onDestroy"

    .line 336
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->hasShowedContent:Z

    .line 338
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->realDataShowed:Z

    .line 339
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissRightAccountDialog()V

    .line 340
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->get()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->onDestroy()V

    .line 343
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mGestureClient:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->stop()V

    .line 347
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mGestureClient:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    .line 349
    :cond_1
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    .line 350
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    .line 351
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->delayStopGestureRunnable:Ljava/lang/Runnable;

    .line 352
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onMediaSessionConnected()V
    .locals 4

    const-string v0, "onMediaSessionConnected"

    const-string v1, "MainActivity"

    .line 444
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getPendingIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 447
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_4

    .line 450
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->setController(Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    .line 454
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    .line 457
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->isRequesting()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    const-string v0, "onMediaSessionConnected setMetadata "

    .line 459
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_2
    if-eqz v2, :cond_4

    .line 464
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->handlePlayState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    :cond_3
    const-string v1, "isRequesting"

    .line 467
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "MainActivity"

    const-string v1, "onNewIntent"

    .line 246
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "enter onNewIntent"

    .line 247
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 249
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->finishPlayListActivity()V

    .line 250
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "onNewIntent showFragment begin"

    .line 257
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 259
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissLoadingDialog()V

    const-string v3, "onNewIntent can dismiss here"

    .line 260
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    const-string v3, "uri is null"

    .line 266
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    const-string v3, "speed"

    .line 267
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getSpeed()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showLoadingDialog()V

    const-string v5, "cmd"

    .line 274
    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 276
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 278
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",  uri = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->dismissLoadingDialog()V

    :cond_4
    const-string p1, "onNewIntent processUri dataString"

    .line 282
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->processUri(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needLogin:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isNeedLogin()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isNeedLogin()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isNeedLogin()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->realDataShowed:Z

    if-nez p1, :cond_7

    .line 290
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->intentProcessForContent(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    goto :goto_1

    :cond_6
    const-string p1, "contentPlay is null"

    .line 293
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 323
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onPause()V

    const-string v0, "MainActivity"

    const-string v1, "onPause"

    .line 324
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/App;->setIsMainActivityInForeground(Z)V

    .line 328
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->hasShowedContent:Z

    .line 329
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->realDataShowed:Z

    .line 330
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->delayStopGestureRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->delayStopGestureRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "onResume"

    const-string v1, "MainActivity"

    .line 364
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onResume()V

    .line 368
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->setMainActivity(Landroid/app/Activity;)V

    .line 369
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/App;->setIsMainActivityInForeground(Z)V

    .line 370
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    const-string v0, "onResume contentPlay"

    .line 371
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mBrowser.isConnected() is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 378
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->handleExtraChanged(Landroid/os/Bundle;)V

    .line 379
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->handlePlayState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->startGesture()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 387
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 357
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onStop()V

    const-string v0, "onStop"

    const-string v1, "MainActivity"

    .line 358
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 415
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onWindowFocusChanged(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public payFailed(Ljava/lang/String;)V
    .locals 1

    const-string p1, "MainActivity"

    const-string v0, "Main payFailed"

    .line 570
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getCommonLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public paySuccess(Ljava/lang/String;)V
    .locals 1

    const-string p1, "MainActivity"

    const-string v0, "Main paySuccess"

    .line 564
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getCommonLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
