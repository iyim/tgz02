.class public Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;
.source "MineDetailsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MineDetailsFragment"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

.field private mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private mMineObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEditClickListener:Landroid/view/View$OnClickListener;

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

    .line 85
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$MineDetailsFragment$2fLmfw9EX_aV9Mlq__mQ3t5FbB4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$MineDetailsFragment$2fLmfw9EX_aV9Mlq__mQ3t5FbB4;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mOnEditClickListener:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    .line 134
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mMineObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    return-object p0
.end method

.method private loadData()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->loadSingleContactsByUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContactId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->loadSingleContactsByContactId(Ljava/lang/String;)V

    :goto_0
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

    .line 44
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->fragment_mine_details:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;->layoutMineInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setEditMode(Z)V

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;->layoutMineInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mOnEditClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setEditListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;->layoutMineDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setDialListener(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$MineDetailsFragment$Oafb9wvVzTOphu7fRGKACAlalqY;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$MineDetailsFragment$Oafb9wvVzTOphu7fRGKACAlalqY;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$initView$41$MineDetailsFragment(Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$new$42$MineDetailsFragment(Landroid/view/View;)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->editContacts()V

    .line 87
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "contacts"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "mode"

    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityCreated()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mMineObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->loadData()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 127
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "isUpdate"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->loadData()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onDestroyView()V

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;->unbind()V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onResume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
