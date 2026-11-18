.class public Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;
.super Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;
.source "SkillDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SkillDetailFragment"


# instance fields
.field detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

.field private fl_hide_all:Landroid/widget/FrameLayout;

.field private iv_fragment_skill_detail_icon:Landroid/widget/ImageView;

.field private iv_skill_detail_shorcut:Landroid/widget/ImageView;

.field private rootView:Landroid/view/View;

.field private tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

.field private tv_fragment_skill_detail_detail:Landroid/widget/TextView;

.field private tv_fragment_skill_detail_devenloper:Landroid/widget/TextView;

.field private tv_fragment_skill_detail_open1:Landroid/widget/TextView;

.field private tv_fragment_skill_detail_open2:Landroid/widget/TextView;

.field private tv_fragment_skill_detail_openbyschema:Landroid/widget/TextView;

.field private tv_fragment_skill_detail_sub_title:Landroid/widget/TextView;

.field private tv_fragment_skill_detail_title:Landroid/widget/TextView;

.field private tv_fragment_skill_shotcut_info:Landroid/widget/TextView;

.field private tv_fragment_skill_user_count:Landroid/widget/TextView;

.field private tv_skill_detail_avg_score:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->fl_hide_all:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->iv_fragment_skill_detail_icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->setStars(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_detail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->setSpanableString(Landroid/widget/TextView;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_sub_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_open1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_open2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_user_count:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_skill_detail_avg_score:Landroid/widget/TextView;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 75
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_back_fragement_app:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->rootView:Landroid/view/View;

    .line 77
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->fl_hide_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->fl_hide_all:Landroid/widget/FrameLayout;

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->fl_hide_all:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 80
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_detail:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_detail:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 83
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_openbyschema:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_open1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_open1:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_open2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_open2:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_skill_detail_avg_score:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_skill_detail_avg_score:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_fragment_app_detail_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->iv_fragment_skill_detail_icon:Landroid/widget/ImageView;

    .line 92
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_title:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_title_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_detail_sub_title:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_skill_user_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->tv_fragment_skill_user_count:Landroid/widget/TextView;

    .line 96
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->loadDetail()V

    return-void
.end method

.method private loadDetail()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getSkillDetailPage(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method private setSpanableString(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6

    .line 205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 206
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 210
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 215
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)V

    .line 224
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 226
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 227
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#B7C7D5"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 229
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alibaba/ailabs/appbox/R$dimen;->app_title_desc_desc_text_size:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, v1, p2, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 232
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 233
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setStars(I)V
    .locals 4

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->rootView:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v0, :cond_2

    .line 172
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->rootView:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ll_star_item"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getIdByStringName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public doOlnyOnceAtAfterStart()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getLayoutId()I
    .locals 1

    .line 188
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->fragment_skill_detail:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 239
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_back_fragement_app:I

    if-ne p1, v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 241
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_openbyschema:I

    if-ne p1, v0, :cond_1

    .line 242
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getOldSamples()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getOldSamples()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->detail:Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->getOldSamples()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openSkillByCmd(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 181
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->showLoadingView()V

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

    .line 198
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->initView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
