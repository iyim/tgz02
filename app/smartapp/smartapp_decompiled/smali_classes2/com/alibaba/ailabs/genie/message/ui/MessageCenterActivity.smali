.class public Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MessageCenterActivity.java"


# static fields
.field private static MAX_UN_READ_NUM:I = 0x63

.field private static TAG:Ljava/lang/String; = "MessageCenterActivity"


# instance fields
.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private iMessageIpcService:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

.field private mClearMessage:Landroid/widget/Button;

.field private messageFragment:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

.field public messageListener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private subFragment:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->fragments:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$7;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->messageListener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Landroid/support/design/widget/TabLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 43
    sget v0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->MAX_UN_READ_NUM:I

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->subFragment:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Landroid/widget/Button;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->mClearMessage:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->goToHome()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->readAllMessages()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->iMessageIpcService:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    return-object p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->iMessageIpcService:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->messageFragment:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    return-object p0
.end method

.method private bindIpcService()V
    .locals 3

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.alibaba.ailabs.genie.messagecenter.ACTION_NOTIFY"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$6;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 213
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private goToHome()V
    .locals 3

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 161
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->tab_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 162
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 163
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->nav_bar_back_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 164
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->nav_bar_home_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 165
    sget v2, Lcom/alibaba/ailabs/genie/message/R$id;->nav_bar_clear_message:I

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->mClearMessage:Landroid/widget/Button;

    const/4 v2, 0x1

    .line 166
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->newInstance(I)Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->messageFragment:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    const/4 v2, 0x2

    .line 167
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->newInstance(I)Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->subFragment:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    .line 168
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->fragments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->messageFragment:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->fragments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->subFragment:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->messageFragment:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->mClearMessage:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->setUserVisibleHint(Landroid/view/View;)V

    .line 171
    new-instance v2, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$3;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$4;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->mClearMessage:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$5;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private readAllMessages()V
    .locals 2

    .line 279
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->setReadAllMessage(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method private tayLayoutListener()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/message/utils/ContextUtils;->setMessageCenterActivity(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    .line 61
    sget p1, Lcom/alibaba/ailabs/genie/message/R$layout;->activity_message_center:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->bindIpcService()V

    .line 63
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->initView()V

    .line 64
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->fragments:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, v1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 69
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->getTabView(I)Landroid/view/View;

    move-result-object v2

    .line 70
    sget v3, Lcom/alibaba/ailabs/genie/message/R$id;->tv_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v4, v2}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    :cond_0
    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alibaba/ailabs/genie/message/R$color;->white:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41d00000    # 26.0f

    .line 77
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    .line 80
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 82
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->mClearMessage:Landroid/widget/Button;

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :cond_2
    sget v4, Lcom/alibaba/ailabs/genie/message/R$id;->iv_tab_red:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alibaba/ailabs/genie/message/R$color;->tab_title_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 88
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->messageFragment:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->setOnRedDotChangeListener(Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;)V

    .line 129
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->tayLayoutListener()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 241
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->destroy()V

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->iMessageIpcService:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->iMessageIpcService:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->messageListener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;->unregisterListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 249
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 234
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 235
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/message/utils/ContextUtils;->setMessageCenterActivity(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 4

    .line 224
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/4 v0, -0x1

    .line 226
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/message/utils/MessageBroadCastUtils;->sendMessageCenterBroadCast(Landroid/content/Context;I)V

    .line 227
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/message/utils/ContextUtils;->setMessageCenterActivity(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V

    .line 228
    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->MESSAGE_CENTER_EXPOSURE:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->PAGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->SPM:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->exposureUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
