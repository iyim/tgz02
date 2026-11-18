.class public Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;
.super Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;
.source "ContactsFragment.java"


# static fields
.field public static final SET_FRIEND_IMAGE_GONE:I = 0x1

.field public static final SET_FRIEND_IMAGE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "contacts_ContactsFrament"


# instance fields
.field private mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

.field private mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field private mPermitLoading:Z

.field private mScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

.field private mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mPermitLoading:Z

    .line 53
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    return-object p0
.end method

.method private initComponents()V
    .locals 3

    .line 109
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setClickable(Z)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment$MyOnScrollListener;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment$MyOnScrollListener;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/genie/contacts/test/OnRecycleViewScrollListener;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsLayout:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;->setHandler(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;)V

    .line 117
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 120
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->subscribeContacts()V

    return-void
.end method

.method private subscribeContacts()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->getLiveContacts()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$ContactsFragment$OZI33RSvzdUs4p2bGbbS3IioM3Y;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$ContactsFragment$OZI33RSvzdUs4p2bGbbS3IioM3Y;-><init>(Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/contacts/utils/AdapterUtils;->setCustomDensity(Landroid/content/Context;)V

    .line 81
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->tab_contacts:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    .line 82
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$subscribeContacts$49$ContactsFragment(Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    :cond_1
    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mPermitLoading:Z

    .line 133
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 134
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->getErrmsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/ResultCode;->isNoNetWork(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_network_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->getErrmsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 140
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->isDataChange()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    const-string v2, "contacts_ContactsFrament"

    const-string v3, "on contacts changed..."

    .line 143
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->getList()Ljava/util/List;

    move-result-object p1

    .line 145
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x9

    if-le v2, v4, :cond_5

    .line 146
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;->setVisibility(I)V

    goto :goto_1

    .line 148
    :cond_5
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;->setVisibility(I)V

    .line 151
    :goto_1
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->size(Ljava/util/List;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-ge v4, v2, :cond_7

    .line 152
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;

    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;->getItemType()I

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-le v5, v6, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-le v5, v6, :cond_8

    .line 160
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v2, v6}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 162
    :cond_8
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    .line 165
    :goto_4
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 166
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->noContactsLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    goto :goto_5

    .line 169
    :cond_9
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->noContactsLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 173
    :goto_5
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->noFriendsImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 175
    new-instance v4, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-direct {v4}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;-><init>()V

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_add_contacts:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceName(Ljava/lang/String;)V

    .line 177
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 180
    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    :cond_a
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result p1

    const/16 v4, 0x5d

    const/16 v6, 0x54

    if-nez p1, :cond_b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    const/4 v7, 0x5

    if-gt p1, v7, :cond_b

    .line 183
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x5b

    add-int/2addr p1, v6

    const/16 v1, 0x49

    invoke-virtual {v2, p1, v1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 184
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0x5b

    add-int/2addr v7, v4

    const/16 p1, 0x110

    invoke-virtual {v3, v7, p1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_6

    .line 186
    :cond_b
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v6, v1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 187
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 p1, 0xc7

    invoke-virtual {v3, v4, p1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 189
    :goto_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contacts_ContactsFrament"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onDestroyView()V

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->unbind()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    :cond_0
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

    .line 87
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->initComponents()V

    .line 88
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public requestData()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->fetchContacts()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 93
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mPermitLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mPermitLoading:Z

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->setSelected(Z)V

    return-void
.end method
