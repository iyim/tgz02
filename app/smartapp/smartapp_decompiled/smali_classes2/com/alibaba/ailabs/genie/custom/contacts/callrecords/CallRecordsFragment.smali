.class public Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;
.super Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;
.source "CallRecordsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_records"


# instance fields
.field private isEnableFetch:Z

.field private mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

.field private mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;",
            ">;"
        }
    .end annotation
.end field

.field private mOffset:I

.field private mPermitLoading:Z

.field private mScrollBar:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;

.field private mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mPermitLoading:Z

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->isEnableFetch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->isEnableFetch:Z

    return p0
.end method

.method private initComponent()V
    .locals 3

    .line 99
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    .line 100
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment$1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mScrollBar:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mScrollBar:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/OnRecycleViewScrollListener;)V

    .line 113
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 117
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->subscribeRecords()V

    return-void
.end method

.method private subscribeRecords()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->getCallRecords()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/-$$Lambda$CallRecordsFragment$N1TitJFV4nbQM8xanL8IKtNknv0;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/-$$Lambda$CallRecordsFragment$N1TitJFV4nbQM8xanL8IKtNknv0;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public addNewRecord(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;)V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->requestData()V

    return-void
.end method

.method protected bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 57
    sget p3, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_tab_call_record:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public fetchRecordsMore()V
    .locals 7

    .line 84
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mOffset:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mOffset:I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_records"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mOffset:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/16 v2, 0xbe

    if-gt v0, v2, :cond_1

    .line 90
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->fetchRecordsByOffset(I)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->getResources()Landroid/content/res/Resources;

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

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    invoke-virtual {v0, v6}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setIsLoadMoreChange(Z)V

    const-string v0, "not loading..."

    .line 94
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getUtPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Call_logs"

    return-object v0
.end method

.method public getUtPageSpm()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12013448"

    return-object v0
.end method

.method public isOpenUt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$subscribeRecords$22$CallRecordsFragment(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mPermitLoading:Z

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ResultCode;->isNoNetWork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_network_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->getErrmsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setIsLoadMoreChange(Z)V

    .line 136
    :cond_2
    iget v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mOffset:I

    const-string v3, "contacts_records"

    if-nez v2, :cond_6

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->isDataChange()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const-string v2, "0 on call record changed..."

    .line 140
    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 141
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->isEnableFetch:Z

    .line 142
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setIsLoadMoreChange(Z)V

    .line 143
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mList:Ljava/util/List;

    .line 144
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mList:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result p1

    const/16 v2, 0x8

    if-eqz p1, :cond_4

    .line 145
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->noCallRecordImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->noCallRecordText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 150
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v1, :cond_5

    .line 151
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setIsLoadMoreChange(Z)V

    .line 153
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->callRecordRecyclerview:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->noCallRecordImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;->noCallRecordText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setDataList(Ljava/util/List;)V

    goto :goto_2

    .line 160
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->isEnableFetch:Z

    .line 163
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setIsLoadMoreChange(Z)V

    return-void

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->addDataList(Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    const-string p1, "contacts_records"

    const-string v0, "mmp>>> CallRecordsFragment:onCreate "

    .line 52
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 63
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->initComponent()V

    .line 64
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public requestData()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mOffset:I

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mOffset:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->fetchRecordsByOffset(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 69
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mPermitLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mPermitLoading:Z

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->setSelected(Z)V

    return-void
.end method
