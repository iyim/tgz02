.class public Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;
.source "HuskyDetailsActivity.java"


# static fields
.field private static final CALL_NAME:Ljava/lang/String; = "name"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

.field private mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

.field private mHuskyName:Ljava/lang/String;

.field private mHuskyObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private mViewModel:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mHuskyObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-object p1
.end method

.method private initView()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/husky/-$$Lambda$HuskyDetailsActivity$AwfN5Ie7-vKTr6QNr4-CnzbIFmo;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/husky/-$$Lambda$HuskyDetailsActivity$AwfN5Ie7-vKTr6QNr4-CnzbIFmo;-><init>(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;->tvCall:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;->tvHuskyContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;->btnCallHusky:Landroid/support/constraint/ConstraintLayout;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadData()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 51
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;->getHuskyInfo()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mHuskyObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mHuskyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsViewModel;->loadHuskyDetailsByName(Ljava/lang/String;)V

    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mHuskyName:Ljava/lang/String;

    .line 75
    sget-object p1, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mHuskyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
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

.method public synthetic lambda$initView$94$HuskyDetailsActivity(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_FullScreen_Details:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->setTheme(I)V

    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->initSystemUi()V

    .line 42
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->activity_husky_details:I

    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    .line 43
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 44
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    .line 45
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->initView()V

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->loadData()V

    return-void
.end method
