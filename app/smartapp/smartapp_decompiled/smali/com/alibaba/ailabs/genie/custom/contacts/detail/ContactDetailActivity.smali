.class public Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;
.super Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

.field private mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field private mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;-><init>()V

    .line 105
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "contacts"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->finish()V

    return-void

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->getContactsAvatarBg(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->contactsUserAvatar:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$mipmap;->custom_default_avatar_260:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->contactsUserAvatar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->setContact(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->contactsUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->videoCallContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->voiceCallContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSystemUI()V
    .locals 1

    .line 90
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ScreenUtils;->setTranslucentStatus(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 81
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_detail_actiivty:I

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    .line 82
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isUniComCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->videoCallContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->navBar:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->setHostActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getUtPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "call_details"

    return-object v0
.end method

.method public getUtPageSpm()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12013386"

    return-object v0
.end method

.method public isOpenUt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->videoCallContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Z)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;->voiceCallContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->initSystemUI()V

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->initView()V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->initData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onPause()V

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method
