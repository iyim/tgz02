.class public Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;
.source "DownloadTipsMiniActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mDownloadUrl:Ljava/lang/String;


# instance fields
.field private mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->TAG:Ljava/lang/String;

    const-string v0, "https://h5.bot.tmall.com/download?action=openPstn&uuid="

    .line 32
    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;-><init>()V

    .line 94
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;->btnClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DownloadTipsMiniActivity$BEZ07aLkrwkou28XzDj4PtcY4bg;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DownloadTipsMiniActivity$BEZ07aLkrwkou28XzDj4PtcY4bg;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadData()V
    .locals 2

    .line 45
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DownloadTipsMiniActivity$tA8i6a-30oQ-kdF3mjFIT8zeZfU;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DownloadTipsMiniActivity$tA8i6a-30oQ-kdF3mjFIT8zeZfU;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getUtPageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtPageSpm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isOpenUt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$initView$16$DownloadTipsMiniActivity(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$loadData$15$DownloadTipsMiniActivity(Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xaa

    const/4 v1, 0x0

    invoke-static {p1, v0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/QrUtils;->create2DCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DownloadTipsMiniActivity$EfJfjwR94eZk0KQCfpmRRt-dfqs;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DownloadTipsMiniActivity$EfJfjwR94eZk0KQCfpmRRt-dfqs;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$null$14$DownloadTipsMiniActivity(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;->ivDownloadQr:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_FullScreen_Transparent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->setTheme(I)V

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->initSystemUi()V

    .line 39
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->fragment_download_tips_mini:I

    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->initView()V

    .line 41
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->loadData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onDestroy()V

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;->unbind()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onPause()V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method
