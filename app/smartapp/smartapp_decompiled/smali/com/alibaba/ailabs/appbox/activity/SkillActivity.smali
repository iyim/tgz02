.class public Lcom/alibaba/ailabs/appbox/activity/SkillActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "SkillActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "--SkillActivity"


# instance fields
.field fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field ivBack:Landroid/widget/ImageView;

.field ivHome:Landroid/widget/ImageView;

.field likes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;",
            ">;"
        }
    .end annotation
.end field

.field mainpage:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

.field pageIndex:I

.field pageSize:I

.field tabLayout:Landroid/support/design/widget/TabLayout;

.field titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->fragments:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->titles:Ljava/util/List;

    const/4 v0, 0x1

    .line 169
    iput v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->pageIndex:I

    const/16 v0, 0x1e

    .line 170
    iput v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->pageSize:I

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->likes:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/activity/SkillActivity;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->parseSkillMainPage(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 1

    .line 151
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->ivBack:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_home:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->ivHome:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->ivHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tbl_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 156
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->vp_skill_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method

.method private parseSkillMainPage(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;
    .locals 6

    const-string/jumbo v0, "title"

    .line 129
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    .line 130
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 131
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    const-string/jumbo v3, "\u7cbe\u7075\u6392\u884c"

    .line 132
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    .line 134
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->setSkillRank(Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "video_skill_list"

    .line 135
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;

    .line 137
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->setSkillClassroom(Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "\u58f0\u6d3b\u5e7f\u573a"

    .line 138
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;

    .line 140
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->setSkillLiveSquare(Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public loadGYL()V
    .locals 3

    .line 175
    iget v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->pageIndex:I

    iget v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->pageSize:I

    new-instance v2, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;-><init>(Lcom/alibaba/ailabs/appbox/activity/SkillActivity;)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getGuessYouLikeSkill(IILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 162
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_back:I

    if-ne p1, v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->finish()V

    goto :goto_0

    .line 164
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_home:I

    if-ne p1, v0, :cond_1

    .line 165
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->goHome(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->mainpage:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->loadGYL()V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->showLoadingView()V

    .line 64
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->activity_skill_main:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->initView()V

    .line 68
    new-instance p1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/SkillActivity;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getMainSkill(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method
