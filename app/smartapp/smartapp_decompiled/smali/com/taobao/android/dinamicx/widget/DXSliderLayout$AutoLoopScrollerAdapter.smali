.class public Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;
.super Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;
.source "DXSliderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXSliderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoLoopScrollerAdapter"
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;)V
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;-><init>(Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getItem(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->getItem(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAutoId()I

    move-result p1

    return p1
.end method
