.class public Lcom/taobao/uikit/feature/features/StickyScrollFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "StickyScrollFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/CanvasCallback;
.implements Lcom/taobao/uikit/feature/callback/TouchEventCallback;
.implements Lcom/taobao/uikit/feature/callback/LayoutCallback;
.implements Lcom/taobao/uikit/feature/callback/ScrollCallback;
.implements Lcom/taobao/uikit/feature/callback/SetClipToPaddingCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ScrollView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/CanvasCallback;",
        "Lcom/taobao/uikit/feature/callback/TouchEventCallback;",
        "Lcom/taobao/uikit/feature/callback/LayoutCallback;",
        "Lcom/taobao/uikit/feature/callback/ScrollCallback;",
        "Lcom/taobao/uikit/feature/callback/SetClipToPaddingCallBack;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SHADOW_HEIGHT:I = 0xa

.field public static final FLAG_HASTRANSPARANCY:Ljava/lang/String; = "-hastransparancy"

.field public static final FLAG_NONCONSTANT:Ljava/lang/String; = "-nonconstant"

.field public static final STICKY_TAG:Ljava/lang/String; = "sticky"


# instance fields
.field private mClipToPadding:Z

.field private mClipToPaddingHasBeenSet:Z

.field private mCurrentlyStickingView:Landroid/view/View;

.field private mHasNotDoneActionDown:Z

.field private mInvalidateCount:I

.field private final mInvalidateRunnable:Ljava/lang/Runnable;

.field private mRedirectTouchesToStickyView:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mStickyViewLeftOffset:I

.field private mStickyViewTopOffset:F

.field private mStickyViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mHasNotDoneActionDown:Z

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mInvalidateCount:I

    .line 73
    new-instance v0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;-><init>(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mInvalidateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/uikit/feature/features/StickyScrollFeature;Landroid/view/View;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/uikit/feature/features/StickyScrollFeature;Landroid/view/View;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getBottomForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/uikit/feature/features/StickyScrollFeature;Landroid/view/View;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getRightForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewTopOffset:F

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mInvalidateCount:I

    return p0
.end method

.method static synthetic access$508(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)I
    .locals 2

    .line 28
    iget v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mInvalidateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mInvalidateCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/taobao/uikit/feature/features/StickyScrollFeature;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->findStickyViews(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private doTheStickyThing()V
    .locals 9

    .line 419
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 422
    iget-object v5, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 423
    invoke-direct {p0, v5}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    iget-boolean v7, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPadding:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v7

    :goto_1
    add-int/2addr v6, v7

    if-gtz v6, :cond_3

    if-eqz v3, :cond_2

    .line 426
    invoke-direct {p0, v3}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPadding:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v8

    :goto_2
    add-int/2addr v7, v8

    if-le v6, v7, :cond_6

    :cond_2
    move-object v3, v5

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_5

    .line 433
    invoke-direct {p0, v4}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPadding:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v8

    :goto_3
    add-int/2addr v7, v8

    if-ge v6, v7, :cond_6

    :cond_5
    move-object v4, v5

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_b

    if-nez v4, :cond_8

    const/4 v0, 0x0

    goto :goto_6

    .line 441
    :cond_8
    invoke-direct {p0, v4}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPadding:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_5

    .line 442
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 441
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    :goto_6
    iput v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewTopOffset:F

    .line 443
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    if-eq v3, v0, :cond_c

    if-eqz v0, :cond_a

    .line 447
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->stopStickingCurrentlyStickingView()V

    .line 450
    :cond_a
    invoke-direct {p0, v3}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewLeftOffset:I

    .line 451
    invoke-direct {p0, v3}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->startStickingView(Landroid/view/View;)V

    goto :goto_7

    .line 454
    :cond_b
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 456
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->stopStickingCurrentlyStickingView()V

    :cond_c
    :goto_7
    return-void
.end method

.method private findStickyViews(Landroid/view/View;)V
    .locals 5

    .line 313
    instance-of v0, p1, Landroid/view/ViewGroup;

    const-string v1, "sticky"

    if-eqz v0, :cond_2

    .line 315
    check-cast p1, Landroid/view/ViewGroup;

    .line 316
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 319
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 326
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->findStickyViews(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private getBottomForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 4

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 406
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getLeftForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 4

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 373
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getRightForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 4

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 395
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getTopForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 4

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 384
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private hideView(Landroid/view/View;)V
    .locals 3

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 344
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private notifyHierarchyChanged()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->stopStickingCurrentlyStickingView()V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 485
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->findStickyViews(Landroid/view/View;)V

    .line 486
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->doTheStickyThing()V

    .line 487
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    return-void
.end method

.method private showView(Landroid/view/View;)V
    .locals 3

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 359
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 363
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 366
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private startStickingView(Landroid/view/View;)V
    .locals 1

    .line 462
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    .line 463
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "-hastransparancy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->hideView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private stopStickingCurrentlyStickingView()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-hastransparancy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->showView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public afterComputeScroll()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewLeftOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewTopOffset:F

    add-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPadding:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPadding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewTopOffset:F

    neg-float v0, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewLeftOffset:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mShadowHeight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 153
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 157
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 158
    iget-object v4, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mShadowHeight:I

    add-int/2addr v4, v5

    .line 159
    iget-object v5, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    :cond_2
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPadding:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewTopOffset:F

    neg-float v0, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 164
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-hastransparancy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->showView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 168
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->hideView(Landroid/view/View;)V

    goto :goto_3

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 174
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public afterDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnLayout(ZIIII)V
    .locals 0

    .line 294
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPaddingHasBeenSet:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPadding:Z

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->notifyHierarchyChanged()V

    return-void
.end method

.method public afterOnScrollChanged(IIII)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->doTheStickyThing()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterSetClipToPadding(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPadding:Z

    const/4 p1, 0x1

    .line 216
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mClipToPaddingHasBeenSet:Z

    return-void
.end method

.method public beforeComputeScroll()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 254
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mRedirectTouchesToStickyView:Z

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mRedirectTouchesToStickyView:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mRedirectTouchesToStickyView:Z

    .line 260
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mRedirectTouchesToStickyView:Z

    if-eqz v0, :cond_4

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewTopOffset:F

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getRightForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mRedirectTouchesToStickyView:Z

    goto :goto_2

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 269
    iput-boolean v2, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mRedirectTouchesToStickyView:Z

    .line 272
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mRedirectTouchesToStickyView:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 274
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewTopOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v1

    invoke-virtual {p1, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 275
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "-nonconstant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 277
    iput v2, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mInvalidateCount:I

    .line 278
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mInvalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnLayout(ZIIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnScrollChanged(IIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 221
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mRedirectTouchesToStickyView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViewTopOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mCurrentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 228
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mHasNotDoneActionDown:Z

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mHasNotDoneActionDown:Z

    if-eqz v0, :cond_2

    .line 233
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 234
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 235
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mHasNotDoneActionDown:Z

    return-void

    .line 239
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 241
    :cond_3
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mHasNotDoneActionDown:Z

    :cond_4
    return-void
.end method

.method public beforeSetClipToPadding(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 99
    sget-object v0, Lcom/taobao/uikit/R$styleable;->StickyScrollFeature:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41200000    # 10.0f

    mul-float p1, p1, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p1, p3

    float-to-int p1, p1

    .line 104
    sget p3, Lcom/taobao/uikit/R$styleable;->StickyScrollFeature_uik_shadowHeight:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mShadowHeight:I

    .line 105
    sget p1, Lcom/taobao/uikit/R$styleable;->StickyScrollFeature_uik_shadowDrawable:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 28
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->setHost(Landroid/widget/ScrollView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ScrollView;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->setup()V

    .line 115
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    new-instance v0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$2;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature$2;-><init>(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public setShadowHeight(I)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mShadowHeight:I

    return-void
.end method

.method public setup()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->mStickyViews:Ljava/util/ArrayList;

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
