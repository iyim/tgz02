.class public Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;
.source "RelationshipActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RelationshipActivity"


# instance fields
.field private mAdapter:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

.field private mObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;-><init>()V

    .line 103
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    return-object p0
.end method

.method private initValues()V
    .locals 4

    .line 43
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "contacts"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->setContactId(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    new-instance v2, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->setSelectedRelationShip(Lcom/alibaba/ailabs/genie/contacts/model/Relationship;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->initSystemUi()V

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->btnClose:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$RelationshipActivity$51jdTTmVkbdATodM5yAH2OChaI0;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$RelationshipActivity$51jdTTmVkbdATodM5yAH2OChaI0;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 58
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->rlvRelationshipList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    new-instance v2, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    .line 60
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->rlvRelationshipList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 61
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->rlvRelationshipList:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    new-instance v2, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$RelationshipActivity$JCQB4Ic5y1W55NDhQnpNuaUgRWw;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/contacts/add/-$$Lambda$RelationshipActivity$JCQB4Ic5y1W55NDhQnpNuaUgRWw;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->setItemClickListener(Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->rlvRelationshipList:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;Landroid/support/v7/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->getRelationshipList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method private loadData()V
    .locals 6

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contacts_add"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->getContactId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->loadRelationshipList(Ljava/lang/String;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

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

.method public synthetic lambda$initView$108$RelationshipActivity(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initView$109$RelationshipActivity(Landroid/view/View;I)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->changeSelectedItem(I)V

    .line 64
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->getRelationshipList()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    const-string v0, "relationship"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 66
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->setResult(ILandroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_FullScreen_Transparent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->setTheme(I)V

    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->fragment_relationship_list:I

    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    .line 37
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->initValues()V

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->initView()V

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->loadData()V

    return-void
.end method
