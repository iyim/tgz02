.class public Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "SkillDetailsActivity.java"


# static fields
.field public static final PATH_DETAILS:Ljava/lang/String; = "/details"

.field public static final PATH_SKILL:Ljava/lang/String; = "/skill_detail"

.field public static final PATH_TOPIC:Ljava/lang/String; = "/topic"


# instance fields
.field appFragment:Landroid/support/v4/app/Fragment;

.field private mDetailsContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->openMarketDetailFragment(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getTypeFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "."

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "apk"

    return-object p1

    :cond_1
    const-string p1, "applet"

    return-object p1
.end method

.method private init(Landroid/content/Intent;)V
    .locals 3

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/details"

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->showLoadingView()V

    .line 69
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->getTypeFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;)V

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getMarketInfoById(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    goto :goto_0

    :cond_0
    const-string v0, "appdetail"

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->openMarketDetailFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "/topic"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 96
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/TopicDetailsFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/fragment/TopicDetailsFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->appFragment:Landroid/support/v4/app/Fragment;

    .line 97
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->fl_details_container:I

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->appFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 98
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_2
    const-string p1, "/skill_detail"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 100
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->appFragment:Landroid/support/v4/app/Fragment;

    .line 104
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->fl_details_container:I

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->appFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    :goto_0
    return-void
.end method

.method private openMarketDetailFragment(Ljava/lang/String;)V
    .locals 3

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->finish()V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-direct {v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->appFragment:Landroid/support/v4/app/Fragment;

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appdetail"

    .line 125
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->appFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 127
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->fl_details_container:I

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->appFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 128
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 51
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->activity_detail:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->setContentView(I)V

    .line 52
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->fl_details_container:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->mDetailsContainer:Landroid/widget/FrameLayout;

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->init(Landroid/content/Intent;)V

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "DetailsActivity"

    invoke-static {v0, v0, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->init(Landroid/content/Intent;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
