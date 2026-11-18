.class public Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "TransitionPageActivity.java"


# static fields
.field public static final EXTRA_APP_DATA_BEAN:Ljava/lang/String; = "app_data_bean"

.field private static final MSG_DELAYED:I = 0x320

.field private static final MSG_LOADING_FINISH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TransitionPageActivity"


# instance fields
.field private installListener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

.field private installingUrl:Ljava/lang/String;

.field private ivLogo:Lcom/alibaba/ailabs/appbox/view/RounderImageView;

.field private mBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private openUrl:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private roundedProgressBar:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

.field private tvBackground:Landroid/widget/TextView;

.field private tvFailed:Landroid/widget/TextView;

.field private tvFailedRetry:Landroid/widget/TextView;

.field private tvProgress:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvVoiceOne:Landroid/widget/TextView;

.field private tvVoiceThree:Landroid/widget/TextView;

.field private tvVoiceTwo:Landroid/widget/TextView;

.field private viewMask:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->pkgName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->openUrl:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->viewMask:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->downloadAndInstall()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/view/RounderImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->ivLogo:Lcom/alibaba/ailabs/appbox/view/RounderImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvVoiceOne:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvVoiceTwo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvVoiceThree:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->roundedProgressBar:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    return-object p0
.end method

.method private downloadAndInstall()V
    .locals 5

    .line 170
    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$5;-><init>(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->installListener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 195
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->showInstallLoading()V

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->installingUrl:Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->openUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->installListener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstallOpen(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;ZLcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V

    return-void
.end method

.method private getIntentData()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "app_data_bean"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 108
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->pkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "pkgName"

    .line 113
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->pkgName:Ljava/lang/String;

    const-string v1, "openUrl"

    .line 114
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->openUrl:Ljava/lang/String;

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntentData pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " openUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->openUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mBean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionPageActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getNetDetail()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->showLoadingView()V

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->pkgName:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;-><init>(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V

    const-string v2, "apk"

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getMarketInfoById(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 77
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_background:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvBackground:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvTitle:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_voice_one:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvVoiceOne:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_voice_two:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvVoiceTwo:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_voice_three:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvVoiceThree:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->pg_transition:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->roundedProgressBar:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    .line 83
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->view_mask:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->viewMask:Landroid/view/View;

    .line 84
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->ivLogo:Lcom/alibaba/ailabs/appbox/view/RounderImageView;

    .line 85
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvProgress:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_failed_retry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvFailedRetry:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_failed:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvFailed:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvBackground:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$2;-><init>(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvFailedRetry:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$3;-><init>(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showInstallFailed()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvProgress:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->roundedProgressBar:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvFailed:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvFailedRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showInstallLoading()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvProgress:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->roundedProgressBar:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvFailed:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->tvFailedRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->activity_transition_page:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->showLoadingView()V

    .line 71
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->initView()V

    .line 72
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->getIntentData()V

    .line 73
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->getNetDetail()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 228
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->installingUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->installListener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->removeListener(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string p1, "TransitionPageActivity"

    const-string v0, "onRestoreInstanceState"

    .line 223
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 216
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p1, "TransitionPageActivity"

    const-string v0, "onSaveInstanceState"

    .line 217
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
