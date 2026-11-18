.class public abstract Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;
.super Landroid/widget/RelativeLayout;
.source "TBLoadMoreFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;
    }
.end annotation


# instance fields
.field protected mPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract changeToState(Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;)V
.end method

.method public abstract getCurrentState()Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;
.end method

.method public abstract getLoadMoreTipView()Landroid/widget/TextView;
.end method

.method public abstract setLoadMoreTipColor(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setLoadMoreTips([Ljava/lang/String;)V
.end method

.method public abstract setProgress(F)V
.end method

.method public setPushLoadMoreListener(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->mPushLoadMoreListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    return-void
.end method
