.class public Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;
.super Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;
.source "ContactsFrament.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_contacts"


# instance fields
.field private isEnableFetch:Z

.field private mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

.field private mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

.field private mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field private mOffset:I

.field private mPermitLoading:Z

.field private mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mPermitLoading:Z

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mList:Ljava/util/List;

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->isEnableFetch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->isEnableFetch:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object p0
.end method

.method private initComponents()V
    .locals 3

    .line 107
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/OnRecycleViewScrollListener;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 118
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$2;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$3;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 144
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->subscribeContacts()V

    return-void
.end method

.method private subscribeContacts()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->getLiveContacts()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/-$$Lambda$ContactsFrament$EhmzhiP2wVbJHFMQtW7c3mg2RpQ;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/-$$Lambda$ContactsFrament$EhmzhiP2wVbJHFMQtW7c3mg2RpQ;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 62
    sget p3, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_tab_contacts:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public fetchRecordsMore()V
    .locals 7

    .line 92
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mOffset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mOffset:I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_contacts"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mOffset:I

    if-gtz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->isEnableFetch:Z

    if-eqz v2, :cond_1

    .line 98
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->fetchContacts(ILandroid/content/Context;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_page_index_limit:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {v0, v6}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->setIsLoadMoreChange(Z)V

    const-string v0, "not loading..."

    .line 102
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getUtPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "call_contact"

    return-object v0
.end method

.method public getUtPageSpm()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12013373"

    return-object v0
.end method

.method public isOpenUt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$subscribeContacts$24$ContactsFrament(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    :cond_1
    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mPermitLoading:Z

    .line 157
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->getErrCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 158
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->getErrCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ResultCode;->isNoNetWork(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_network_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->getErrmsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->setIsLoadMoreChange(Z)V

    .line 165
    :cond_3
    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mOffset:I

    const-string v2, "contacts_contacts"

    if-nez v1, :cond_8

    .line 166
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->isDataChange()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    const-string v1, "0 on contacts changed..."

    .line 169
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->isEnableFetch:Z

    .line 171
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->setIsLoadMoreChange(Z)V

    .line 172
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mList:Ljava/util/List;

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->setDataList(Ljava/util/List;)V

    .line 174
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mList:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_6

    .line 175
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->noContactsLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 178
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isCMCC()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 179
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->tvNoContactsTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_no_contacts_text_two:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 180
    :cond_5
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isUniComCustom()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 181
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->tvNoContactsTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_no_contacts_cu_text_two:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 184
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x4

    if-gt p1, v2, :cond_7

    .line 185
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->setIsLoadMoreChange(Z)V

    .line 186
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_1

    .line 188
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 190
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setVisibility(I)V

    .line 191
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->noContactsLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    goto :goto_2

    .line 195
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 197
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->isEnableFetch:Z

    .line 198
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->setIsLoadMoreChange(Z)V

    return-void

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->addDataList(Ljava/util/List;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->initComponents()V

    .line 69
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public requestData()V
    .locals 3

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mOffset:I

    .line 86
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 87
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->scrollToPosition(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mOffset:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->fetchContacts(ILandroid/content/Context;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 74
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mPermitLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mPermitLoading:Z

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->setSelected(Z)V

    return-void
.end method
