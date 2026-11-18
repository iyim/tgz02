.class public Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;
.super Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;
.source "CuContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

.field private mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field private mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private repository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;-><init>()V

    .line 173
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "contacts"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->finish()V

    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->rootLayout:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->getContactsAvatarBg(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->contactsUserAvatar:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$mipmap;->custom_default_avatar_260:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->contactsUserAvatar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->setContact(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->videoCallContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->voiceCallContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->voipAudioCallContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getContactExtUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setSupportPSTNCall(Z)V

    .line 85
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->setViewData()V

    goto :goto_1

    .line 87
    :cond_3
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->repository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->repository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;->getContactRepository()Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->contactDetail:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/detail/-$$Lambda$CuContactDetailActivity$9kyrnbzoudLUqxDeWX6-z6AzQ-8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/-$$Lambda$CuContactDetailActivity$9kyrnbzoudLUqxDeWX6-z6AzQ-8;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->repository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;->getContactRepository()Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->fetchContactDetail(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V

    :goto_1
    return-void
.end method

.method private initSystemUI()V
    .locals 1

    .line 149
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ScreenUtils;->setTranslucentStatus(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 139
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_detail_cu_actiivty:I

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->navBar:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->setHostActivity(Landroid/app/Activity;)V

    .line 141
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 142
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->avatarBg:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setViewData()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->contactsPhoneNum:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->contactsPhoneNum:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->contactsPhoneNum:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->contactsUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->videoCallContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->isSupportVoIPVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->voiceCallContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->isSupportPSTNCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->voipAudioCallContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->isSupportVoIPAudioCall()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 127
    :goto_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->callContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 128
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->callContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->callContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->callContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 135
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->rootLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

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

.method public synthetic lambda$initData$13$CuContactDetailActivity(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->getContacts()Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    .line 108
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->setViewData()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "CuContactDetailActivity"

    if-eqz p1, :cond_2

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "on error: contacts null"

    .line 95
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setSupportPSTNCall(Z)V

    .line 99
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->setViewData()V

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 102
    sget p1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_network_error:I

    .line 103
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 102
    :goto_2
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->voiceCallContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 159
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;-><init>()V

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->setContactId(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getContactPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->setMobile(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->setNickName(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getContactPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->setPhoneNum(Ljava/lang/String;)V

    const-string v0, "CONTACTS"

    .line 164
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->setContactType(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    const-string v0, "PSTN"

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callCuVOIP(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->videoCallContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    const-string v0, "VIDEO"

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callCuVOIP(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;->voipAudioCallContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 169
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    const-string v0, "AUDIO"

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callCuVOIP(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->initSystemUI()V

    .line 45
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->initView()V

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->initData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method
