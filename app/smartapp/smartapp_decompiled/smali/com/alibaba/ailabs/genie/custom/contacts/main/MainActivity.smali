.class public Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;
.super Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DELAY_LOAD_VIEWPAGER:I = 0x4

.field public static final GET_DATA_FAILS:I = 0x3

.field public static final START_LOADING:I = 0x1

.field public static final STOP_LOADING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "contacts_home"


# instance fields
.field private mFragmentPagerAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;

.field private mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field private mHelper:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private mMainBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

.field private mMessageReceiveListener:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;

.field private mMissedCalls:Ljava/lang/String;

.field private mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    .line 215
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$2;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMessageReceiveListener:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMainBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mFragmentPagerAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;

    return-object p0
.end method

.method private createMainFragmentList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;-><init>()V

    .line 166
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->setHandler(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;)V

    .line 167
    new-instance v2, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;-><init>()V

    .line 168
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->setHandler(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;)V

    .line 170
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isCMCC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v3, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;-><init>()V

    goto :goto_0

    .line 173
    :cond_0
    new-instance v3, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;-><init>()V

    .line 175
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initView()V
    .locals 5

    .line 100
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    .line 101
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_activity_main:I

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMainBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    .line 102
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMainBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;->contentVp:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->setOffscreenPageLimit(I)V

    .line 104
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->createMainFragmentList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mFragmentPagerAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMainBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;->contentVp:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mFragmentPagerAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 106
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->nav_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;

    .line 107
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMainBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;->contentVp:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 108
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->setOnTabSelectedListener(Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar$OnTabSelectedListener;)Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_title_bar_contacts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;IZ)V

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_title_bar_record:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_title_bar_dial:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addTab(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->setHostActivity(Landroid/app/Activity;)V

    .line 113
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->isUniComCustom()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->isCMCC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->layout:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x2

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->addView(Landroid/view/View;I)V

    .line 117
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->nav_bar_tex_guide:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "missedCalls"

    .line 132
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMissedCalls:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMissedCalls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMissedCalls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_home"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMissedCalls:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMissedCalls:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMainBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;->contentVp:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->setCurrentItem(I)V

    return-void

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/page/history"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMainBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;->contentVp:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    const-string v0, "/page/home"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMainBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;->contentVp:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->setCurrentItem(I)V

    :cond_2
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

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 229
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->nav_bar_tex_guide:I

    if-ne p1, v0, :cond_0

    .line 230
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->initSystemUi()V

    .line 92
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->initView()V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 94
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mMessageReceiveListener:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mHelper:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;

    .line 95
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mHelper:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->registerBroadcast()V

    const-string p1, "contacts_home"

    const-string v0, "mmp>>> MainActivity:onCreate "

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 149
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mHelper:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->unRegisterBroadcast()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->resolveIntent(Landroid/content/Intent;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTabReselected(Ljava/lang/String;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTabSelected(Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;->updateCallsViewedTime()V

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->mFragmentPagerAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;->setSelected(I)V

    return-void
.end method

.method public onTabUnselected(Ljava/lang/String;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
