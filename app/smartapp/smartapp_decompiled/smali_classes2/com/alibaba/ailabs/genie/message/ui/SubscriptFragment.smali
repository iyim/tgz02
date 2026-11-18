.class public Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;
.super Landroid/support/v4/app/Fragment;
.source "SubscriptFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final PAGE_SIZE:I = 0xa

.field private static final SUB_LIST_MAX_NUM:I = 0x3e8

.field private static TAG:Ljava/lang/String; = "SubscriptFragment"

.field private static hashCode:I = 0x1


# instance fields
.field private activity:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

.field private context:Landroid/content/Context;

.field private mColumnCount:I

.field private mPageNo:I

.field private mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

.field private subListImageEmpty:Landroid/widget/ImageView;

.field private subListLinearEmpty:Landroid/widget/LinearLayout;

.field private subListTvEmpty:Landroid/widget/TextView;

.field private subscribeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private subscriptListAdapter:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mPageNo:I

    const/4 v0, 0x2

    .line 56
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mColumnCount:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subscribeInfoList:Ljava/util/List;

    .line 68
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/utils/ContextUtils;->getMessageCenterActivity()Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->activity:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->loadDataFromNet()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->activity:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->unSubscribeNet(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 47
    sget v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->hashCode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->updateSwitch(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subDialog(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subscribeInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subListLinearEmpty:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subscriptListAdapter:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subListTvEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subListImageEmpty:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subscribeNet(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private loadDataFromNet()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->listSubscribeInfos(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method public static newInstance(I)Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;
    .locals 3

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;-><init>()V

    .line 80
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    .line 81
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private sendBroadCast(Landroid/content/Context;)V
    .locals 3

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    const-string v2, "gw_online_status"

    .line 178
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.assistant.ONLINE"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setConfig(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 184
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mColumnCount:I

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 185
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subscriptListAdapter:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    .line 186
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/GridSpacingItemDecoration;

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mColumnCount:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/GridSpacingItemDecoration;-><init>(IIZ)V

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 187
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subscriptListAdapter:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 188
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subscriptListAdapter:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$3;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$3;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->setISubscriptNetWorkListener(Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;)V

    return-void
.end method

.method private subDialog(Ljava/lang/String;)V
    .locals 7

    .line 333
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->context:Landroid/content/Context;

    new-instance v6, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$7;

    invoke-direct {v6, p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$7;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    const-string v3, "\u8ba2\u9605\u63d0\u793a"

    const-string v5, "\u77e5\u9053\u4e86"

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->setCanceledOnTouchOutside(Z)V

    .line 343
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mSubDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->show()V

    return-void
.end method

.method private subscribeNet(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 4

    .line 202
    sget v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->hashCode:I

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->show(I)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->subscribe(JLcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method private unSubscribeNet(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 3

    .line 278
    sget v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->hashCode:I

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->show(I)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->unSubscribe(JLcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method private updateSwitch(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 2

    const/4 v0, 0x1

    .line 307
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->setAllowAppPush(Ljava/lang/Boolean;)V

    .line 308
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->setAllowVoicePush(Ljava/lang/Boolean;)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 310
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$6;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->updateSwitch(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "section_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->mColumnCount:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 98
    sget p3, Lcom/alibaba/ailabs/genie/message/R$layout;->fragment_subscript:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->context:Landroid/content/Context;

    .line 101
    sget p2, Lcom/alibaba/ailabs/genie/message/R$id;->sub_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 102
    sget p2, Lcom/alibaba/ailabs/genie/message/R$id;->sub_list_smart_refresh:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    .line 103
    sget p2, Lcom/alibaba/ailabs/genie/message/R$id;->sub_list_linear_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subListLinearEmpty:Landroid/widget/LinearLayout;

    .line 104
    sget p2, Lcom/alibaba/ailabs/genie/message/R$id;->sub_list_image_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subListImageEmpty:Landroid/widget/ImageView;

    .line 105
    sget p2, Lcom/alibaba/ailabs/genie/message/R$id;->sub_list_tv_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subListTvEmpty:Landroid/widget/TextView;

    .line 107
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->setConfig(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V

    .line 109
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 110
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 112
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    new-instance p3, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshHeader(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 113
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    new-instance p3, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsFooter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setRefreshFooter(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 114
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->refreshLayout:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    new-instance p3, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshLoadMoreListener;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 348
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 349
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->loadDataFromNet()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
