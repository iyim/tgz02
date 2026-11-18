.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridSpaceItemDecoration.java"


# instance fields
.field private mColumnSpacing:I

.field private mRowSpacing:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 39
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;->mSpanCount:I

    .line 40
    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;->mRowSpacing:I

    .line 41
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;->mColumnSpacing:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 49
    iget p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;->mSpanCount:I

    rem-int p4, p2, p3

    .line 52
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;->mColumnSpacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, v0

    .line 54
    div-int/2addr p4, p3

    sub-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, p3, :cond_0

    .line 58
    iget p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;->mRowSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method
