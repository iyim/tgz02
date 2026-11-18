.class public Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;
.source "StrangerDetailsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "StrangerDetailsFragment"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

.field private mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

.field private mStranger:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

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

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mStranger:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-object p0
.end method

.method private loadData()V
    .locals 4

    .line 59
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mStranger:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mStranger:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mStranger:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;->layoutStrangerInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mStranger:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setStranger(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;->layoutStrangerDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mStranger:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setFeature(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

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

    .line 37
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->fragment_stranger_details:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    .line 38
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;->layoutStrangerInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setEditMode(Z)V

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;->layoutStrangerInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setEditBtnVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;->layoutStrangerDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mDialClickListener:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setDialListener(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$StrangerDetailsFragment$G1Rb43L1Wq5W5Eg0YtkGU01h3iM;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/details/-$$Lambda$StrangerDetailsFragment$G1Rb43L1Wq5W5Eg0YtkGU01h3iM;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$initView$39$StrangerDetailsFragment(Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method protected onActivityCreated()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->loadData()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onDestroyView()V

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;->unbind()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onResume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
