.class public Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;
.super Ljava/lang/Object;
.source "RecyclerCellAnimatorController.java"


# static fields
.field private static final DEFAULT_ANIMATION_DELAY_MILLIS:I = 0x64

.field private static final DEFAULT_ANIMATION_DURATION_MILLIS:I = 0x12c

.field private static final INITIAL_DELAY_MILLIS:I = 0x96

.field private static final SAVEDINSTANCESTATE_FIRSTANIMATEDPOSITION:Ljava/lang/String; = "savedinstancestate_firstanimatedposition"

.field private static final SAVEDINSTANCESTATE_LASTANIMATEDPOSITION:Ljava/lang/String; = "savedinstancestate_lastanimatedposition"

.field private static final SAVEDINSTANCESTATE_SHOULDANIMATE:Ljava/lang/String; = "savedinstancestate_shouldanimate"


# instance fields
.field private mAnimationDelayMillis:I

.field private mAnimationDurationMillis:I

.field private mAnimationStartMillis:J

.field private final mAnimators:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstAnimatedPosition:I

.field private mInitialDelayMillis:I

.field private mLastAnimatedPosition:I

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mShouldAnimate:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    const/16 v0, 0x96

    .line 60
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mInitialDelayMillis:I

    const/16 v0, 0x64

    .line 65
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationDelayMillis:I

    const/16 v0, 0x12c

    .line 70
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationDurationMillis:I

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mShouldAnimate:Z

    .line 95
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 96
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController$1;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController$1;-><init>(Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    const-wide/16 v0, -0x1

    .line 108
    iput-wide v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationStartMillis:J

    const/4 p1, -0x1

    .line 109
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mFirstAnimatedPosition:I

    .line 110
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mLastAnimatedPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;)Ljava/util/WeakHashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method private animateView(ILandroid/view/View;[Landroid/animation/Animator;)V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 240
    :cond_0
    iget-wide v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationStartMillis:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationStartMillis:J

    :cond_1
    const/4 v0, 0x0

    .line 245
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 247
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 248
    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->calculateAnimationDelay(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 250
    iget p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationDurationMillis:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 251
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 252
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private calculateAnimationDelay(I)I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->getLastVisiblePosition()I

    move-result v0

    .line 263
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    .line 266
    iget v2, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mFirstAnimatedPosition:I

    sub-int/2addr v1, v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-ge v0, v1, :cond_2

    .line 271
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 272
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 274
    nop

    nop

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    .line 276
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 278
    nop

    nop

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 280
    :goto_0
    iget v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationDelayMillis:I

    rem-int/2addr p1, v0

    add-int/2addr p1, v3

    mul-int v1, v1, p1

    goto :goto_1

    :cond_2
    sub-int/2addr p1, v2

    .line 284
    iget v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationDelayMillis:I

    mul-int p1, p1, v0

    const/4 v0, 0x0

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    neg-long v1, v1

    iget-wide v3, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationStartMillis:J

    add-long/2addr v1, v3

    iget v3, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mInitialDelayMillis:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    return v1
.end method

.method private getFirstVisiblePosition()I
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 349
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 351
    nop

    nop

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0

    .line 353
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 355
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    const v1, 0x7fffffff

    .line 357
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 359
    aget v4, v0, v2

    if-ge v4, v1, :cond_1

    move v1, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private getLastVisiblePosition()I
    .locals 5

    .line 324
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 325
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 327
    nop

    nop

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0

    .line 329
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 331
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 333
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 335
    aget v4, v0, v2

    if-le v4, v1, :cond_1

    move v1, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public animateViewIfNecessary(ILandroid/view/View;[Landroid/animation/Animator;)V
    .locals 2

    .line 216
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mShouldAnimate:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mLastAnimatedPosition:I

    if-le p1, v0, :cond_1

    .line 218
    iget v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mFirstAnimatedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 220
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mFirstAnimatedPosition:I

    .line 222
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->animateView(ILandroid/view/View;[Landroid/animation/Animator;)V

    .line 223
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mLastAnimatedPosition:I

    :cond_1
    return-void
.end method

.method public clearAnimators()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 203
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 313
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 315
    nop

    nop

    const-string v0, "savedinstancestate_firstanimatedposition"

    .line 316
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mFirstAnimatedPosition:I

    const-string v0, "savedinstancestate_lastanimatedposition"

    .line 317
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mLastAnimatedPosition:I

    const-string v0, "savedinstancestate_shouldanimate"

    .line 318
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mShouldAnimate:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 299
    iget v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mFirstAnimatedPosition:I

    const-string v2, "savedinstancestate_firstanimatedposition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    iget v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mLastAnimatedPosition:I

    const-string v2, "savedinstancestate_lastanimatedposition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mShouldAnimate:Z

    const-string v2, "savedinstancestate_shouldanimate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->clearAnimators()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mFirstAnimatedPosition:I

    .line 120
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mLastAnimatedPosition:I

    const-wide/16 v0, -0x1

    .line 121
    iput-wide v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationStartMillis:J

    return-void
.end method

.method public setAnimationDelayMillis(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationDelayMillis:I

    return-void
.end method

.method public setAnimationDurationMillis(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mAnimationDurationMillis:I

    return-void
.end method

.method public setAnimatorEnable(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mShouldAnimate:Z

    if-nez p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->clearAnimators()V

    :cond_0
    return-void
.end method

.method public setInitialDelayMillis(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mInitialDelayMillis:I

    return-void
.end method

.method public setLastAnimatedPosition(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mLastAnimatedPosition:I

    return-void
.end method

.method public setShouldAnimateFromPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->setAnimatorEnable(Z)V

    sub-int/2addr p1, v0

    .line 132
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mFirstAnimatedPosition:I

    .line 133
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mLastAnimatedPosition:I

    return-void
.end method

.method public setShouldAnimateNotVisible()V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->setAnimatorEnable(Z)V

    .line 144
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mFirstAnimatedPosition:I

    .line 145
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->mLastAnimatedPosition:I

    return-void
.end method
