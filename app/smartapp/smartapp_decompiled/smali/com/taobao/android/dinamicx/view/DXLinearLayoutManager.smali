.class public Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "DXLinearLayoutManager.java"


# instance fields
.field private isScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;->isScrollEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;->isScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;->isScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;->isScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;->isScrollEnabled:Z

    return-void
.end method
