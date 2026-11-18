.class public Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;
.source "EditMineFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EditMineFragment"


# instance fields
.field private mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

.field private mKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

.field private mOnCloseClickListener:Landroid/view/View$OnClickListener;

.field private mOnMobileClickListener:Landroid/view/View$OnClickListener;

.field private mOnRelationshipClickListener:Landroid/view/View$OnClickListener;

.field private mOnSavedClickListener:Landroid/view/View$OnClickListener;

.field private mOnTakePicClickListener:Landroid/view/View$OnClickListener;

.field private mUpdateObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;-><init>()V

    .line 101
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$UYyjPio8IaOQp5fqtmpRw_Pgc9E;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$UYyjPio8IaOQp5fqtmpRw_Pgc9E;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnRelationshipClickListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$AOh3AbXxHZPHtMGbJA_1JzGmW9w;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$AOh3AbXxHZPHtMGbJA_1JzGmW9w;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnSavedClickListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$WqUx6-9Z11QrqJhw827IOLqyDAE;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$WqUx6-9Z11QrqJhw827IOLqyDAE;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnTakePicClickListener:Landroid/view/View$OnClickListener;

    .line 138
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$j_lSML89QPCemKEearcYMEo8WdA;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$j_lSML89QPCemKEearcYMEo8WdA;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnCloseClickListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$ge6ycQibu4mGywiqDwOzF2azwqc;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$ge6ycQibu4mGywiqDwOzF2azwqc;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnMobileClickListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mUpdateObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method private initEditFocus()V
    .locals 4

    .line 88
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->withActivity(Landroid/app/Activity;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    .line 90
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getEditTextId()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->withHideSoftByEditViewIds([I)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$pC2_YioS9GFvSv4aqN5EAtndp_A;->INSTANCE:Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$pC2_YioS9GFvSv4aqN5EAtndp_A;

    .line 91
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->withOnHideInputForceListener(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->build()Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setEditMode(Z)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setEditMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initEditModeViews()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnAddAvatar:Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->setIcon(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_details_edit_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnMobileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setOnRightClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->setEditMode(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initEditFocus$100(Landroid/view/MotionEvent;)V
    .locals 1

    const-string p0, "contacts_add"

    const-string v0, "hide input"

    .line 92
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$null$104(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    if-eqz v0, :cond_0

    .line 82
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

    .line 49
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->fragment_edit_mine:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    .line 50
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->initEditFocus()V

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnRelationshipClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setOnRightClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnAddAvatar:Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnTakePicClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnAddAvatarRipple:Landroid/widget/Button;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnTakePicClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnSave:Landroid/widget/Button;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnSavedClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnClose:Landroid/widget/Button;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mOnCloseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setMaxLength(I)V

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$new$101$EditMineFragment(Landroid/view/View;)V
    .locals 2

    .line 102
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$new$102$EditMineFragment(Landroid/view/View;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_space_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\\u4e00-\\u9fa5a-zA-Z0-9]{1,10}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_nickname_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->updateMineInfo()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$105$EditMineFragment(Landroid/view/View;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->addAvatar()V

    .line 125
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->isOpenCameraPrivacy()Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$AsYaq68MWBthxyp9BpvsCwVu38I;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$AsYaq68MWBthxyp9BpvsCwVu38I;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;)V

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$S7xBpBcNAYKCunKI9Pl6chuo1pM;->INSTANCE:Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditMineFragment$S7xBpBcNAYKCunKI9Pl6chuo1pM;

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->showCameraConfirmDialog(Landroid/support/v4/app/FragmentActivity;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)V

    goto :goto_0

    .line 134
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$106$EditMineFragment(Landroid/view/View;)V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$new$107$EditMineFragment(Landroid/view/View;)V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_update_mobile_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$null$103$EditMineFragment(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;)V
    .locals 2

    const-string v0, "persist.camera.camavailable"

    const-string v1, "1"

    .line 127
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->dismiss()V

    .line 129
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityCreated()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getUpdateResult()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->thisFragment()Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mUpdateObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 64
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->initEditModeViews()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p2, "contacts_add"

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 152
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "avatarPath"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avatarPath:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->setFilePath(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->setEditAvatar(Z)V

    .line 156
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnAddAvatar:Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "relationship"

    .line 158
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    .line 159
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "relationship:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->getrId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 161
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->getrId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationCode(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
