.class public Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "ShoppingDetailVideoActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AdActivity"


# instance fields
.field private mAdVideoViewListener:Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

.field private mLoading:Lcom/alibaba/genie/shopping/view/GenieProgressDialog;

.field private mVideoImgHolder:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;

.field private mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    .line 124
    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$3;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mAdVideoViewListener:Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;)Lcom/alibaba/genie/shopping/view/AdVideoView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mVideoUrl:Ljava/lang/String;

    return-object p0
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->finish()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "videoUrl"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mVideoUrl:Ljava/lang/String;

    const-string v0, "videoImgHolderUrl"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mVideoImgHolder:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method private setupView()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->showAd(Z)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->setCloseListener(Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$2;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->setVolumeListener(Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mAdVideoViewListener:Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->setAdVideoViewListener(Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mVideoImgHolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mVideoImgHolder:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/genie/shopping/view/AdVideoView;->showVideoPlaceHolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->playVideo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->shopping_detail_video_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->setContentView(I)V

    .line 31
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->view_ad:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/AdVideoView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->resolveIntent(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->setupView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->releaseVideo()V

    .line 109
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mLoading:Lcom/alibaba/genie/shopping/view/GenieProgressDialog;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->resolveIntent(Landroid/content/Intent;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->pauseVideo()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->mViewAd:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->resumeVideo()V

    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
