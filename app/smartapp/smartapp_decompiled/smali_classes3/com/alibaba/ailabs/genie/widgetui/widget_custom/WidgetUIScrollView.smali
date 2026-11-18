.class public Lcom/alibaba/ailabs/genie/widgetui/widget_custom/WidgetUIScrollView;
.super Landroid/widget/ScrollView;
.source "WidgetUIScrollView.java"


# instance fields
.field private mScrollListener:Lcom/alibaba/ailabs/genie/widgetui/widget_interface/WidgetUIRecyclerViewScollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPercentVal()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_custom/WidgetUIScrollView;->mScrollListener:Lcom/alibaba/ailabs/genie/widgetui/widget_interface/WidgetUIRecyclerViewScollListener;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_custom/WidgetUIScrollView;->computeVerticalScrollOffset()I

    move-result v0

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_custom/WidgetUIScrollView;->computeVerticalScrollRange()I

    move-result v1

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_custom/WidgetUIScrollView;->computeVerticalScrollExtent()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_custom/WidgetUIScrollView;->mScrollListener:Lcom/alibaba/ailabs/genie/widgetui/widget_interface/WidgetUIRecyclerViewScollListener;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_interface/WidgetUIRecyclerViewScollListener;->onScrollPercentChanged(F)V

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_custom/WidgetUIScrollView;->getPercentVal()V

    return-void
.end method

.method public setOnRecycleViewScrollListener(Lcom/alibaba/ailabs/genie/widgetui/widget_interface/WidgetUIRecyclerViewScollListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_custom/WidgetUIScrollView;->mScrollListener:Lcom/alibaba/ailabs/genie/widgetui/widget_interface/WidgetUIRecyclerViewScollListener;

    return-void
.end method
