.class public Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShoppingSearchGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private changPricesize(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .line 259
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "."

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->getItem(I)Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$layout;->shopping_search_gridview_item:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;)V

    .line 77
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->good_img:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->mImg:Landroid/widget/ImageView;

    .line 78
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    .line 80
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_good_index:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_good_index:Landroid/widget/TextView;

    .line 81
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_corner_mark:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_corner_mark:Landroid/widget/TextView;

    .line 86
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_cur_price:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_cur_price:Landroid/widget/TextView;

    .line 87
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_orign_price:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_orign_price:Landroid/widget/TextView;

    .line 88
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_month_sale:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_month_sale:Landroid/widget/TextView;

    .line 89
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_wakeup:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_wakeup:Landroid/widget/TextView;

    .line 90
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_sellout:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->img_sellout:Landroid/widget/ImageView;

    .line 92
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->shopping_list_item_layout:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->shopping_list_item_layout:Landroid/widget/FrameLayout;

    .line 93
    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$id;->shopping_item_layout:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->shopping_item_layout:Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    if-eqz v2, :cond_8

    .line 102
    iget-boolean v3, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 103
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->shopping_list_item_layout:Landroid/widget/FrameLayout;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->shopping_item_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 104
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->shopping_item_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p2

    .line 107
    :cond_1
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->shopping_list_item_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->shopping_item_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v3, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->img:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 113
    new-instance v3, Lcom/bumptech/glide/load/MultiTransformation;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/bumptech/glide/load/Transformation;

    new-instance v7, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;

    sget-object v8, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->TOP_LEFT:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    const/4 v9, 0x5

    invoke-direct {v7, v9, v1, v8}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;-><init>(IILcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;)V

    aput-object v7, v6, v1

    new-instance v7, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;

    sget-object v8, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->BOTTOM_LEFT:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    invoke-direct {v7, v9, v1, v8}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;-><init>(IILcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;)V

    aput-object v7, v6, v5

    invoke-direct {v3, v6}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 116
    new-instance v6, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v6}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v7, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->bg_icon_placeholder_shopping:I

    .line 117
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v6

    sget v7, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->bg_icon_placeholder_shopping:I

    .line 118
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v6

    .line 125
    invoke-virtual {v6, v3}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    .line 128
    iget-object v6, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->img:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->img:Ljava/lang/String;

    const-string v7, "alicdn.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://g-search1.alicdn.com/img/bao/uploaded/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->img:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->img:Ljava/lang/String;

    .line 131
    :cond_2
    iget-object v6, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v7, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->img:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v6, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->mImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 134
    :cond_3
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x4

    if-ge p1, v3, :cond_4

    goto :goto_1

    .line 147
    :cond_4
    rem-int/2addr p1, v3

    :goto_1
    add-int/2addr p1, v5

    .line 149
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_good_index:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->cornerMark:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 153
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_corner_mark:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_corner_mark:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->cornerMark:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 156
    :cond_5
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_corner_mark:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->curPrice:D

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    iget-object v6, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_cur_price:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->changPricesize(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_orign_price:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_orign_price:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setFlags(I)V

    .line 189
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_orign_price:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u00a5"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->origPrice:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_month_sale:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->monthSale:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 197
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_wakeup:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 199
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/alibaba/ailabs/genie/shopping/R$string;->shopping_buy_which_str:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    iget-object v6, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_wakeup:Landroid/widget/TextView;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_3
    iget p1, v2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->inv:I

    if-lez p1, :cond_7

    .line 203
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_good_index:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->tv_shopping_good_index_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 204
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->img_sellout:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_wakeup:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 208
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_wakeup:Landroid/widget/TextView;

    new-instance p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;

    invoke-direct {p3, p0, v2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 221
    :cond_7
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_good_index:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->tv_shopping_good_index_disable_bg:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 222
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->img_sellout:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_wakeup:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 226
    iget-object p1, p3, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->tv_wakeup:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_4
    return-object p2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
