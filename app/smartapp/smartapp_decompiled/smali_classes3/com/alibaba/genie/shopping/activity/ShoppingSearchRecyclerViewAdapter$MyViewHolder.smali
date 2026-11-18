.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShoppingSearchRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field img_sellout:Landroid/widget/ImageView;

.field mImg:Landroid/widget/ImageView;

.field shopping_item_layout:Landroid/widget/LinearLayout;

.field shopping_list_item_layout:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

.field tv_cur_price:Landroid/widget/TextView;

.field tv_good_index:Landroid/widget/TextView;

.field tv_month_sale:Landroid/widget/TextView;

.field tv_orign_price:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;

.field tv_wakeup:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    .line 272
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 273
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->good_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->mImg:Landroid/widget/ImageView;

    .line 274
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_title:Landroid/widget/TextView;

    .line 276
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_good_index:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_good_index:Landroid/widget/TextView;

    .line 282
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_cur_price:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_cur_price:Landroid/widget/TextView;

    .line 283
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_orign_price:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_orign_price:Landroid/widget/TextView;

    .line 284
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_month_sale:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_month_sale:Landroid/widget/TextView;

    .line 285
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_wakeup:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->tv_wakeup:Landroid/widget/TextView;

    .line 286
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_sellout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->img_sellout:Landroid/widget/ImageView;

    .line 288
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->shopping_list_item_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->shopping_list_item_layout:Landroid/widget/FrameLayout;

    .line 289
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->shopping_item_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;->shopping_item_layout:Landroid/widget/LinearLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;Landroid/view/View;Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;Landroid/view/View;)V

    return-void
.end method
