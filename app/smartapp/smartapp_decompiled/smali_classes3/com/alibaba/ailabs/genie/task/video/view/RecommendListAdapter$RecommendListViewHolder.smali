.class public Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecommendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendListViewHolder"
.end annotation


# instance fields
.field public mCharge:Landroid/widget/ImageView;

.field public mPosition:I

.field public mRating:Landroid/widget/TextView;

.field public mThumb:Landroid/widget/ImageView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    sget v0, Lcom/alibaba/ailabs/genie/task/R$id;->recommend_item_thumb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mThumb:Landroid/widget/ImageView;

    .line 116
    sget v0, Lcom/alibaba/ailabs/genie/task/R$id;->recommend_item_charge:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mCharge:Landroid/widget/ImageView;

    .line 117
    sget v0, Lcom/alibaba/ailabs/genie/task/R$id;->recommend_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mTitle:Landroid/widget/TextView;

    .line 118
    sget v0, Lcom/alibaba/ailabs/genie/task/R$id;->recommend_item_rating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mRating:Landroid/widget/TextView;

    return-void
.end method
