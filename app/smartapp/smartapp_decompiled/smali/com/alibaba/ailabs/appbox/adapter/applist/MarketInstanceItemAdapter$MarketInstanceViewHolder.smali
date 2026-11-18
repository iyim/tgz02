.class Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MarketInstanceItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarketInstanceViewHolder"
.end annotation


# instance fields
.field iv_app_list_new:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_app_list_new:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;->iv_app_list_new:Landroid/widget/ImageView;

    return-void
.end method
