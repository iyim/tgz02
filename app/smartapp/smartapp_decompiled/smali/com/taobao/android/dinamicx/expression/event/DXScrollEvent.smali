.class public Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;
.super Lcom/taobao/android/dinamicx/expression/event/DXEvent;
.source "DXScrollEvent.java"


# instance fields
.field private containerSize:Lcom/taobao/android/dinamicx/ItemSize;

.field private contentSize:Lcom/taobao/android/dinamicx/ItemSize;

.field private offsetX:I

.field private offsetY:I

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getContentSize()Lcom/taobao/android/dinamicx/ItemSize;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    return-object v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->offsetY:I

    return v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getScrollerSize()Lcom/taobao/android/dinamicx/ItemSize;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->containerSize:Lcom/taobao/android/dinamicx/ItemSize;

    return-object v0
.end method

.method public setContentSize(Lcom/taobao/android/dinamicx/ItemSize;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    return-void
.end method

.method public setOffsetX(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->offsetX:I

    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->offsetY:I

    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public setScrollerSize(Lcom/taobao/android/dinamicx/ItemSize;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->containerSize:Lcom/taobao/android/dinamicx/ItemSize;

    return-void
.end method
