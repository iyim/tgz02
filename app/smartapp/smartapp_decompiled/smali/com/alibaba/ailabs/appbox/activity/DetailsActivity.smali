.class public Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "DetailsActivity.java"


# static fields
.field public static final PATH_DETAILS:Ljava/lang/String; = "/details"

.field private static final TAG:Ljava/lang/String; = "DetailsActivity"


# instance fields
.field appFragment:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

.field private isLoading:Z

.field private mDetailsContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->getTypeFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->onDataLoaded(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->openMarketDetailFragment(Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getTypeFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "."

    .line 243
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
    .locals 5

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryid is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->getTypeFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DetailsActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/details"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    const-string/jumbo p1, "showLoadingView"

    .line 73
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->showLoadingView(Z)V

    .line 75
    iput-boolean v4, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isLoading:Z

    const-string p1, "getMarketInfoById"

    .line 77
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->getTypeFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getMarketInfoById(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    goto :goto_0

    :cond_0
    const-string v0, "appdetail"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->openMarketDetailFragment(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onDataLoaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 163
    const-class v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 164
    const-class v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 166
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "DetailsActivity"

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#####3333 marketAppitemBean1 is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; pagename is\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 171
    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "collected"

    .line 172
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setIsCollected(Ljava/lang/String;)V

    .line 173
    new-instance p1, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$2;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$2;-><init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    const-string/jumbo p1, "showData_collected"

    .line 186
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_1
    new-instance p1, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;

    invoke-direct {p1, p0, v0, p2}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;-><init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    const-string/jumbo p1, "showData_uncollected"

    .line 207
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openMarketDetailFragment(Ljava/lang/String;Z)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->finish()V

    return-void

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-direct {v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->appFragment:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    .line 229
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appdetail"

    .line 230
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isCollected"

    .line 231
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->appFragment:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 233
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->fl_details_container:I

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->appFragment:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 234
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "DetailsActivity"

    const-string v0, "onCreate"

    .line 52
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 57
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->activity_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->setContentView(I)V

    .line 58
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->fl_details_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->mDetailsContainer:Landroid/widget/FrameLayout;

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->init(Landroid/content/Intent;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 212
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "DetailsActivity"

    const-string v1, "onNewIntent call.."

    .line 213
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->init(Landroid/content/Intent;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->appFragment:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "DetailsActivity"

    const-string v1, "onPause"

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onPause()V

    .line 263
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->finishLoadingView()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume isLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onResume()V

    .line 254
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->showLoadingView(Z)V

    :cond_0
    return-void
.end method
