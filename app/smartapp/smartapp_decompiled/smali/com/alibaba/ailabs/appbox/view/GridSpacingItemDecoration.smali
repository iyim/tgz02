.class public Lcom/alibaba/ailabs/appbox/view/GridSpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private includeEdge:Z

.field private spacing:I

.field private spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/GridSpacingItemDecoration;->spanCount:I

    .line 20
    iput p2, p0, Lcom/alibaba/ailabs/appbox/view/GridSpacingItemDecoration;->spacing:I

    .line 21
    iput-boolean p3, p0, Lcom/alibaba/ailabs/appbox/view/GridSpacingItemDecoration;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 28
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 29
    iget p3, p0, Lcom/alibaba/ailabs/appbox/view/GridSpacingItemDecoration;->spanCount:I

    rem-int p4, p2, p3

    .line 31
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/GridSpacingItemDecoration;->includeEdge:Z

    if-eqz v0, :cond_1

    .line 32
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/GridSpacingItemDecoration;->spacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    sub-int v1, v0, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, v0

    .line 33
    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    if-ge p2, p3, :cond_0

    .line 36
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 38
    :cond_0
    iget p2, p0, Lcom/alibaba/ailabs/appbox/view/GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 40
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/GridSpacingItemDecoration;->spacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, v0

    .line 41
    div-int/2addr p4, p3

    sub-int p4, v0, p4

    iput p4, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, p3, :cond_2

    .line 43
    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method
