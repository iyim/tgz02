.class public Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;
.source "EditContactsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EditContactsFragment"


# instance fields
.field private mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

.field private mDeleteObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

.field private mOnCloseClickListener:Landroid/view/View$OnClickListener;

.field private mOnDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mOnRelationshipClickListener:Landroid/view/View$OnClickListener;

.field private mOnSavedClickListener:Landroid/view/View$OnClickListener;

.field private mOnTakePicClickListener:Landroid/view/View$OnClickListener;

.field private mSaveObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;-><init>()V

    .line 136
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$t_m7MTTlCi70_DCgXmf1soTfcPw;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$t_m7MTTlCi70_DCgXmf1soTfcPw;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnRelationshipClickListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$HpLQCVmhdtRVmOtdkMPINE808ec;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$HpLQCVmhdtRVmOtdkMPINE808ec;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnSavedClickListener:Landroid/view/View$OnClickListener;

    .line 164
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$3E7FiZ4xOOz8GhlaSsfjUuKqUSM;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$3E7FiZ4xOOz8GhlaSsfjUuKqUSM;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnTakePicClickListener:Landroid/view/View$OnClickListener;

    .line 179
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$jb5pJohP6VbhZMjmk9IUNy6UY3k;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$jb5pJohP6VbhZMjmk9IUNy6UY3k;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnCloseClickListener:Landroid/view/View$OnClickListener;

    .line 183
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 211
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$pLoNlMgZIEJlLq5EML-1Mf36qbY;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$pLoNlMgZIEJlLq5EML-1Mf36qbY;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mUpdateObserver:Landroid/arch/lifecycle/Observer;

    .line 223
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$EKB9g9T3DvsC83BoRCwTeTrG46o;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$EKB9g9T3DvsC83BoRCwTeTrG46o;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mSaveObserver:Landroid/arch/lifecycle/Observer;

    .line 232
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$g-raF3EMS_Fw2Yc7_9XVcdaauCo;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$g-raF3EMS_Fw2Yc7_9XVcdaauCo;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mDeleteObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    return-object p0
.end method

.method private initEditFocus()V
    .locals 5

    .line 124
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->withActivity(Landroid/app/Activity;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    .line 126
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getEditTextId()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getEditTextId()I

    move-result v4

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->withHideSoftByEditViewIds([I)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$3H9heJ50WhEj1MUZ8YvLtp_TYTA;->INSTANCE:Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$3H9heJ50WhEj1MUZ8YvLtp_TYTA;

    .line 127
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->withOnHideInputForceListener(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->build()Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setEditMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initEditModeViews()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->btnAddAvatar:Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->setIcon(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_details_edit_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->btnDelete:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->setEditMode(Z)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$initEditFocus$111(Landroid/view/MotionEvent;)V
    .locals 1

    const-string p0, "contacts_add"

    const-string v0, "hide input"

    .line 128
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$null$115(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;)V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    if-eqz v0, :cond_0

    .line 118
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

    .line 57
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->fragment_edit_contacts:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    .line 58
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->initEditFocus()V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnRelationshipClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setOnRightClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->btnAddAvatar:Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnTakePicClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->btnAddAvatarRipple:Landroid/widget/Button;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnTakePicClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->btnSave:Landroid/widget/Button;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnSavedClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->btnClose:Landroid/widget/Button;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnCloseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setMaxLength(I)V

    .line 65
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getEditText()Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setMaxLength(I)V

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getEditText()Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$vES8flOmz-eRUgkh-kYd8PhOagc;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$vES8flOmz-eRUgkh-kYd8PhOagc;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setInputMode(I)V

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->btnDelete:Landroid/widget/Button;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mOnDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$initView$110$EditContactsFragment(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 81
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 82
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->getRoot()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return p1
.end method

.method public synthetic lambda$new$112$EditContactsFragment(Landroid/view/View;)V
    .locals 2

    .line 137
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$new$113$EditContactsFragment(Landroid/view/View;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_space_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\\u4e00-\\u9fa5a-zA-Z0-9]{1,10}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_nickname_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[0-9]{5,20}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_mobile_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->updateContacts()V

    goto :goto_0

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->addContacts()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$116$EditContactsFragment(Landroid/view/View;)V
    .locals 2

    .line 165
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->addAvatar()V

    .line 166
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->isOpenCameraPrivacy()Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$FcpDEyrVS-YmLLyuXFj2pSFNrV8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$FcpDEyrVS-YmLLyuXFj2pSFNrV8;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$0n8m_cZUfA2Oa-FMm94KS4vjKSc;->INSTANCE:Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$EditContactsFragment$0n8m_cZUfA2Oa-FMm94KS4vjKSc;

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->showCameraConfirmDialog(Landroid/support/v4/app/FragmentActivity;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$117$EditContactsFragment(Landroid/view/View;)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$new$118$EditContactsFragment(Ljava/lang/String;)V
    .locals 2

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_update_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 214
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "isUpdate"

    .line 215
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$119$EditContactsFragment(Ljava/lang/String;)V
    .locals 2

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_add_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$120$EditContactsFragment(Ljava/lang/String;)V
    .locals 2

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_delete_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 235
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "isDelete"

    .line 236
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$114$EditContactsFragment(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;)V
    .locals 2

    const-string v0, "persist.camera.camavailable"

    const-string v1, "1"

    .line 168
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->dismiss()V

    .line 170
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityCreated()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getDeleteResult()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->thisFragment()Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mDeleteObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getUpdateResult()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mUpdateObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getAddResult()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mSaveObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 97
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->initEditModeViews()V

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

    .line 196
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "avatarPath"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avatarPath:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->setFilePath(Ljava/lang/String;)V

    .line 199
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->setEditAvatar(Z)V

    .line 200
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->btnAddAvatar:Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "relationship"

    .line 202
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    .line 203
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

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->getrId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 205
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->getEditContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->getrId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationCode(Ljava/lang/String;)V

    .line 206
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->setText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
