.class public Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private leftSpace:I

.field private mSpanCount:I

.field private topSpace:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;->mSpanCount:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 43
    iget p4, p0, Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;->topSpace:I

    if-lez p4, :cond_0

    .line 45
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;->mSpanCount:I

    if-lt p4, v0, :cond_0

    .line 46
    iget p4, p0, Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;->topSpace:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 50
    :cond_0
    iget p4, p0, Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;->leftSpace:I

    if-lez p4, :cond_1

    .line 52
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 53
    iget p2, p0, Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;->leftSpace:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    return-void
.end method

.method public setLeftSpace(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;->leftSpace:I

    return-void
.end method

.method public setSpanCount(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;->mSpanCount:I

    return-void
.end method

.method public setTopSpace(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/SpacesItemDecoration;->topSpace:I

    return-void
.end method
