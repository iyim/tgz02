.class Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "TRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/view/TRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpanSizeLookupCompat"
.end annotation


# instance fields
.field private final mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field final synthetic this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;


# direct methods
.method public constructor <init>(Lcom/taobao/uikit/feature/view/TRecyclerView;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    .line 1076
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 1077
    iput-object p2, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method


# virtual methods
.method public getSpanGroupIndex(II)I
    .locals 2

    .line 1133
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-static {v0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->access$200(Lcom/taobao/uikit/feature/view/TRecyclerView;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSpanIndex(II)I
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-static {v0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->access$200(Lcom/taobao/uikit/feature/view/TRecyclerView;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSpanSize(I)I
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-static {v0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->access$200(Lcom/taobao/uikit/feature/view/TRecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_1

    .line 1088
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void

    .line 1110
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->isSpanIndexCacheEnabled()Z

    move-result v0

    return v0

    .line 1119
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->isSpanIndexCacheEnabled()Z

    move-result v0

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$SpanSizeLookupCompat;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    return-void

    .line 1100
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    return-void
.end method
