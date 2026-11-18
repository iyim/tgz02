.class public Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$AppSearchItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "AppSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppSearchItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$AppSearchItemDecoration;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .line 268
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 269
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 271
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    const/16 v4, 0x2720

    if-ne v0, v4, :cond_1

    .line 275
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->getSearchItemCount()I

    move-result p2

    .line 277
    div-int/lit8 p3, p2, 0x2

    rem-int/lit8 v0, p2, 0x2

    add-int/2addr p3, v0

    add-int/2addr p3, v3

    sub-int/2addr v1, p3

    sub-int/2addr p4, p2

    sub-int/2addr p4, v3

    .line 281
    div-int/lit8 p2, p4, 0x6

    rem-int/lit8 p4, p4, 0x6

    add-int/2addr p2, p4

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    mul-int/lit8 p2, p2, 0x6

    sub-int/2addr p2, v3

    if-le v1, p2, :cond_2

    .line 284
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 287
    :cond_1
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p4, v3

    if-ne p2, p4, :cond_2

    .line 288
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_1
    return-void
.end method
