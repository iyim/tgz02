.class public Lcom/alibaba/ailabs/genie/task/video/view/SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private final space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 16
    iput p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/SpacesItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 22
    iget p2, p0, Lcom/alibaba/ailabs/genie/task/video/view/SpacesItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
