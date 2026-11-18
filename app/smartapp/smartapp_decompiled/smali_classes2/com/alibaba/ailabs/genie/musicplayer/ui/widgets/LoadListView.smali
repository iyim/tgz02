.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;
.super Landroid/widget/ListView;
.source "LoadListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final STATE_PULL_REFRESH:I = 0x0

.field private static final STATE_REFRESHING:I = 0x2

.field private static final STATE_RELEASE_REFRESH:I = 0x1


# instance fields
.field private animDown:Landroid/view/animation/RotateAnimation;

.field private animUp:Landroid/view/animation/RotateAnimation;

.field private isLoadingMore:Z

.field private mCurrrentState:I

.field private mFooterAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private mFooterProgress:Landroid/widget/ImageView;

.field private mFooterView:Landroid/view/View;

.field private mFooterViewHeight:I

.field private mHeaderAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private mHeaderProgress:Landroid/widget/ImageView;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field mListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;

.field private mPullEnable:Z

.field private startY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->startY:I

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mPullEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->startY:I

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mPullEnable:Z

    .line 79
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->initHeaderView()V

    .line 80
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->initFooterView()V

    .line 82
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->initArrowAnim()V

    .line 83
    invoke-virtual {p0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private initArrowAnim()V
    .locals 11

    .line 209
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->animUp:Landroid/view/animation/RotateAnimation;

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->animUp:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->animUp:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 215
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v5, -0x3ccc0000    # -180.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->animDown:Landroid/view/animation/RotateAnimation;

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->animDown:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->animDown:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    return-void
.end method

.method private initFooterView()V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->footer_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->addFooterView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->img_show:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterProgress:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterViewHeight:I

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterView:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterViewHeight:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private initHeaderView()V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->footer_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->addHeaderView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->img_show:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderProgress:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderViewHeight:I

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderViewHeight:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private refreshState()V
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshState() called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "circus"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;

    if-eqz v0, :cond_3

    .line 241
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;->onRefresh()V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderProgress:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 193
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected layoutChildren()V
    .locals 0

    .line 184
    :try_start_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 174
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 155
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadComplete()V
    .locals 3

    .line 325
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->isLoadingMore:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterProgress:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterView:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterViewHeight:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 329
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->isLoadingMore:Z

    :cond_0
    return-void
.end method

.method public onRefreshComplete(Z)V
    .locals 2

    .line 337
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->isLoadingMore:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 338
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderProgress:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderViewHeight:I

    neg-int v1, v1

    invoke-virtual {v0, p1, v1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scrollState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",getLastVisiblePosition():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",getCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isLoadingMore:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->isLoadingMore:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoadListView"

    .line 120
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getCount()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->isLoadingMore:Z

    if-nez p1, :cond_2

    .line 125
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "\u5230\u5e95\u4e86....."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getCount()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setSelection(I)V

    .line 129
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->isLoadingMore:Z

    .line 131
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mFooterProgress:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;

    if-eqz p1, :cond_2

    .line 134
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;->onLoadMore()V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;

    if-nez v0, :cond_0

    .line 255
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 261
    :catch_0
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    .line 266
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->startY:I

    if-ne v0, v2, :cond_2

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->startY:I

    .line 270
    :cond_2
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 274
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mPullEnable:Z

    if-nez v0, :cond_4

    goto :goto_0

    .line 277
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 278
    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->startY:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_b

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_b

    .line 281
    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderViewHeight:I

    sub-int/2addr v0, v2

    const/16 v2, 0xf

    if-ge v0, v2, :cond_5

    .line 283
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    if-lez v0, :cond_6

    .line 286
    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    if-eq v2, v4, :cond_6

    .line 287
    iput v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    .line 288
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->refreshState()V

    goto :goto_0

    :cond_6
    if-gez v0, :cond_b

    .line 289
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    if-eqz v0, :cond_b

    .line 290
    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    .line 291
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->refreshState()V

    goto :goto_0

    .line 298
    :cond_7
    iput v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->startY:I

    .line 300
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mPullEnable:Z

    if-nez v0, :cond_8

    goto :goto_0

    .line 304
    :cond_8
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    if-ne v0, v4, :cond_9

    .line 305
    iput v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mCurrrentState:I

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 307
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->refreshState()V

    goto :goto_0

    :cond_9
    if-nez v0, :cond_b

    .line 309
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderView:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mHeaderViewHeight:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 263
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->startY:I

    .line 317
    :cond_b
    :goto_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    return v1
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    .line 146
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchModeChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 165
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnRefreshListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;

    return-void
.end method

.method public setPullEnable(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->mPullEnable:Z

    return-void
.end method
