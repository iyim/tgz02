.class public Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;
.super Landroid/support/v4/app/Fragment;
.source "MessageListFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final ER_SCREEN_MESSAGE_OUT_LIMIT:Ljava/lang/String; = "50001"

.field private static final GRID_SPACING_ITEM_DECORATION:I = 0x14

.field private static final MESSAGE_LIST_MAX_NUM:I = 0x3e8

.field private static final PAGE_SIZE:I = 0x3

.field private static TAG:Ljava/lang/String; = "MessageListFragment"


# instance fields
.field private activity:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

.field private clearMessageView:Landroid/view/View;

.field private countUnread:I

.field private genieLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private mColumnCount:I

.field private mPageNum:I

.field private messageAdapter:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

.field private msgListImageEmpty:Landroid/widget/ImageView;

.field private msgListLinearEmpty:Landroid/widget/LinearLayout;

.field private msgListTvEmpty:Landroid/widget/TextView;

.field private redDotChangeListener:Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;

.field private refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mPageNum:I

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mColumnCount:I

    .line 68
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/utils/ContextUtils;->getMessageCenterActivity()Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->activity:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mPageNum:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mPageNum:I

    return p1
.end method

.method static synthetic access$008(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I
    .locals 2

    .line 45
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mPageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->countUnread:I

    return p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->messageAdapter:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->countUnread:I

    return p1
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;Ljava/util/List;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->readMessages(Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->redDotChangeListener:Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->genieLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->activity:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->msgListLinearEmpty:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->msgListTvEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->msgListImageEmpty:Landroid/widget/ImageView;

    return-object p0
.end method

.method private listUnreadMessages(I)V
    .locals 3

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$5;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)V

    const/16 v2, 0xa

    invoke-interface {v0, p1, v2, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->listUnreadMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method public static newInstance(I)Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;
    .locals 3

    .line 72
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    .line 74
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private readMessages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 258
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 259
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->getExtMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object p1

    .line 262
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$4;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)V

    invoke-interface {p1, v0, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->setReadMessages(Ljava/util/List;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method private setConfig(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 210
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 211
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->messageAdapter:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    .line 212
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/GridSpacingItemDecoration;

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mColumnCount:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/GridSpacingItemDecoration;-><init>(IIZ)V

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 213
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->messageAdapter:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public getCountUnread()V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->getCountUnread(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method public loadDataFromNet()V
    .locals 4

    .line 128
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mPageNum:I

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->genieLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->genieLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->genieLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    .line 137
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 138
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mPageNum:I

    const/4 v2, 0x3

    new-instance v3, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->listAllMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "section_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->mColumnCount:I

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->genieLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    sget p3, Lcom/alibaba/ailabs/genie/message/R$layout;->fragment_message_center:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 97
    sget p3, Lcom/alibaba/ailabs/genie/message/R$id;->msg_list_smart_refresh:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    .line 98
    sget p3, Lcom/alibaba/ailabs/genie/message/R$id;->msg_list_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/RecyclerView;

    .line 99
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->msg_list_linear_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->msgListLinearEmpty:Landroid/widget/LinearLayout;

    .line 100
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->msg_list_image_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->msgListImageEmpty:Landroid/widget/ImageView;

    .line 101
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->msg_list_tv_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->msgListTvEmpty:Landroid/widget/TextView;

    .line 102
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->setConfig(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V

    .line 105
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;

    invoke-direct {v0, p2}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshHeader(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 106
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsFooter;

    invoke-direct {v0, p2}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshFooter(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 107
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    new-instance p3, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshLoadMoreListener;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 340
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->genieLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 299
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->loadDataFromNet()V

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getCountUnread()V

    return-void
.end method

.method public setOnRedDotChangeListener(Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->redDotChangeListener:Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;

    return-void
.end method

.method public setUserVisibleHint(Landroid/view/View;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->clearMessageView:Landroid/view/View;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 313
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->clearMessageView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 317
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->countUnread:I

    if-lez p1, :cond_0

    .line 318
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->clearMessageView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->clearMessageView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->clearMessageView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
