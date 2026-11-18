.class public Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;
.source "DetailsActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;


# static fields
.field public static final REQUEST_FOR_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "contacts_fragmentDetailsActivity"


# instance fields
.field private isChildMode:Z

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private mMobileContactsObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->isChildMode:Z

    .line 136
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mMobileContactsObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    return-object p0
.end method

.method private changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->fragment_container:I

    .line 154
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private initValues(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->initSystemUi()V

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    const-string v1, "contactId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->setContactId(Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v2, "mode"

    .line 86
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mMode:I

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    const-string v2, "userId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->setUserId(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    const-string v3, "mobile"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->setMobile(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contactId:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mobile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contacts_details"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 95
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mMode:I

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactsByMobile()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mMobileContactsObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->loadSingleContactsByMobile(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;-><init>()V

    .line 105
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;-><init>()V

    .line 114
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;-><init>()V

    .line 110
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mMode:I

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    .line 121
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;-><init>()V

    .line 122
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_4
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;-><init>()V

    .line 130
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_5
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;-><init>()V

    .line 126
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$xnu-yrzmXSBiRiSnagcgPYxNe1Y(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->updateBg()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private updateBg()V
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->isChildMode:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->contacts_bg_child:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_third_page_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 5

    const-string v0, "targetUserId"

    const-string v1, "contacts_fragmentDetailsActivity"

    const-string v2, "getAppContextData"

    .line 205
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "aed68f8b-2acd-4ad0-b354-29a1b0043ed6"

    .line 206
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 208
    :try_start_0
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v3, "com.alibaba.ailabs.genie.contacts.details"

    .line 209
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 212
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 213
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    iget v4, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mMode:I

    if-nez v4, :cond_1

    .line 216
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "targetUuid"

    .line 219
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v0, "targetContactId"

    .line 221
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "targetPhoneNum"

    if-eqz v0, :cond_2

    .line 224
    :try_start_1
    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 225
    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    :goto_1
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 231
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

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

.method public synthetic lambda$onCreate$40$DetailsActivity()V
    .locals 1

    .line 51
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->isChildMode:Z

    .line 52
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DetailsActivity$xnu-yrzmXSBiRiSnagcgPYxNe1Y;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DetailsActivity$xnu-yrzmXSBiRiSnagcgPYxNe1Y;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRServiceStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_FullScreen_Details:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->setTheme(I)V

    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->activity_details:I

    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;

    .line 47
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->initValues(Landroid/content/Intent;)V

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->initView()V

    .line 50
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DetailsActivity$SEW-PVO92u5o1yB_aEweJtp12Ko;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DetailsActivity$SEW-PVO92u5o1yB_aEweJtp12Ko;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 182
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onDestroy()V

    .line 183
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;->unbind()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;

    :cond_1
    return-void
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->initValues(Landroid/content/Intent;)V

    .line 67
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->initView()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->mAsrManager:Lcom/alibaba/ailabs/genie/second/AsrManager;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method
