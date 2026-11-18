.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShoppingSearchGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field img_sellout:Landroid/widget/ImageView;

.field mImg:Landroid/widget/ImageView;

.field shopping_item_layout:Landroid/widget/LinearLayout;

.field shopping_list_item_layout:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

.field tv_corner_mark:Landroid/widget/TextView;

.field tv_cur_price:Landroid/widget/TextView;

.field tv_good_index:Landroid/widget/TextView;

.field tv_month_sale:Landroid/widget/TextView;

.field tv_orign_price:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;

.field tv_wakeup:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$ViewHolder;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;)V

    return-void
.end method
