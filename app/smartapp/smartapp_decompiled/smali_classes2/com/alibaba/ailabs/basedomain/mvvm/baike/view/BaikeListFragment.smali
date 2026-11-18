.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaikeListFragment.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCommandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCommandListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;

.field private mContext:Landroid/content/Context;

.field mMainHandler:Landroid/os/Handler;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mVerticalScrollBar:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;

.field private mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mCommandList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mMainHandler:Landroid/os/Handler;

    .line 218
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mCommandListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mVerticalScrollBar:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->onOpenCommand(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->onSelectContent(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private createScrollBar(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;
    .locals 4

    .line 241
    new-instance p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;-><init>(Landroid/content/Context;)V

    .line 242
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 243
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43700000    # 240.0f

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x15

    .line 244
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    const/16 v2, 0xf

    .line 245
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 246
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private onOpenCommand(Ljava/lang/String;)V
    .locals 5

    .line 168
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "index"

    .line 169
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 171
    :catch_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpenCommand parse index err, origin str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 174
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;->getCardList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;->open(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 176
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle this command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " index:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private onSelectContent(Ljava/lang/String;)V
    .locals 5

    .line 181
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->getSelectContentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 186
    :catch_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectContent, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 189
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;->getCardList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;->open(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 191
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle this command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " index:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private setSelectListData()V
    .locals 9

    const-string v0, ""

    .line 142
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v2, "video.research"

    .line 143
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 144
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 146
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;->getCardList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 147
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 148
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 149
    new-instance v6, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;

    invoke-direct {v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;-><init>()V

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->setSelectKey(Ljava/lang/String;)V

    const-string v7, " "

    .line 151
    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {v6, v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->addSelectValue(Ljava/lang/String;)V

    const-string v7, "content"

    .line 153
    invoke-virtual {v1, v7, v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->addSelectData(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)V

    .line 154
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v8

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    const-string v4, "setSelectListData err, "

    invoke-static {v3, v4, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    const-string v3, "488a7efa-40a2-4f4c-a0de-0cc95851ad9e"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->setSelectListData(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 160
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->updateCompusData(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addScrollBar(I)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 209
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 210
    nop

    nop

    .line 211
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->createScrollBar(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;

    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 214
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mVerticalScrollBar:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 55
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    .line 57
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_baike_list_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getRenderViewModel()Landroid/arch/lifecycle/ViewModel;

    move-result-object p2

    .line 59
    instance-of p3, p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    if-eqz p3, :cond_2

    .line 60
    nop

    nop

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    .line 61
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "render viewModel:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 p2, 0x86

    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->addScrollBar(I)V

    .line 65
    new-instance p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;->getCardList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 66
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance p3, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->base_domain_baike_list_devider:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 71
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 73
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;->getCardList()Ljava/util/List;

    move-result-object p2

    const/16 p3, 0x8

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;->getCardList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, p3, :cond_1

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mVerticalScrollBar:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/VerticalScrollBar;->setVisibility(I)V

    .line 79
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 110
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    .line 111
    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    const-string p3, "start fragment with wrong view model, finish self"

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 197
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mCommandListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 128
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mCommandList:Ljava/util/ArrayList;

    const-string v1, "Open"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mCommandList:Ljava/util/ArrayList;

    const-string v1, "PlayIndex"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mCommandList:Ljava/util/ArrayList;

    const-string v1, "SelectContent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mCommandListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mCommandList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->mMainHandler:Landroid/os/Handler;

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->registerCommandListener(Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->setSelectListData()V

    return-void
.end method
