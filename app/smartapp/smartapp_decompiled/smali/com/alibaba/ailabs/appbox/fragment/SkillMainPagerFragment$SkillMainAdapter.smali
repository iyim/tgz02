.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SkillMainAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeHeaderViewHolder;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$ClassroomViewHolder;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_SKILL_CLASSROOM:I = 0x2

.field private static final TYPE_SKILL_GUESS_YOU_LIKE:I = 0x4

.field private static final TYPE_SKILL_GUESS_YOU_LIKE_HEADER:I = 0x3

.field private static final TYPE_SKILL_MAIN_VIEWPAGER_HEADER:I = 0x0

.field private static final TYPE_SKILL_RANK:I = 0x1


# instance fields
.field rankPagerAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    const/4 v0, 0x4

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->likes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    return v1

    :catch_0
    move-exception v1

    .line 366
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x4

    return p1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->getItemViewType(I)I

    move-result v0

    const-string v1, "#FFFFFF"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 203
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->vp_skill_main_header:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 204
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 205
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    .line 206
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alibaba/ailabs/appbox/R$dimen;->common_hori_list_left_right_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    mul-float v7, v7, v6

    const/high16 v6, 0x43700000    # 240.0f

    add-float/2addr v7, v6

    .line 205
    invoke-static {v5, v7}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v0, v5

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 208
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->vp_skill_main_header:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :try_start_1
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->skill_banner_circle_indicator:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->vp_skill_main_header:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v0, v2}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->addPagerData(ILandroid/support/v4/view/ViewPager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 213
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    :goto_0
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->vp_skill_main_header:Landroid/support/v4/view/ViewPager;

    .line 216
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 215
    invoke-static {p2, v4, v4, v4, v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->expandViewTouchDelegate(Landroid/view/View;IIII)V

    .line 217
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->vp_skill_main_header:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->getPageTransformer()Landroid/support/v4/view/ViewPager$PageTransformer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 218
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->vp_skill_main_header:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-direct {v0, v2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 219
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v3, :cond_0

    .line 220
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->vp_skill_main_header:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 222
    :cond_0
    new-instance p2, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setCircleCount(I)V

    .line 224
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setCircleColor(I)V

    .line 225
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setCircleClickListener(Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;)V

    .line 231
    move-object v0, p1

    check-cast v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->magic_ind_skill_header:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->setNavigator(Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;)V

    .line 232
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->magic_ind_skill_header:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    check-cast p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->vp_skill_main_header:Landroid/support/v4/view/ViewPager;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper;->bind(Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;Landroid/support/v4/view/ViewPager;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 237
    :cond_1
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 239
    :try_start_3
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->rankPagerAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;

    if-nez p2, :cond_2

    .line 240
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->rankPagerAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;

    .line 241
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->vp_skill_rank:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->rankPagerAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 243
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    .line 244
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillRank()Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    .line 245
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillRank()Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->getContent()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    .line 246
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillRank()Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->getContent()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 247
    :cond_3
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->rl_item_genie_skill_rank:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 249
    move-object v0, p1

    check-cast v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->rl_item_genie_skill_rank:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    :cond_4
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->vp_skill_rank:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 253
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->tv_skill_rank_title2:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->tv_skill_rank_title3:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$3;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    new-instance p2, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setCircleCount(I)V

    .line 268
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setCircleColor(I)V

    .line 269
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$4;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setCircleClickListener(Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 277
    :try_start_4
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->skill_rank_circle_indicator:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    .line 278
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillRank()Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->vp_skill_rank:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->addPagerData(ILandroid/support/v4/view/ViewPager;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 280
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :goto_1
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->tv_rankl_all:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$5;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    move-object p2, p1

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->vp_skill_rank:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$6;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception p2

    .line 317
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    check-cast p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->itemView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 320
    :cond_5
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 321
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p2, v0, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 322
    check-cast p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$ClassroomViewHolder;

    iget-object v0, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$ClassroomViewHolder;->rv_skill_classroom:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 323
    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$ClassroomViewHolder;->rv_skill_classroom:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$1;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_2

    .line 325
    :cond_6
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 327
    :cond_7
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    sub-int/2addr p2, v1

    .line 329
    move-object v0, p1

    check-cast v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;

    iget-object v1, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;->skillItemView:Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->likes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->setCmdText(Ljava/lang/String;)V

    .line 330
    iget-object v1, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;->skillItemView:Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->likes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->setData2View(Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;)V

    .line 331
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$7;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$7;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object p1, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;->skillItemView:Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$8;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$8;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;I)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->setTipsClickListener(Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 179
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_skill_main_vp_header:I

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 180
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 182
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_skill_main_rank:I

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 183
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 185
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_skill_main_classroom:I

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 186
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$ClassroomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$ClassroomViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 188
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_skill_main_guess_you_like_header:I

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 189
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeHeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeHeaderViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/view/View;)V

    return-object p2

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 191
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_skill_main_skill_item:I

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 192
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/view/View;)V

    return-object p2

    :cond_4
    return-object p1
.end method
