.class Lcom/alibaba/ailabs/genie/genieui/GenieUiController;
.super Ljava/lang/Object;
.source "GenieUiController.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;
.implements Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;
.implements Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/GenieUiController$InstanceHolder;
    }
.end annotation


# static fields
.field private static final ADULT_HOME_ACTIVITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity"

.field private static final GENIE_BALL:I = 0x64

.field private static final MESSAGE_HIDE_GENIE_BALL:I = 0x1

.field private static final MESSAGE_SHOW_TIPS_AFTER_2S:I = 0x2

.field private static final MUSIC_PLAYER_ACTIVITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.musicplayer.activity.MainActivity"

.field private static final S4_ASR_BG_LODING_WIDTH:I = 0xa0

.field private static final S4_ASR_BG_WIDTH:I = 0x86

.field private static final S4_MAX_WIDTH:I = 0x398

.field private static final S4_MIN_WIDTH:I = 0x60

.field private static final TAG:Ljava/lang/String; = "GenieUiController"

.field public static final TYPE_LOCK:I = 0x2


# instance fields
.field private asrBgAnimation:Landroid/animation/ValueAnimator;

.field private asrBgView:Landroid/view/View;

.field private asrContainer:Landroid/widget/FrameLayout;

.field private asrContainerLoadingWidth:I

.field private asrContainerMaxWidth:I

.field private asrContainerMinWidth:I

.field private asrContainerPaddingRight:I

.field private ballController:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bgView:Landroid/view/View;

.field private changeStatusReqDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

.field private currentStatusForTouch:I

.field private genieView:Landroid/view/View;

.field private hasInit:Z

.field private hasLoadComplete:Z

.field private hideAfterSessionEnd:Z

.field private keepShowActivity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadingView:Landroid/widget/ImageView;

.field private lockTimeOut:J

.field private loginStatus:Z

.field private mBallDecoration:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

.field private mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private playNextRunnable:Ljava/lang/Runnable;

.field private sessionEndHideAnim:Landroid/animation/ObjectAnimator;

.field private talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

.field private tvASR:Landroid/widget/TextView;

.field private uiControlHandler:Landroid/os/Handler;

.field private wakeupTipsEnable:Z

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loginStatus:Z

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    .line 91
    new-instance v2, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    const-wide/16 v2, -0x1

    .line 94
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->lockTimeOut:J

    .line 98
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wakeupTipsEnable:Z

    .line 99
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hasLoadComplete:Z

    .line 103
    iput v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatusForTouch:I

    .line 256
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    .line 257
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->playNextRunnable:Ljava/lang/Runnable;

    .line 920
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hasInit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMaxWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->showTipsAfter2s()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->tvASR:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMinWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerPaddingRight:I

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatusForTouch:I

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->playGenieTalkAnimation()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->keepShowActivity:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeGenieViewVisible(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private addWindow()V
    .locals 5

    .line 755
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 756
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mWindowManager:Landroid/view/WindowManager;

    .line 758
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x7d3

    .line 759
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x1080028

    .line 761
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 763
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x53

    .line 766
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 769
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 770
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, -0x2

    .line 772
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 773
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS4A02()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x97

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 780
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$layout;->layout_genie_assistant_bar:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    .line 781
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    const/16 v2, 0x700

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "genieui-main"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_assistant_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    .line 788
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    const-string v2, "ball"

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setTag(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setFrameFPS(I)V

    .line 790
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v3, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_assistant_decoration:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mBallDecoration:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    .line 791
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mBallDecoration:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setFrameFPS(I)V

    .line 792
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mBallDecoration:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    const-string v2, "decoration"

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setTag(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_assistant_click_contianer:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$6;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$6;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_assistant_click:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$7;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$7;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_assistant_text_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainer:Landroid/widget/FrameLayout;

    .line 825
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_assistant_asr_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->tvASR:Landroid/widget/TextView;

    .line 826
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_assistant_loading_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    .line 833
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$id;->asr_container_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgView:Landroid/view/View;

    .line 835
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS4A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 837
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x64

    .line 838
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 839
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x60

    .line 841
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x86

    .line 842
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, 0x4

    const/16 v4, 0x10

    .line 843
    invoke-virtual {v0, v3, v1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v3, 0x6

    const/16 v4, 0x14

    .line 844
    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 845
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 850
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 848
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 852
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->bgView:Landroid/view/View;

    .line 853
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->bgView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$drawable;->genie_ui_wakeup_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 854
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->bgView:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 855
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->bgView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$8;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private changeBallStatus(II)V
    .locals 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " genieView.getVisibility() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const-string v0, "changeBallStatus changeGenieViewVisible(true)"

    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 221
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeGenieViewVisible(Z)V

    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeBallStatus return oldStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " status = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-ne p1, v2, :cond_3

    .line 230
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isInsideShowing()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 231
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hideGenieInside()V

    .line 233
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getInstance()Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getAnimationEntry(I)Ljava/util/List;

    move-result-object p1

    .line 234
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 237
    :cond_4
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 238
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playAnimationSet(Ljava/util/List;)V

    return-void
.end method

.method private changeBgStatus(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V
    .locals 7

    .line 417
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setGenieTalkEnable(Z)V

    .line 418
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 419
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setShowInside(Z)V

    .line 420
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->showGenieInside()V

    .line 422
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x2

    const-string v2, "GenieUiController"

    if-ne p1, v0, :cond_9

    .line 423
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "[/]"

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    .line 427
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getInstance()Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getDisableWakeupTipsActivity()Ljava/util/List;

    move-result-object v5

    .line 428
    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeBgStatus: configDisable 1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getInstance()Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getDisableWakeupTipsPackage()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p1, v0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeBgStatus: configDisable 2="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 433
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeBgStatus: talkController.needShowBg() = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->needShowBg()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " !configDisable = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " wakeupTipsEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wakeupTipsEnable:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_8

    .line 435
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wakeupTipsEnable:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->needShowBg()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 437
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isInsideShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 438
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hideGenieInside()V

    :cond_7
    const-string p1, " changeBgStatus: sendMessages "

    .line 441
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 443
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setShowInside(Z)V

    .line 446
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->bgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_b

    .line 447
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 448
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x7d8

    .line 449
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 450
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->bgView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 454
    :cond_9
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->bgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 455
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->bgView:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_a
    const-string p1, " changeBgStatus: removeMessages "

    .line 457
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->changeStatus(Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method private changeDecorationStatus(I)V
    .locals 2

    .line 621
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getInstance()Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getDecoration(I)Ljava/util/List;

    move-result-object p1

    .line 622
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mBallDecoration:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->stop()V

    .line 624
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mBallDecoration:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setVisibility(I)V

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mBallDecoration:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setVisibility(I)V

    .line 628
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 629
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mBallDecoration:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playAnimationSet(Ljava/util/List;)V

    return-void
.end method

.method private changeGenieViewVisible(Z)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 670
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loginStatus:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 671
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->sessionEndHideAnim:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 672
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 674
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeGenieViewVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GenieUiController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0xc8

    const-string/jumbo v4, "scaleY"

    const-string/jumbo v5, "scaleX"

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v8, 0x2

    if-eqz p1, :cond_4

    .line 676
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    invoke-virtual {p1, v9}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setPivotX(F)V

    .line 677
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v7}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setPivotY(F)V

    .line 678
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->requestLayout()V

    const/4 p1, 0x0

    const-string v6, "Genie_ball"

    const-string v7, "a1z3lt.b90280894"

    .line 679
    invoke-static {v6, v6, v7, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/CommonUtil;->exposureUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 681
    new-array p1, v8, [F

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getScaleX()F

    move-result v6

    aput v6, p1, v1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, p1, v0

    invoke-static {v5, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 682
    new-array v5, v8, [F

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getScaleY()F

    move-result v7

    aput v7, v5, v1

    aput v6, v5, v0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 683
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    new-array v6, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v6, v1

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->sessionEndHideAnim:Landroid/animation/ObjectAnimator;

    .line 684
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->sessionEndHideAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 685
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->sessionEndHideAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$4;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$4;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 706
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->sessionEndHideAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 707
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_assistant_click_contianer:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v2

    if-eq v2, v0, :cond_3

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 709
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 708
    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setGenieTalkEnable(Z)V

    goto :goto_2

    .line 711
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    invoke-virtual {p1, v9}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setPivotX(F)V

    .line 712
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v7}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setPivotY(F)V

    .line 713
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->requestLayout()V

    .line 714
    new-array p1, v8, [F

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getScaleX()F

    move-result v6

    aput v6, p1, v1

    const/4 v6, 0x0

    aput v6, p1, v0

    invoke-static {v5, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 715
    new-array v5, v8, [F

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getScaleY()F

    move-result v7

    aput v7, v5, v1

    aput v6, v5, v0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 716
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    new-array v6, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v6, v1

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->sessionEndHideAnim:Landroid/animation/ObjectAnimator;

    .line 717
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->sessionEndHideAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 718
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->sessionEndHideAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$5;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 739
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->sessionEndHideAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 740
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/genieui/R$id;->genie_assistant_click_contianer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->changeStatus(Z)V

    .line 742
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setGenieTalkEnable(Z)V

    :goto_2
    return-void
.end method

.method private changeTextStatus(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/4 v3, 0x6

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 596
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 598
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->updateASRText(Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;)V

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 607
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    .line 608
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 610
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMinWidth:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 611
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 612
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 601
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 602
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 603
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;-><init>()V

    .line 604
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->setText(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->updateASRText(Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;)V

    goto :goto_4

    .line 573
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 574
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wakeupTipsEnable:Z

    if-eqz p2, :cond_6

    .line 576
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    .line 579
    :cond_6
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    :goto_2
    new-instance p2, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;-><init>()V

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->updateASRText(Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;)V

    if-ne p1, v0, :cond_8

    .line 583
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    .line 585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "[/]"

    .line 586
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const-string p1, "com.alibaba.ailabs.smartapp"

    .line 591
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeTextStatus: packageName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pageName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.alibaba.ailabs.genie.WakeUp"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "GenieUiController"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p2, p1, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateCorpus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private changeTouchStatus(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V
    .locals 2

    .line 368
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 369
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 370
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 372
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatusForTouch:I

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatusForTouch:I

    :cond_2
    return-void
.end method

.method private dealHideUi(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V
    .locals 4

    const-string v0, "GenieUiController"

    const-string v1, "dealHideUi"

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    .line 386
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 393
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 394
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    .line 395
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 396
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->scheduleList(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    .line 397
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    if-eqz p1, :cond_2

    const-string p1, "dealHideUi false"

    .line 398
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 399
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideUI(Z)V

    goto :goto_1

    .line 387
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealHideUi req.getStatus = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " hideAfterSessionEnd = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    if-eqz p1, :cond_2

    .line 389
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return-void
.end method

.method static getInstance()Lcom/alibaba/ailabs/genie/genieui/GenieUiController;
    .locals 1

    .line 917
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$InstanceHolder;->instance:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    return-object v0
.end method

.method private getMute()Z
    .locals 4

    .line 883
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 885
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x3

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    .line 886
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0

    .line 888
    :cond_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMute()Z
    .locals 2

    const-string v0, "persist.sys.audio.ali_mic_mute"

    .line 878
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getMute()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private playGenieTalkAnimation()V
    .locals 5

    .line 405
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setPivotX(F)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->setPivotY(F)V

    .line 407
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->requestLayout()V

    const/4 v0, 0x3

    .line 408
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string/jumbo v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 409
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const-string/jumbo v2, "scaleY"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 410
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mGenieBallView:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 411
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x258

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 413
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playRippleAnimation()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private showText(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private showTipsAfter2s()V
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->changeStatus(Z)V

    const-string v0, "GenieUiController"

    const-string/jumbo v1, "\u5524\u91922s\u672a\u68c0\u6d4b\u5230\u8bed\u97f3\u8f93\u5165\uff0c\u663e\u793a\u5f15\u5bfc\u8bed\u6599"

    .line 979
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public changeStatus(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V
    .locals 5
    .param p1    # Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hasLoadComplete:Z

    const-string v1, "GenieUiController"

    if-nez v0, :cond_1

    const-string p1, "changeStatus: not load complete"

    .line 339
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loginStatus:Z

    if-nez v0, :cond_2

    return-void

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v0

    .line 347
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeDecorationStatus(I)V

    .line 348
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getTips()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeTextStatus(ILjava/lang/String;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeBgStatus(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    .line 350
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeTouchStatus(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    .line 351
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->dealHideUi(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    .line 352
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeBallStatus(II)V

    .line 353
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 354
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 355
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 357
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->lockTimeOut:J

    .line 359
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->playNextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->playNextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 362
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeToNext()V

    :goto_0
    return-void
.end method

.method public changeToNext()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatus(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    return-void
.end method

.method public checkStatusInvalid(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)Z
    .locals 10

    .line 159
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    .line 161
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->ballController:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v5, "GenieUiController"

    const/4 v6, 0x1

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 163
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 165
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getWho()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->ballController:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkStatusInvalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v8

    if-lt v8, v3, :cond_1

    .line 170
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v8

    if-gt v8, v2, :cond_1

    .line 172
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getWho()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->ballController:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 177
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->ballController:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getWho()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStatusInvalid: \u5f53\u524d\u7cbe\u7075\u7403\u7684\u63a7\u5236\u8005\u662f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->ballController:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getWho()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5c1d\u8bd5\u63a7\u5236\u5931\u8d25 newStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    if-eq v0, v6, :cond_4

    const-string p1, "checkStatusInvalid: MUTE\u7684\u4e0b\u4e00\u4e2a\u72b6\u6001\u53ea\u80fd\u662fDEFAULT"

    .line 186
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    return v4

    .line 192
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkStatusInvalid: the same status :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6
    if-ne v0, v3, :cond_7

    const-string p1, "checkStatusInvalid: \u5141\u8bb8\u91cd\u65b0\u5f00\u9ea6"

    .line 197
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 201
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    if-ne v0, v6, :cond_8

    const-string/jumbo p1, "\u7b49\u5f85\u8fc7\u7a0b\u4e2d\u88ab\u6062\u590d"

    .line 204
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 208
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_9

    .line 209
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    if-ge v0, p1, :cond_9

    const-string p1, "checkStatusInvalid: ASR\u72b6\u6001\u4e0d\u5141\u8bb8\u5012\u9000"

    .line 210
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_9
    return v4
.end method

.method public getBallController()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->ballController:Ljava/lang/String;

    return-object v0
.end method

.method public hideUI(Z)V
    .locals 3

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideUI(),keepShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 649
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    .line 650
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideUI(),hideAfterSessionEnd = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentStatus.getStatus() = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 655
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 656
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->keepShowActivity:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 659
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->context:Landroid/content/Context;

    .line 660
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->isMemberType(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const-string p1, "hideUI(),changeGenieViewVisible(false)"

    .line 661
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 662
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeGenieViewVisible(Z)V

    .line 663
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setGenieTalkEnable(Z)V

    :cond_4
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 923
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hasInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 926
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hasInit:Z

    .line 927
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->context:Landroid/content/Context;

    .line 928
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 929
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->addWindow()V

    .line 930
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->setActivityChangeListener(Lcom/alibaba/ailabs/genie/genieui/interfaces/IActivityChangeListener;)V

    .line 931
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->setWindowChangeListener(Lcom/alibaba/ailabs/genie/genieui/interfaces/IWindowChangeListener;)V

    .line 932
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;->setTouchStartListener(Lcom/alibaba/ailabs/genie/genieui/interfaces/ITouchStartListener;)V

    .line 933
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    .line 934
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$9;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$9;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setOnGenieTalkShowListener(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$OnGenieTalkShowListener;)V

    .line 940
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_text_container_loading_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerLoadingWidth:I

    .line 941
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_text_container_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMinWidth:I

    .line 942
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_asr_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerPaddingRight:I

    .line 944
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS4A02()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xa0

    .line 945
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerLoadingWidth:I

    const/16 p1, 0x398

    .line 946
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMaxWidth:I

    const/16 p1, 0x60

    .line 947
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMinWidth:I

    goto :goto_0

    .line 949
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/genieui/R$dimen;->genie_ui_text_container_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMaxWidth:I

    .line 951
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$10;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$10;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    return-void
.end method

.method public isUiShow()Z
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityChange(Ljava/lang/String;)V
    .locals 2

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenieUiController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 749
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->bgView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->onDestroy()V

    return-void
.end method

.method public onLoadComplete()V
    .locals 4

    const-string v0, "GenieUiController"

    const-string v1, "onLoadComplete: "

    .line 898
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 899
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hasLoadComplete:Z

    .line 900
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getInstance()Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getKeepShowActivity()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->keepShowActivity:Ljava/util/List;

    .line 901
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v2, "com.alibaba.ailabs.genie.smartapp"

    const-string v3, "com.alibaba.ailabs.genie.launcher.adult.AdultHomeActivity"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateCorpus(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 903
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object v1

    .line 904
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->keepShowActivity:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    .line 907
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v1

    if-gez v1, :cond_4

    .line 908
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    if-nez v1, :cond_4

    .line 909
    new-instance v1, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    .line 910
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->isMute()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x8

    :cond_3
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 911
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->scheduleList(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    :cond_4
    return-void
.end method

.method public onTouchStart()V
    .locals 2

    const-string v0, "GenieUiController"

    const-string v1, "onTouchStart: "

    .line 1023
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    if-nez v1, :cond_0

    const-string v1, " talkController is null "

    .line 1025
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1028
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->resetGenieTalk()V

    .line 1029
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hideGenieInside()V

    return-void
.end method

.method public onWindowChange(Ljava/lang/String;)V
    .locals 6

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->setCurrentPage(Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->keepShowActivity:Ljava/util/List;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keep ball show: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    .line 989
    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->showUI(Z)V

    .line 990
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v0

    if-gez v0, :cond_1

    .line 991
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    .line 992
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->isMute()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 993
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->scheduleList(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setShowInside(Z)V

    goto :goto_1

    .line 997
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide ball : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideUI(Z)V

    .line 999
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setShowInside(Z)V

    .line 1001
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1002
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setShowInside(Z)V

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "com.alibaba.ailabs.genie.childrenmodel.home.view.ChildrenHomeActivity"

    .line 1006
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1007
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->clean()V

    goto :goto_2

    :cond_4
    const-string v0, "[/]"

    .line 1009
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1010
    aget-object v0, p1, v3

    const-string v1, "com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1012
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v0, "com.alibaba.ailabs.genie.smartapp"

    const-string v1, "com.alibaba.ailabs.genie.launcher.adult.AdultHomeActivity"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateCorpus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1013
    :cond_5
    aget-object v0, p1, v3

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.activity.MainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1014
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    aget-object v1, p1, v4

    aget-object p1, p1, v3

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateCorpus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->resetHasBeenShowed(Z)V

    return-void
.end method

.method public promptMessage(Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;)V
    .locals 3

    .line 242
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    const/4 v1, 0x1

    .line 243
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setType(I)V

    .line 244
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setDuration(J)V

    .line 245
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setTips(Ljava/lang/String;)V

    const/16 p1, 0xb

    .line 246
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->scheduleList(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    return-void
.end method

.method public scheduleList(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V
    .locals 6

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GenieUiController"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->checkStatusInvalid(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "changeStatus: \u72b6\u6001\u6821\u9a8c\u5931\u8d25"

    .line 268
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before clean:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 277
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v5

    if-nez v5, :cond_3

    .line 278
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v4, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    const-string v0, "1111111"

    .line 280
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v0

    if-nez v0, :cond_6

    .line 283
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v4, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    const-string v0, "22222222"

    .line 285
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v4, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    const-string v0, "33333333333"

    .line 290
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 295
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "44444444444"

    .line 297
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "55555555555555"

    .line 300
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheduleList2222: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    .line 306
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    .line 307
    :goto_1
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v5

    if-ne v5, v3, :cond_9

    .line 308
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    if-eq p1, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    and-int p1, v3, v0

    goto :goto_4

    .line 309
    :cond_9
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result v5

    if-ne v5, v1, :cond_b

    .line 310
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    if-eq p1, v3, :cond_a

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_3
    move p1, v3

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_c

    .line 315
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    .line 316
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 317
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setType(I)V

    const-wide/16 v0, 0x320

    .line 318
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setDuration(J)V

    .line 319
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeStatusReqDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v4, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 321
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->isInsideShowing()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 322
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->hideGenieInside()V

    .line 325
    :cond_c
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getType()I

    move-result p1

    if-ne p1, v2, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->lockTimeOut:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_e

    .line 326
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeToNext()V

    :cond_e
    return-void
.end method

.method public setLoginStatus(Z)V
    .locals 4

    .line 119
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loginStatus:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLoginStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loginStatus:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 125
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeGenieViewVisible(Z)V

    .line 127
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    :cond_1
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hasLoadComplete:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loginStatus:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->currentStatus:Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->getStatus()I

    move-result p1

    if-lez p1, :cond_4

    const-string/jumbo p1, "setLoginStatus: 1111"

    .line 131
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->keepShowActivity:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 134
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    const-string/jumbo p1, "setLoginStatus: 2222"

    .line 135
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeGenieViewVisible(Z)V

    const-string/jumbo p1, "setLoginStatus: 33333"

    .line 137
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    .line 139
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->isMute()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->scheduleList(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "setLoginStatus: 444444"

    .line 142
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    .line 144
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeGenieViewVisible(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setWakeupRecommendEnable(Z)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->setWakeupTipsEnable(Z)V

    .line 252
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wakeupTipsEnable:Z

    return-void
.end method

.method public showUI(Z)V
    .locals 3

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showUI(),keepShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 635
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    .line 636
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideAfterSessionEnd:Z

    .line 638
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showUI(),getCurrentPage:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->genieView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->keepShowActivity:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 640
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.alibaba.ailabs.genie.launcher.activity.ChannelActivity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 641
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeGenieViewVisible(Z)V

    const-string/jumbo p1, "showUI(),changeGenieViewVisible(true)"

    .line 642
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public updateASRText(Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 470
    :goto_0
    iget v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMinWidth:I

    .line 471
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->talkController:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {v4, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->changeStatus(Z)V

    .line 472
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, "GenieUiController"

    const/16 v7, 0x8

    if-eqz v4, :cond_4

    .line 473
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgAnimation:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 474
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 476
    :cond_2
    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->wakeupTipsEnable:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 478
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerLoadingWidth:I

    .line 479
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMinWidth:I

    :goto_1
    move v3, v0

    .line 484
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->tvASR:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const-string v0, " when someone is talking "

    .line 488
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->uiControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->tvASR:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 491
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->tvASR:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    :goto_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->tvASR:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 498
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 499
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMinWidth:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerPaddingRight:I

    add-int/2addr v0, v4

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    if-ge v0, v3, :cond_7

    move v0, v3

    .line 504
    :cond_7
    iget v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMaxWidth:I

    if-le v0, v4, :cond_8

    move v0, v4

    .line 507
    :cond_8
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v4, v4

    mul-float v4, v4, v7

    .line 508
    iget v7, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainerMaxWidth:I

    sub-int/2addr v7, v3

    int-to-float v3, v7

    div-float/2addr v4, v3

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateASRText: scale="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgAnimation:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_9

    .line 511
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 513
    :cond_9
    new-array v3, v5, [I

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v5, v3, v2

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgAnimation:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x43960000    # 300.0f

    mul-float v4, v4, v0

    float-to-long v0, v4

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    move-wide v0, v2

    .line 518
    :cond_a
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS4A02()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 519
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 521
    :cond_b
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 522
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 523
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$2;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 531
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$3;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 564
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->asrBgAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
