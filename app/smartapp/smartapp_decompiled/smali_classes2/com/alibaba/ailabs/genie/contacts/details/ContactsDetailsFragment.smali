.class public Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;
.source "ContactsDetailsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContactsDetailsFragment"


# instance fields
.field private isUpdateChecked:Z

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

.field private mContactsObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field private mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

.field private mDownloadClickListener:Landroid/view/View$OnClickListener;

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private mOnEditClickListener:Landroid/view/View$OnClickListener;

.field private mSwitchBlockListener:Landroid/view/View$OnClickListener;

.field private mSwitchMemberListener:Landroid/view/View$OnClickListener;

.field private mUpdateBlockObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMemberObserver:Landroid/arch/lifecycle/Observer;
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

    .line 30
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->isUpdateChecked:Z

    .line 88
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$ContactsDetailsFragment$zTb1WqLxwJMmsSQ_9BqvbwbP6F4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$ContactsDetailsFragment$zTb1WqLxwJMmsSQ_9BqvbwbP6F4;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mOnEditClickListener:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mSwitchMemberListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mSwitchBlockListener:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$ContactsDetailsFragment$HMI0GkyDkzsDv6n07rFO93nbZ3A;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$ContactsDetailsFragment$HMI0GkyDkzsDv6n07rFO93nbZ3A;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mDownloadClickListener:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$3;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    .line 181
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mContactsObserver:Landroid/arch/lifecycle/Observer;

    .line 209
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$5;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mUpdateMemberObserver:Landroid/arch/lifecycle/Observer;

    .line 229
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mUpdateBlockObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->isUpdateChecked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->isUpdateChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->showDownloadTips()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    return-object p0
.end method

.method private loadData()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->loadSingleContactsByUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->loadSingleContactsByContactId(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showDownloadTips()V
    .locals 3

    .line 267
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->downloadApp()V

    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected initValues()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/contacts/utils/AdapterUtils;->setCustomDensity(Landroid/content/Context;)V

    .line 46
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->fragment_contacts_details:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setEditMode(Z)V

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mOnEditClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setEditListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mSwitchBlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setSwitchBlockListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mSwitchMemberListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setSwitchMemberListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutDownloadTips:Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mDownloadClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->setDownloadListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setDialListener(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$ContactsDetailsFragment$7GdT8twWgMfKMRo0BOUILAmSfyA;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$ContactsDetailsFragment$7GdT8twWgMfKMRo0BOUILAmSfyA;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$initView$17$ContactsDetailsFragment(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$new$18$ContactsDetailsFragment(Landroid/view/View;)V
    .locals 2

    .line 89
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->editContacts()V

    .line 90
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "contacts"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "mode"

    const/4 v1, 0x2

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$new$19$ContactsDetailsFragment(Landroid/view/View;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->showDownloadTips()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onActivityCreated()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mContactsObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getUpdateBlockResult()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mUpdateBlockObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getUpdateMemberResult()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mUpdateMemberObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactsExtra()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactsExtra()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->loadData()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 170
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "isUpdate"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 171
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "isDelete"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->loadData()V

    :cond_0
    if-eqz p2, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 203
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onDestroy()V

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onDestroyView()V

    .line 252
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->unbind()V

    .line 254
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    if-eqz v0, :cond_1

    .line 257
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    .line 259
    :cond_1
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 260
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mOnEditClickListener:Landroid/view/View$OnClickListener;

    .line 261
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mSwitchMemberListener:Landroid/view/View$OnClickListener;

    .line 262
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mSwitchBlockListener:Landroid/view/View$OnClickListener;

    .line 263
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mDownloadClickListener:Landroid/view/View$OnClickListener;

    .line 264
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onResume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
