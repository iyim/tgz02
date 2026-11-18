.class public Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;
.source "DeviceDetailsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceDetailsFragment"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

.field private mDeviceObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;",
            ">;"
        }
    .end annotation
.end field

.field private mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

.field private mEditClickListener:Landroid/view/View$OnClickListener;

.field private mKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private mUpdateObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;-><init>()V

    .line 132
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$MoacN7a4zsnaNDCPn7Upvx92gTw;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$MoacN7a4zsnaNDCPn7Upvx92gTw;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mEditClickListener:Landroid/view/View$OnClickListener;

    .line 138
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    .line 172
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$GZbzgGQt1WlI8vTuAS5SvI664wg;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$GZbzgGQt1WlI8vTuAS5SvI664wg;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mUpdateObserver:Landroid/arch/lifecycle/Observer;

    .line 187
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mDeviceObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    return-object p0
.end method

.method private initEditFocus()V
    .locals 4

    .line 94
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->withActivity(Landroid/app/Activity;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    .line 96
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->getNameEditTextId()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->withHideSoftByEditViewIds([I)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$RjtbyQR9cE69jCol4KBDLULEfN8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$RjtbyQR9cE69jCol4KBDLULEfN8;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->withOnHideInputForceListener(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->build()Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setEditMode(Z)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$NHs9ijYfpHHjkY4sjpz5fJGPmBM;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$NHs9ijYfpHHjkY4sjpz5fJGPmBM;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setEditDoneListener(Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateDevice()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->getEditText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    .line 116
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->getEditText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceNameAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->getEditText()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_space_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setDevice(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->getEditText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\u4e00-\\u9fa5a-zA-Z0-9]{1,10}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_nickname_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setDevice(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->getEditText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->onDispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected initValues()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/contacts/utils/AdapterUtils;->setCustomDensity(Landroid/content/Context;)V

    .line 49
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->fragment_device_details:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mEditClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setEditListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setDialListener(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    .line 52
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->initEditFocus()V

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$tdJZafVb5i7LrFB_DRjs4s89v9A;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$DeviceDetailsFragment$tdJZafVb5i7LrFB_DRjs4s89v9A;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$initEditFocus$33$DeviceDetailsFragment(Landroid/view/MotionEvent;)V
    .locals 1

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide input"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->getEditText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contacts_add"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setEditMode(Z)V

    .line 100
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setEditBtnVisibility(I)V

    .line 101
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->updateDevice()V

    return-void
.end method

.method public synthetic lambda$initEditFocus$34$DeviceDetailsFragment()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setEditMode(Z)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setEditBtnVisibility(I)V

    .line 107
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->updateDevice()V

    return-void
.end method

.method public synthetic lambda$initView$32$DeviceDetailsFragment(Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$new$35$DeviceDetailsFragment(Landroid/view/View;)V
    .locals 1

    .line 133
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->editContacts()V

    .line 134
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setEditMode(Z)V

    .line 135
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->requestEditFocus()V

    return-void
.end method

.method public synthetic lambda$new$36$DeviceDetailsFragment(Ljava/lang/String;)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_update_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->layoutDeviceInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->getEditText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceNameAlias(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onActivityCreated()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getUpdateDeviceResult()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mUpdateObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getDevice()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mDeviceObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->loadSingleDevice(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->unbind()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 205
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onDestroyView()V

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;->unbind()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DeviceDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onResume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
