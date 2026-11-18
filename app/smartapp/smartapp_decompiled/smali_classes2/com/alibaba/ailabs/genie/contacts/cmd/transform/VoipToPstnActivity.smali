.class public Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;
.source "VoipToPstnActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_VoipToPstnActivity"


# instance fields
.field private isVideo:Z

.field private mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCntObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;",
            ">;"
        }
    .end annotation
.end field

.field private mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

.field private mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

.field private mErrorMsg:Ljava/lang/String;

.field private mSendInformObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;",
            ">;"
        }
    .end annotation
.end field

.field private mSysInformViewModel:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

.field private mTtsTips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mErrorMsg:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mTtsTips:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/-$$Lambda$VoipToPstnActivity$3y3JD9EaKsqm5tlsVm-O3ypMh_4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/-$$Lambda$VoipToPstnActivity$3y3JD9EaKsqm5tlsVm-O3ypMh_4;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mCntObserver:Landroid/arch/lifecycle/Observer;

    .line 161
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 185
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/-$$Lambda$VoipToPstnActivity$q66W2agcEQ11xeV7QodIumqvtek;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/-$$Lambda$VoipToPstnActivity$q66W2agcEQ11xeV7QodIumqvtek;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mSendInformObserver:Landroid/arch/lifecycle/Observer;

    .line 200
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mSysInformViewModel:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Landroid/arch/lifecycle/Observer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mSendInformObserver:Landroid/arch/lifecycle/Observer;

    return-object p0
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "contacts"

    .line 117
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    .line 118
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isVideo"

    .line 119
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->isVideo:Z

    const-string v3, "extMsg"

    .line 120
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mErrorMsg:Ljava/lang/String;

    .line 122
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 123
    const-class p1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 125
    const-class p1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-static {v2, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "contacts_VoipToPstnActivity"

    .line 128
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private setupViews()V
    .locals 4

    .line 62
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mSysInformViewModel:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;->viewVoipToPstn:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceNameAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getPosition()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->isVideo:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->setCallOutInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;->viewVoipToPstn:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->setAvatar(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mSysInformViewModel:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->getSysInformCount(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;->viewVoipToPstn:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->isVideo:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->setCallOutInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;->viewVoipToPstn:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->setAvatar(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mSysInformViewModel:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->getSysInformCount(Ljava/lang/String;)V

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mSysInformViewModel:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->getSystemInformCnt()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mCntObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;->viewVoipToPstn:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_voip_to_pstn_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mTtsTips:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;->viewVoipToPstn:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mTtsTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->setTips(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_voip_to_pstn_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mTtsTips:Ljava/lang/String;

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/-$$Lambda$VoipToPstnActivity$Kj_4-MahJtVVNGXFBEB0FHr4Cts;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/-$$Lambda$VoipToPstnActivity$Kj_4-MahJtVVNGXFBEB0FHr4Cts;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

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

.method public synthetic lambda$new$10$VoipToPstnActivity(Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;)V
    .locals 3

    const-string v0, "contacts_VoipToPstnActivity"

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;->hasCount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;->getDayCnt()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;->viewVoipToPstn:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->enableSysInform(Z)V

    .line 90
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mSysInformViewModel:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->setSysInformEnable(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "noCount"

    .line 92
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;->viewVoipToPstn:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->enableSysInform(Z)V

    .line 94
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mSysInformViewModel:Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/sysinform/SysInformViewModel;->setSysInformEnable(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$11$VoipToPstnActivity(Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;->getRemainCnt()I

    move-result v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contacts_VoipToPstnActivity"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_system_inform_tts:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;->getRemainCnt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_system_inform_tts_zero:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "aed68f8b-2acd-4ad0-b354-29a1b0043ed6"

    move-object v0, p0

    .line 195
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    :cond_1
    return-void
.end method

.method public synthetic lambda$setupViews$9$VoipToPstnActivity(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 44
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_FullScreen_Add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->setTheme(I)V

    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->initSystemUi()V

    .line 47
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->activity_voip_to_pstn:I

    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->resolveIntent(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->finish()V

    return-void

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    if-nez p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->finish()V

    return-void

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->setupViews()V

    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mTtsTips:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "aed68f8b-2acd-4ad0-b354-29a1b0043ed6"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 100
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->resolveIntent(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->finish()V

    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mDevices:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    if-nez p1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->finish()V

    return-void

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->setupViews()V

    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mTtsTips:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "aed68f8b-2acd-4ad0-b354-29a1b0043ed6"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method
