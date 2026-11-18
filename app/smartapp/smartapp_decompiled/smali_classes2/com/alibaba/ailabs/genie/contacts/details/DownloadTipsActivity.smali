.class public Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;
.source "DownloadTipsActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadTipsActivity"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;->btnClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DownloadTipsActivity$aAc5Y9pNxb771GN_vNOPMUeaTOc;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DownloadTipsActivity$aAc5Y9pNxb771GN_vNOPMUeaTOc;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method public synthetic lambda$initView$38$DownloadTipsActivity(Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_FullScreen_Transparent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;->setTheme(I)V

    .line 23
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;->initSystemUi()V

    .line 25
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->fragment_download_tips:I

    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onDestroy()V

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;->unbind()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;

    :cond_0
    return-void
.end method
