.class public Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;
.source "AddContactsActivity.java"


# static fields
.field public static final REQUEST_FOR_AVATAR_PATH:I = 0x1

.field public static final REQUEST_FOR_RELATIONSHIP:I = 0x2


# instance fields
.field private mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityAddContactsBinding;

.field private mMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->fragment_container:I

    .line 58
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private initValues()V
    .locals 3

    .line 36
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    const-string v2, "contacts"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->setEditContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    const/4 v1, 0x2

    const-string v2, "mode"

    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->mMode:I

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->initSystemUi()V

    .line 46
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 47
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;-><init>()V

    .line 48
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 50
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;-><init>()V

    .line 51
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->changeFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 72
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getUtPageName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Edit_Contacts"

    return-object v0

    :cond_0
    const-string v0, "AddContacts"

    return-object v0
.end method

.method public getUtPageSpm()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->mAddViewModel:Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->isEditMode()Z

    move-result v0

    const-string v1, "contacts_ut"

    if-eqz v0, :cond_0

    const-string v0, "edit"

    .line 90
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a1z3lt.12013413"

    return-object v0

    :cond_0
    const-string v0, "add"

    .line 93
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a1z3lt.12013402"

    return-object v0
.end method

.method public isOpenUt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_FullScreen_Add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->setTheme(I)V

    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->activity_add_contacts:I

    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityAddContactsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityAddContactsBinding;

    .line 30
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->initValues()V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;->initView()V

    return-void
.end method
