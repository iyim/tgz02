.class public Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;
.super Ljava/lang/Object;
.source "CellAnimatorController.java"


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

.field private final mListView:Landroid/widget/ListView;

.field private mShouldAnimate:Z


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    const/16 v0, 0x96

    .line 56
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mInitialDelayMillis:I

    const/16 v0, 0x64

    .line 61
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationDelayMillis:I

    const/16 v0, 0x12c

    .line 66
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationDurationMillis:I

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mShouldAnimate:Z

    .line 90
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mListView:Landroid/widget/ListView;

    const-wide/16 v0, -0x1

    .line 91
    iput-wide v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationStartMillis:J

    const/4 p1, -0x1

    .line 92
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mFirstAnimatedPosition:I

    .line 93
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mLastAnimatedPosition:I

    return-void
.end method

.method private animateView(ILandroid/view/View;[Landroid/animation/Animator;)V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 208
    :cond_0
    iget-wide v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationStartMillis:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationStartMillis:J

    :cond_1
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 214
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 215
    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->calculateAnimationDelay(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 217
    iget p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationDurationMillis:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 218
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 220
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

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

    .line 230
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    .line 234
    iget v2, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mFirstAnimatedPosition:I

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_0

    .line 237
    iget p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationDelayMillis:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v2

    .line 239
    iget v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationDelayMillis:I

    mul-int p1, p1, v0

    const/4 v0, 0x0

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    neg-long v1, v1

    iget-wide v3, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationStartMillis:J

    add-long/2addr v1, v3

    iget v3, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mInitialDelayMillis:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public animateViewIfNecessary(ILandroid/view/View;[Landroid/animation/Animator;)V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mShouldAnimate:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mLastAnimatedPosition:I

    if-le p1, v0, :cond_1

    .line 189
    iget v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mFirstAnimatedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 190
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mFirstAnimatedPosition:I

    .line 192
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->animateView(ILandroid/view/View;[Landroid/animation/Animator;)V

    .line 193
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mLastAnimatedPosition:I

    :cond_1
    return-void
.end method

.method public clearAnimators()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 176
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 265
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 266
    nop

    nop

    const-string v0, "savedinstancestate_firstanimatedposition"

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mFirstAnimatedPosition:I

    const-string v0, "savedinstancestate_lastanimatedposition"

    .line 268
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mLastAnimatedPosition:I

    const-string v0, "savedinstancestate_shouldanimate"

    .line 269
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mShouldAnimate:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    iget v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mFirstAnimatedPosition:I

    const-string v2, "savedinstancestate_firstanimatedposition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    iget v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mLastAnimatedPosition:I

    const-string v2, "savedinstancestate_lastanimatedposition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mShouldAnimate:Z

    const-string v2, "savedinstancestate_shouldanimate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->clearAnimators()V

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mFirstAnimatedPosition:I

    .line 102
    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mLastAnimatedPosition:I

    const-wide/16 v0, -0x1

    .line 103
    iput-wide v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationStartMillis:J

    return-void
.end method

.method public setAnimationDelayMillis(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationDelayMillis:I

    return-void
.end method

.method public setAnimationDurationMillis(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mAnimationDurationMillis:I

    return-void
.end method

.method public setAnimatorEnable(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mShouldAnimate:Z

    if-nez p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->clearAnimators()V

    :cond_0
    return-void
.end method

.method public setInitialDelayMillis(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mInitialDelayMillis:I

    return-void
.end method

.method public setLastAnimatedPosition(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mLastAnimatedPosition:I

    return-void
.end method

.method public setShouldAnimateFromPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->setAnimatorEnable(Z)V

    sub-int/2addr p1, v0

    .line 114
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mFirstAnimatedPosition:I

    .line 115
    iput p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mLastAnimatedPosition:I

    return-void
.end method

.method public setShouldAnimateNotVisible()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->setAnimatorEnable(Z)V

    .line 124
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mFirstAnimatedPosition:I

    .line 125
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->mLastAnimatedPosition:I

    return-void
.end method
