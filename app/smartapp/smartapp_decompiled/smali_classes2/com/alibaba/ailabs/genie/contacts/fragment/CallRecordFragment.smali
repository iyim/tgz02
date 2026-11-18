.class public Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;
.super Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;
.source "CallRecordFragment.java"


# static fields
.field public static final LIMIT_INDEX:I = 0x64

.field public static final ONE_PAGE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "contacts_CallRecordFragment"


# instance fields
.field private mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOffset:I

.field private mPermitLoading:Z

.field private mScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

.field private mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mPermitLoading:Z

    return-void
.end method

.method private fetchNotFillOnePage(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V
    .locals 2

    .line 181
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->isCacheData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->getDataSize()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->getErrCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load more records2..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->getDataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contacts_CallRecordFragment"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->fetchRecordsMore()V

    :cond_0
    return-void
.end method

.method private initComponent()V
    .locals 3

    .line 109
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    .line 110
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment$1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/genie/contacts/test/OnRecycleViewScrollListener;)V

    .line 121
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 125
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->subscribeRecords()V

    return-void
.end method

.method private subscribeRecords()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->getLiveRecords()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$CallRecordFragment$JyJnyTgKd_Trvk0ChGoaj9two_s;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$CallRecordFragment$JyJnyTgKd_Trvk0ChGoaj9two_s;-><init>(Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method private updateInfo()V
    .locals 4

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$CallRecordFragment$idn1v_XrjdmHxUCzVdA7KL0iZAQ;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$CallRecordFragment$idn1v_XrjdmHxUCzVdA7KL0iZAQ;-><init>(Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 63
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->tab_call_record:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/utils/AdapterUtils;->setCustomDensity(Landroid/content/Context;)V

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public fetchRecordsMore()V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->getLastIndex()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mOffset:I

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_CallRecordFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mOffset:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x50

    if-gt v0, v2, :cond_1

    .line 100
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->fetchRecordsByOffset(I)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_page_index_limit:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-virtual {v0, v6}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->setIsLoadMoreChange(Z)V

    const-string v0, "not loading..."

    .line 104
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$subscribeRecords$59$CallRecordFragment(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    :cond_1
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mPermitLoading:Z

    .line 138
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 139
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->getErrmsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/ResultCode;->isNoNetWork(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_network_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->getErrmsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->setIsLoadMoreChange(Z)V

    .line 146
    :cond_3
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mOffset:I

    if-nez v2, :cond_8

    .line 147
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->isDataChange()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    const-string v2, "contacts_CallRecordFragment"

    const-string v3, "on call record changed..."

    .line 150
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->getList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mList:Ljava/util/List;

    .line 152
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mList:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_6

    .line 153
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;->setVisibility(I)V

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/utils/AdapterUtils;->isS4A02(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->noCallRecordLl:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->noCallRecordLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 160
    :cond_6
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_7

    .line 161
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->setIsLoadMoreChange(Z)V

    .line 163
    :cond_7
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->noCallRecordLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->setDataList(Ljava/util/List;)V

    goto :goto_2

    .line 169
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 172
    :cond_9
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->addDataList(Ljava/util/List;)V

    .line 176
    :goto_2
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->fetchNotFillOnePage(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

    return-void
.end method

.method public synthetic lambda$updateInfo$60$CallRecordFragment()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->requestData()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onDestroyView()V

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;->unbind()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 189
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onResume()V

    .line 190
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->updateInfo()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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

    .line 71
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->initComponent()V

    .line 72
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public requestData()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mOffset:I

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->fetchRecordsByOffset()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 77
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mPermitLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mPermitLoading:Z

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->setSelected(Z)V

    return-void
.end method
