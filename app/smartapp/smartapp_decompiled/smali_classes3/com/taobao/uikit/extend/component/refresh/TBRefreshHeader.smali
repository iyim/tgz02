.class public abstract Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;
.super Landroid/widget/RelativeLayout;
.source "TBRefreshHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;,
        Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;
    }
.end annotation


# instance fields
.field protected mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

.field protected mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    sget-object p1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    return-void
.end method


# virtual methods
.method public abstract changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V
.end method

.method public getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    return-object v0
.end method

.method public abstract getRefreshView()Landroid/view/View;
.end method

.method public abstract getSecondFloorView()Landroid/view/View;
.end method

.method public abstract setProgress(F)V
.end method

.method public setPullRefreshListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    return-void
.end method

.method public abstract setRefreshAnimation([Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setRefreshTipColor(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setRefreshTips([Ljava/lang/String;)V
.end method

.method public abstract setSecondFloorView(Landroid/view/View;)V
.end method

.method public switchStyle(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
