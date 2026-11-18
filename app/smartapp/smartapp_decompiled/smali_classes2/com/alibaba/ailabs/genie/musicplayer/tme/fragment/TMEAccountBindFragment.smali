.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "TMEAccountBindFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final NE_QR_QR_CODE:Ljava/lang/String; = "https://market.m.taobao.com/app/genie-h5/content-mini-app-h5/pages/index/index.html#/bindPage?source=NE&appId=200"

.field private static final TAG:Ljava/lang/String; = "TME-AccountBindFragment"


# instance fields
.field private final TYPE_LONG:I

.field private final TYPE_NEXT:I

.field private final TYPE_REQUEST:I

.field private final TYPE_SHORT:I

.field private accountProtocolTv:Landroid/widget/TextView;

.field private accountProtocolTvCenter:Landroid/widget/TextView;

.field private accountProtocolTvWechat:Landroid/widget/TextView;

.field private backImg:Landroid/widget/ImageView;

.field private bindMore:Landroid/widget/RelativeLayout;

.field callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

.field callbackWechat:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

.field private canShowBindMoreBtn:Z

.field private clickRefreshTip:Landroid/widget/TextView;

.field private clickRefreshTipCenter:Landroid/widget/TextView;

.field private clickRefreshTipWechat:Landroid/widget/TextView;

.field private invalid:Z

.field private invalidWechat:Z

.field private loginProtocolTv:Landroid/widget/TextView;

.field private loginProtocolTvCenter:Landroid/widget/TextView;

.field private loginProtocolTvWechat:Landroid/widget/TextView;

.field loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

.field loopLeapWechat:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

.field private mAppId:Ljava/lang/String;

.field private mItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;

.field private mNeedRefresh:Z

.field private mShowAccountBenefitsDialog:Z

.field private mShowFirst:Z

.field private mSource:Ljava/lang/String;

.field private operatingAnim:Landroid/view/animation/Animation;

.field private qrCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

.field private qrCodeText1:Landroid/widget/TextView;

.field private qrCodeText1Center:Landroid/widget/TextView;

.field private qrCodeText1Wechat:Landroid/widget/TextView;

.field private qrcodeImage:Landroid/widget/ImageView;

.field private qrcodeImageCenter:Landroid/widget/ImageView;

.field private qrcodeImageWechat:Landroid/widget/ImageView;

.field private qrcodeLayoutCenter:Landroid/widget/RelativeLayout;

.field private qrcodeLayoutLeft:Landroid/widget/RelativeLayout;

.field private qrcodeLayoutLeftBg:Landroid/widget/ImageView;

.field private qrcodeLayoutRight:Landroid/widget/RelativeLayout;

.field private qrcodeRefresh:Landroid/widget/ImageView;

.field private qrcodeRefreshCenter:Landroid/widget/ImageView;

.field private qrcodeRefreshWechat:Landroid/widget/ImageView;

.field private shouldShowTitle:Z

.field private status:I

.field private statusWechat:I

.field private textAddText:Landroid/widget/TextView;

.field private textAddTextCenter:Landroid/widget/TextView;

.field private textAddTextWechat:Landroid/widget/TextView;

.field private timeLoopUtil:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

.field private titleTv:Landroid/widget/TextView;

.field private wechatQRCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

.field private wechatTimeLoopUtil:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    const/16 v0, 0x457

    .line 50
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->TYPE_REQUEST:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->TYPE_SHORT:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->TYPE_LONG:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->TYPE_NEXT:I

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->shouldShowTitle:Z

    .line 62
    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->status:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->statusWechat:I

    .line 63
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowFirst:Z

    .line 69
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalid:Z

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalidWechat:Z

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->canShowBindMoreBtn:Z

    .line 71
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowAccountBenefitsDialog:Z

    .line 72
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mNeedRefresh:Z

    .line 549
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    .line 570
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loopLeapWechat:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    .line 589
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    .line 623
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->callbackWechat:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    const/16 v0, 0x457

    .line 50
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->TYPE_REQUEST:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->TYPE_SHORT:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->TYPE_LONG:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->TYPE_NEXT:I

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->shouldShowTitle:Z

    .line 62
    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->status:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->statusWechat:I

    .line 63
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowFirst:Z

    .line 69
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalid:Z

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalidWechat:Z

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->canShowBindMoreBtn:Z

    .line 71
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowAccountBenefitsDialog:Z

    .line 72
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mNeedRefresh:Z

    .line 549
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    .line 570
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loopLeapWechat:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    .line 589
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    .line 623
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->callbackWechat:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNetEase()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setNEProtocolClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->bindingSuccess(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setProtocolClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->request(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStop()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeInvalid()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->requestWechat(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStopWechat()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeInvalidWechat()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method private animCreat()V
    .locals 2

    .line 828
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$anim;->revolve:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    .line 829
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 830
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private animStart()V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 835
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animCreat()V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefresh:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animStartCenter()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animCreat()V

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshCenter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animStartWechat()V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animCreat()V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshWechat:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animStop()V
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 842
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefresh:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private animStopCenter()V
    .locals 3

    .line 853
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshCenter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 854
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshCenter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private animStopWechat()V
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshWechat:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 866
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshWechat:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private beatRequest()V
    .locals 5

    .line 694
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNetEase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;-><init>()V

    .line 696
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mAppId:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$6;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$6;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    const-string v4, "audio"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;->queryUserInfoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    if-eqz v0, :cond_1

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query QRCode Auth Ticket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-AccountBindFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;-><init>()V

    .line 718
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getTicket()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;->queryQrcodeAuth(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private beatStop()V
    .locals 1

    const/4 v0, 0x0

    .line 870
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->status:I

    .line 871
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->timeLoopUtil:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop()V

    return-void
.end method

.method private beatStopWechat()V
    .locals 1

    const/4 v0, 0x0

    .line 875
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->statusWechat:I

    .line 876
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->wechatTimeLoopUtil:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->stop()V

    return-void
.end method

.method private bindingSuccess(Ljava/lang/String;)V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 493
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowFirst:Z

    const/4 v1, 0x0

    const-string v2, "refresh"

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 495
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isShowAccountBenefitsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->showActivateBenefitsDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNeedRefresh()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 499
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_1

    .line 500
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isShowAccountBenefitsDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->showActivateBenefitsDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNeedRefresh()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 513
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_4

    .line 514
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 516
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 518
    :cond_5
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->jumpToChannelFragment(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private initClick()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->backImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$dBNExIZanZeEmi2jfnCe19DuKSw;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$dBNExIZanZeEmi2jfnCe19DuKSw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefresh:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$jVBHlrB-YrPkhxdIFM-suE-9Zzs;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$jVBHlrB-YrPkhxdIFM-suE-9Zzs;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTip:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$f63tsSWXeSTIFyjTwM09cW0-V6Q;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$f63tsSWXeSTIFyjTwM09cW0-V6Q;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$KmFA_7ypSKob8BOJkjIOTFMezHg;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$KmFA_7ypSKob8BOJkjIOTFMezHg;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshWechat:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$6yVC-7SRKp34C_Z1dSU1GEcMI_I;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$6yVC-7SRKp34C_Z1dSU1GEcMI_I;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTipWechat:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$z2NHRnMQfO8qXGIAWhU5Pl9OqMY;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$z2NHRnMQfO8qXGIAWhU5Pl9OqMY;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageWechat:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$7NjK8NTzVSD58L-0c5jvRjXQRIQ;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$7NjK8NTzVSD58L-0c5jvRjXQRIQ;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isNetEase()Z
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    const-string v1, "NE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private jumpToChannelFragment(Ljava/lang/String;)V
    .locals 7

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    .line 527
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 528
    :goto_0
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 529
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 530
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 531
    invoke-virtual {v4, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->setIsAuthorized(Z)V

    .line 532
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 535
    :goto_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 536
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 537
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 538
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 541
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setMutableLiveAppList(Ljava/util/List;)V

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;

    if-eqz v0, :cond_5

    .line 545
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;->jumpToChannelFragment(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private pageStaticsHit()V
    .locals 5

    .line 275
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account_login:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account_login:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    const-string v4, "music_account_login_exposure"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 279
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->shouldShowTitle:Z

    if-nez v1, :cond_0

    .line 280
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_app:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "touch_screen"

    :goto_0
    const/4 v2, 0x0

    .line 283
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableAuthInfo()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 284
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableAuthInfo()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    if-eqz v3, :cond_1

    .line 286
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getQrcode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 287
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getQrcode()Ljava/lang/String;

    move-result-object v2

    .line 291
    :cond_1
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withFrom(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTableName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mAppId:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTabID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withURI(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->pageAppear(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private qrcodeInvalid()V
    .locals 3

    const/4 v0, 0x1

    .line 786
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalid:Z

    .line 787
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_vague_qrcode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefresh:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 794
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private qrcodeInvalidCenter()V
    .locals 3

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalid:Z

    .line 801
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageCenter:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageCenter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_vague_qrcode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTipCenter:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshCenter:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 808
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private qrcodeInvalidWechat()V
    .locals 3

    const/4 v0, 0x1

    .line 814
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalidWechat:Z

    .line 815
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageWechat:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageWechat:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_vague_qrcode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTipWechat:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 819
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshWechat:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 822
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private refreshClick()V
    .locals 2

    .line 443
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalid:Z

    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animStart()V

    .line 445
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfo(Ljava/lang/String;)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private refreshClickWechat()V
    .locals 2

    .line 454
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalidWechat:Z

    if-eqz v0, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animStartWechat()V

    .line 456
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfoWechat(Ljava/lang/String;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTipWechat:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private declared-synchronized request(I)V
    .locals 2

    monitor-enter p0

    const/16 v0, 0x457

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 666
    :try_start_0
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->status:I

    goto :goto_0

    .line 668
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->status:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->status:I

    .line 670
    :goto_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->status:I

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 671
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatRequest()V

    const/4 p1, 0x0

    .line 673
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->status:I

    :cond_1
    const-string p1, "TME-AccountBindFragment"

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request  status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized requestWechat(I)V
    .locals 2

    monitor-enter p0

    const/16 v0, 0x457

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 681
    :try_start_0
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->statusWechat:I

    goto :goto_0

    .line 683
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->statusWechat:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->statusWechat:I

    .line 685
    :goto_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->statusWechat:I

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 686
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->wechatBeatRequest()V

    const/4 p1, 0x0

    .line 688
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->statusWechat:I

    :cond_1
    const-string p1, "TME-AccountBindFragment"

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wechatBeatRequest  statusWechat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->statusWechat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setNEProtocolClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V
    .locals 5

    .line 343
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->getProtocols()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;

    .line 345
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACCOUNT_BIND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 350
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTvCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTvCenter:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$qZ0vUKdzKHsT1CM3aya4I-7KwaE;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$qZ0vUKdzKHsT1CM3aya4I-7KwaE;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddTextCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvCenter:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$q2dqezSJXG2y9gDO_lrojCxlONw;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$q2dqezSJXG2y9gDO_lrojCxlONw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddTextCenter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private setProtocolClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V
    .locals 5

    .line 297
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->getProtocols()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;

    .line 299
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACCOUNT_BIND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 304
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTv:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$un-rr-vMG-wZxYLRj3raPl7W-T8;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$un-rr-vMG-wZxYLRj3raPl7W-T8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTvWechat:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTvWechat:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$cEAxP8ENDCKKo6-zi0gKhS39pbc;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$cEAxP8ENDCKKo6-zi0gKhS39pbc;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTv:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$RCH_djJ-ioNEnnAurnoPuAu0Vq0;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$RCH_djJ-ioNEnnAurnoPuAu0Vq0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddTextWechat:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvWechat:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvWechat:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$7NIX4JzOnwS9O1B1TWHO0TXI41U;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$7NIX4JzOnwS9O1B1TWHO0TXI41U;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddTextWechat:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvWechat:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private setQRCode(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 733
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalid:Z

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setQRCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-AccountBindFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefresh:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animStop()V

    .line 739
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x2

    .line 740
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    .line 741
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 742
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/16 v3, 0xc4

    invoke-static {p1, v3, v3, v2}, Lcom/alibaba/ailabs/genie/pay/utils/QRCodeManager;->create2DCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 744
    invoke-virtual {p1}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/WriterException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setQRCodeCenter(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 751
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalid:Z

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setQRCodeCenter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-AccountBindFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshCenter:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTipCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animStop()V

    .line 757
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x2

    .line 758
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    .line 759
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 760
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageCenter:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/16 v3, 0xfa

    invoke-static {p1, v3, v3, v2}, Lcom/alibaba/ailabs/genie/pay/utils/QRCodeManager;->create2DCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 762
    invoke-virtual {p1}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/WriterException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setWechatQRCode(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 770
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->invalidWechat:Z

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setWechatQRCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-AccountBindFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshWechat:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTipWechat:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animStopWechat()V

    .line 776
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageWechat:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private showActivateBenefitsDialog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NE"

    .line 910
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 913
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    move-result-object v0

    .line 914
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$S4hChuGasoAVKKDfw6dC9TWsKJw;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$S4hChuGasoAVKKDfw6dC9TWsKJw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->weatherActivateRightDialog(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V

    return-void
.end method

.method private showTitleAndBg()V
    .locals 7

    .line 465
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 469
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeText1:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageWechat:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeText1Wechat:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddTextWechat:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvWechat:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTvWechat:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getAppId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mAppId:Ljava/lang/String;

    .line 482
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->titleTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->music_binding_title:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setProgressBarVisible(Landroid/support/v4/app/FragmentActivity;Z)V

    :cond_2
    return-void
.end method

.method private stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 780
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 781
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private wechatBeatRequest()V
    .locals 4

    .line 724
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->wechatQRCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query wechat QRCode Auth Ticket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->wechatQRCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-AccountBindFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;-><init>()V

    .line 727
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->wechatQRCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getTicket()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->callbackWechat:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;->queryQrcodeAuthForWechat(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 111
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_music_account_binding:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 1

    .line 881
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animStop()V

    .line 882
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animStopWechat()V

    .line 883
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImage:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageWechat:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefresh:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 886
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTip:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeText1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 888
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 890
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected initView()V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->title_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->titleTv:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->icon_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->backImg:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_layout_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutLeft:Landroid/widget/RelativeLayout;

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_layout_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutCenter:Landroid/widget/RelativeLayout;

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_layout_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutRight:Landroid/widget/RelativeLayout;

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImage:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_refresh_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefresh:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_refresh_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTip:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->text_account_protocol:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTv:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->text_login_protocol:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTv:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_text_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeText1:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->text_add:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddText:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_layout_left_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutLeftBg:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_image_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageCenter:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_refresh_icon_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshCenter:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_refresh_tip_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTipCenter:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->text_account_protocol_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTvCenter:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->text_login_protocol_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvCenter:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_text_1_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeText1Center:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->text_add_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddTextCenter:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_image_wechat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageWechat:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_refresh_icon_wechat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeRefreshWechat:Landroid/widget/ImageView;

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_refresh_tip_wechat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->clickRefreshTipWechat:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->text_account_protocol_wechat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->accountProtocolTvWechat:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->text_login_protocol_wechat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loginProtocolTvWechat:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->qrcode_text_1_wechat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeText1Wechat:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->text_add_wechat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->textAddTextWechat:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->bind_more_music_account:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->bindMore:Landroid/widget/RelativeLayout;

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isCanShowBindMoreBtn()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->bindMore:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->bindMore:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->shouldShowTitle:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_1
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->timeLoopUtil:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    .line 163
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->wechatTimeLoopUtil:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    .line 164
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->initClick()V

    .line 166
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNetEase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutCenter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutCenter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNetEase()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "https://market.m.taobao.com/app/genie-h5/content-mini-app-h5/pages/index/index.html#/bindPage?source=NE&appId=200"

    .line 177
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setQRCodeCenter(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->timeLoopUtil:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->startLoop(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;)V

    .line 179
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatRequest()V

    goto :goto_3

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfo(Ljava/lang/String;)V

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeImageWechat:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_vague_qrcode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableAuthInfo()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$bwNapPQ5NHzMLAKqcCKRsr-HRog;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$bwNapPQ5NHzMLAKqcCKRsr-HRog;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 196
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableWechatAuthInfo()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$wMGnvP2l1sqKVbdC7D_5DdZtV4c;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$wMGnvP2l1sqKVbdC7D_5DdZtV4c;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getNetError()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$ff3U2Eq2zkXuAe-ZRJQ-VLfc0vA;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$ff3U2Eq2zkXuAe-ZRJQ-VLfc0vA;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 218
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowFirst:Z

    if-eqz v0, :cond_6

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNeedRefresh()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->finishMainActivity()V

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$ridgutReMmOuF07G7hMbIpags_A;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$ridgutReMmOuF07G7hMbIpags_A;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    goto :goto_4

    .line 232
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->showTitleAndBg()V

    .line 235
    :goto_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 236
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mAppId:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$1;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest;->authDetail(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x95c

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_9

    const/16 v2, 0x96c

    if-eq v3, v2, :cond_8

    const/16 v2, 0xa1c

    if-eq v3, v2, :cond_7

    goto :goto_5

    :cond_7
    const-string v2, "QM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x2

    goto :goto_5

    :cond_8
    const-string v2, "KW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const-string v3, "KG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_d

    if-eq v1, v6, :cond_c

    if-eq v1, v5, :cond_b

    goto :goto_6

    .line 262
    :cond_b
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutLeftBg:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->image_qrcode_qm:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 259
    :cond_c
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutLeftBg:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->image_qrcode_kw:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 256
    :cond_d
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeLayoutLeftBg:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->image_qrcode_kg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    :goto_6
    return-void
.end method

.method public isCanShowBindMoreBtn()Z
    .locals 1

    .line 902
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->canShowBindMoreBtn:Z

    return v0
.end method

.method public isNeedRefresh()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mNeedRefresh:Z

    return v0
.end method

.method public isShowAccountBenefitsDialog()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowAccountBenefitsDialog:Z

    return v0
.end method

.method public synthetic lambda$initClick$114$TMEAccountBindFragment(Landroid/view/View;)V
    .locals 0

    .line 425
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStop()V

    .line 426
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStopWechat()V

    .line 427
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowFirst:Z

    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initClick$115$TMEAccountBindFragment(Landroid/view/View;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->refreshClick()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$initClick$116$TMEAccountBindFragment(Landroid/view/View;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->refreshClick()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$initClick$117$TMEAccountBindFragment(Landroid/view/View;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->refreshClick()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$initClick$118$TMEAccountBindFragment(Landroid/view/View;)V
    .locals 0

    .line 436
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->refreshClickWechat()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$initClick$119$TMEAccountBindFragment(Landroid/view/View;)V
    .locals 0

    .line 437
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->refreshClickWechat()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$initClick$120$TMEAccountBindFragment(Landroid/view/View;)V
    .locals 0

    .line 438
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->refreshClickWechat()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$initView$104$TMEAccountBindFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMutableAuthInfo authInfo is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getQrcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-AccountBindFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getQrcode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setQRCode(Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    .line 190
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->timeLoopUtil:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loopLeap:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->startLoop(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;)V

    .line 191
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatRequest()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$105$TMEAccountBindFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 198
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->wechatQRCodeAuthInfo:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMutableWechatAuthInfo authInfo is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getQrcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-AccountBindFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;->getQrcode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setWechatQRCode(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->wechatTimeLoopUtil:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->loopLeapWechat:Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil;->startLoop(Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;)V

    .line 202
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->wechatBeatRequest()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$106$TMEAccountBindFragment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "default_request"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNetEase()Z

    move-result p1

    if-nez p1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeInvalid()V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animStop()V

    goto :goto_0

    :cond_1
    const-string v0, "wechat_request"

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 213
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeInvalidWechat()V

    .line 214
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->animStopWechat()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$initView$107$TMEAccountBindFragment(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modelBeanList is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TME-AccountBindFragment"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->showTitleAndBg()V

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setProgressBarVisible(Landroid/support/v4/app/FragmentActivity;Z)V

    return-void
.end method

.method public synthetic lambda$setNEProtocolClick$112$TMEAccountBindFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;Landroid/view/View;)V
    .locals 2

    .line 353
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    .line 354
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolUrl()Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebViewActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setNEProtocolClick$113$TMEAccountBindFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;Landroid/view/View;)V
    .locals 2

    .line 364
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    .line 365
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolUrl()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebViewActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setProtocolClick$108$TMEAccountBindFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;Landroid/view/View;)V
    .locals 2

    .line 307
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolUrl()Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebViewActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setProtocolClick$109$TMEAccountBindFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;Landroid/view/View;)V
    .locals 2

    .line 313
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolUrl()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebViewActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setProtocolClick$110$TMEAccountBindFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;Landroid/view/View;)V
    .locals 2

    .line 322
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolUrl()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebViewActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setProtocolClick$111$TMEAccountBindFragment(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;Landroid/view/View;)V
    .locals 2

    .line 329
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mContext:Landroid/content/Context;

    .line 330
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->getProtocolContracts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->getProtocolUrl()Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebViewActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showActivateBenefitsDialog$128$TMEAccountBindFragment(Ljava/lang/String;)V
    .locals 0

    .line 915
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->jumpToChannelFragment(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "TME-AccountBindFragment"

    const-string v1, "onDestroyView"

    .line 409
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStop()V

    .line 411
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStopWechat()V

    .line 412
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNetEase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeInvalid()V

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeInvalidWechat()V

    .line 416
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->operatingAnim:Landroid/view/animation/Animation;

    .line 420
    :cond_1
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 386
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStop()V

    .line 389
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStopWechat()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStop()V
    .locals 2

    const-string v0, "TME-AccountBindFragment"

    const-string v1, "onStop"

    .line 395
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setMutableWechatAuthInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V

    .line 397
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStop()V

    .line 398
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->beatStopWechat()V

    .line 399
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->pageStaticsHit()V

    .line 400
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->isNetEase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeInvalid()V

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->qrcodeInvalidWechat()V

    .line 404
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onStop()V

    return-void
.end method

.method public setCanShowBindMoreBtn(Z)V
    .locals 0

    .line 906
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->canShowBindMoreBtn:Z

    return-void
.end method

.method public setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;

    return-void
.end method

.method public setNeedRefresh(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mNeedRefresh:Z

    return-void
.end method

.method public setShowAccountBenefitsDialog(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowAccountBenefitsDialog:Z

    return-void
.end method

.method public setShowFirst(Z)V
    .locals 0

    .line 381
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mShowFirst:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->mSource:Ljava/lang/String;

    return-void
.end method

.method public showTitle(Z)V
    .locals 0

    .line 377
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->shouldShowTitle:Z

    return-void
.end method
