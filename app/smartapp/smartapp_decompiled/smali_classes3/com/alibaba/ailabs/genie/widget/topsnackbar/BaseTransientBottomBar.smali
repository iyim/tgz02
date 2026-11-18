.class public abstract Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;,
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;,
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$OnLayoutChangeListener;,
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Duration;,
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;,
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final USE_OFFSET_API:Z

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final mContentViewCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field final mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field final mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$1;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$3;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 224
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    .line 225
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mContentViewCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;

    .line 226
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    .line 228
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 230
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 234
    sget p3, Lcom/alibaba/ailabs/genie/widget/topsnackbar/R$layout;->design_layout_top_snackbar:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 236
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 240
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 244
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 245
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance p2, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$2;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 258
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    const-string p2, "accessibility"

    .line 259
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mContentViewCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$ContentViewCallback;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 6

    .line 541
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    .line 542
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 543
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v3, 0x2

    .line 544
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    aput v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 545
    sget-object v3, Lcom/alibaba/ailabs/genie/widget/topsnackbar/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 546
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 547
    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$10;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$10;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 558
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$11;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$11;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 573
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/design/R$anim;->design_snackbar_out:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 577
    sget-object v3, Lcom/alibaba/ailabs/genie/widget/topsnackbar/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 578
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 579
    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$12;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$12;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 591
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method animateViewIn()V
    .locals 7

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xc

    if-lt v0, v3, :cond_1

    .line 480
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    .line 481
    sget-boolean v3, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v3, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 484
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 486
    :goto_0
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v4, 0x2

    .line 487
    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 488
    sget-object v4, Lcom/alibaba/ailabs/genie/widget/topsnackbar/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 490
    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$7;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 503
    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 518
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/alibaba/ailabs/genie/widget/topsnackbar/R$anim;->design_snackbar_in:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 522
    sget-object v3, Lcom/alibaba/ailabs/genie/widget/topsnackbar/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 524
    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$9;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$9;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 536
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x3

    .line 312
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method dispatchDismiss(I)V
    .locals 2

    .line 316
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->dismiss(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;I)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mDuration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1

    .line 596
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->animateViewOut(I)V

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->onViewHidden(I)V

    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 2

    .line 362
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrent(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .line 370
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrentOrNext(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 2

    .line 618
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->onDismissed(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V

    .line 619
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 622
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 624
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 627
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    .line 633
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 636
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 637
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 638
    nop

    nop

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method onViewShown()V
    .locals 2

    .line 605
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->onShown(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V

    .line 606
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 609
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 611
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;)Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    return-object p0

    .line 354
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDuration(I)Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 271
    iput p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mDuration:I

    return-object p0
.end method

.method shouldAnimate()Z
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public show()V
    .locals 3

    .line 305
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mDuration:I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->show(ILcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V

    return-void
.end method

.method final showView()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 390
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 392
    nop

    nop

    .line 394
    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V

    const v2, 0x3dcccccd    # 0.1f

    .line 395
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;->setStartAlphaSwipeDistance(F)V

    const v2, 0x3f19999a    # 0.6f

    .line 396
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;->setEndAlphaSwipeDistance(F)V

    const/4 v2, 0x0

    .line 397
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;->setSwipeDirection(I)V

    .line 398
    new-instance v2, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$4;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$4;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$Behavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    const/16 v1, 0x50

    .line 423
    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 451
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->onViewShown()V

    goto :goto_0

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$6;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method
