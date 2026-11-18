.class public Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShoppingSearchRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;,
        Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;)Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mOnItemClickListener:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;

    return-object p0
.end method

.method private changPricesize(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .line 239
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "."

    .line 240
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
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
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->onBindViewHolder(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;I)V
    .locals 10

    .line 75
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;

    if-eqz v0, :cond_6

    .line 78
    iget-boolean v1, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->isShowEmptyLayout:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 79
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->shopping_list_item_layout:Landroid/widget/FrameLayout;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->shopping_item_bg:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 80
    iget-object p1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->shopping_item_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 83
    :cond_0
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->shopping_list_item_layout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->shopping_item_layout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v1, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_2

    .line 89
    new-instance v1, Lcom/bumptech/glide/load/MultiTransformation;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/bumptech/glide/load/Transformation;

    new-instance v7, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;

    sget-object v8, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->TOP_LEFT:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    invoke-direct {v7, v2, v4, v8}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;-><init>(IILcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;)V

    aput-object v7, v6, v4

    new-instance v7, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;

    sget-object v8, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->BOTTOM_LEFT:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    invoke-direct {v7, v2, v4, v8}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;-><init>(IILcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;)V

    aput-object v7, v6, v5

    invoke-direct {v1, v6}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 92
    new-instance v6, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v6}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v7, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->default_shopping_icon:I

    .line 93
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v6

    sget v7, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->default_shopping_icon:I

    .line 94
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v6

    .line 101
    invoke-virtual {v6, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 104
    iget-object v6, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    const-string v7, "alicdn.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://g-search1.alicdn.com/img/bao/uploaded/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    .line 107
    :cond_1
    iget-object v6, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v7, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v6, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->mImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 110
    :cond_2
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    if-ge p2, v1, :cond_3

    goto :goto_0

    .line 123
    :cond_3
    rem-int/2addr p2, v1

    :goto_0
    add-int/2addr p2, v5

    .line 125
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_good_index:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->curPrice:D

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v6, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_cur_price:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->changPricesize(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_orign_price:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_orign_price:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setFlags(I)V

    .line 180
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_orign_price:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u00a5"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->origPrice:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_month_sale:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->monthSale:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 188
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_wakeup:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 190
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/alibaba/ailabs/genie/shopping/R$string;->shopping_buy_which_str:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-object v6, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_wakeup:Landroid/widget/TextView;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, v4

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_1
    iget p2, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->inv:I

    if-lez p2, :cond_5

    .line 194
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_good_index:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->tv_shopping_good_index_bg:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 195
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->img_sellout:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_wakeup:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 199
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_wakeup:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;Lcom/alibaba/genie/shopping/bean/GoodInfo;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$2;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;Lcom/alibaba/genie/shopping/bean/GoodInfo;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 214
    :cond_5
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_good_index:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->tv_shopping_good_index_disable_bg:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 215
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->img_sellout:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_wakeup:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 219
    iget-object p2, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_wakeup:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :goto_2
    iget-object p1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$3;

    invoke-direct {p2, p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$3;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;Lcom/alibaba/genie/shopping/bean/GoodInfo;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;
    .locals 2

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 69
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$layout;->recyclerview_shopping_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;Landroid/view/View;Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$1;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->mOnItemClickListener:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;

    return-void
.end method
