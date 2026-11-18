.class public Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;
.super Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;
.source "PlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity<",
        "Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayListActivity"


# instance fields
.field private binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFragmentIndex:I

.field private mCurrentPageNum:I

.field private mIndicatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemType:Ljava/lang/String;

.field private mPageAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/MyPageAdapter;

.field private mQuickAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mQuickAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mItemType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    return-object p0
.end method

.method private createFragmentList(Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;",
            ">;"
        }
    .end annotation

    const-string p1, "music"

    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "\u6211\u7684\u6536\u85cf"

    const-string v1, "\u5f53\u524d\u64ad\u653e"

    const-string v2, "story"

    const-string v3, "program"

    if-nez p1, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "children_song"

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "radio"

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 167
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-direct {p1, v2, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 169
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 171
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    .line 173
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_COLLECT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-direct {p1, v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 146
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 147
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    sget-object v4, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_HISTORY:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-direct {p1, v4, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    const-string v5, "\u64ad\u653e\u5386\u53f2"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-direct {p1, v2, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;Ljava/lang/String;)V

    .line 157
    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentPageNum:I

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->setCurrentPageNum(I)V

    .line 158
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    :cond_3
    :goto_1
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-direct {p1, v2, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;Ljava/lang/String;)V

    .line 153
    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentPageNum:I

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->setCurrentPageNum(I)V

    .line 154
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 p1, 0x1

    .line 160
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_COLLECT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-direct {p1, v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    return-object p1
.end method

.method private initIndicator()V
    .locals 3

    .line 228
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->indicator_item:I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mQuickAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    .line 256
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 258
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;->indicatorRyId:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;->indicatorRyId:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mQuickAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mQuickAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mIndicatorList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "itemType"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mItemType:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "pageNum"

    .line 184
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentPageNum:I

    .line 186
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->play_list_activity:I

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mItemType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;->lineIvId:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_line_bg_child:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;->lineIvId:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_line_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mItemType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->createFragmentList(Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    .line 195
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/MyPageAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/MyPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mPageAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/MyPageAdapter;

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;->playListVpId:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mPageAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/MyPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;->playListVpId:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 221
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->initIndicator()V

    .line 222
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;->playListVpId:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 266
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected handError(Ljava/lang/Integer;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    if-le v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;

    .line 132
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->handError(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method protected handMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;

    .line 95
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->getListType()Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->MetadataToSong(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    goto :goto_1

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->MetadataToSong(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;

    if-eqz v1, :cond_1

    .line 103
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->getListType()Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public handleBack()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public handleExtraChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handleExtraChanged(Landroid/os/Bundle;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    if-le v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;

    .line 124
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->updateExtra(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public handleSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handleSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "requestFailed"

    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    move-result-object v0

    return-object v0
.end method

.method protected initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;
    .locals 2

    .line 89
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    return-object v0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 138
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->closeIbId:I

    if-ne p1, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->addActivity(Landroid/app/Activity;)V

    .line 50
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->initView()V

    const-string p1, "openlist"

    .line 51
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendStatCheckListLog(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 288
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onDestroy()V

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;->unbind()V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->binding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    :cond_0
    return-void
.end method

.method public onMediaSessionConnected()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->fragments:Ljava/util/List;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mCurrentFragmentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;

    .line 61
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->getListType()Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->MetadataToSong(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->setController(Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->requestCurrentPageData(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 280
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/App;->setIsPlayListActivityInForeground(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 274
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onResume()V

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/App;->setIsPlayListActivityInForeground(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onStart()V

    const-string v0, "PlayListActivity"

    const-string v1, "onStart"

    .line 74
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onStop()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onStop()V

    const-string v0, "PlayListActivity"

    const-string v1, "onStop"

    .line 80
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
