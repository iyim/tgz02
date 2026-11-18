.class public Lcom/alibaba/ailabs/genie/message/refresh/utils/DesignUtil;
.super Ljava/lang/Object;
.source "DesignUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkCoordinatorLayout(Landroid/view/View;Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;)V
    .locals 2

    .line 21
    :try_start_0
    instance-of v0, p0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 22
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->getRefreshLayout()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;->setEnableNestedScroll(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 23
    nop

    nop

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 26
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 27
    nop

    nop

    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/utils/DesignUtil$1;

    invoke-direct {v1, p2}, Lcom/alibaba/ailabs/genie/message/refresh/utils/DesignUtil$1;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/listener/CoordinatorLayoutListener;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method
