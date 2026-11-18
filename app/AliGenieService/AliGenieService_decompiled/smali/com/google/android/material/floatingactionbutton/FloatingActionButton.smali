.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lc/d/a/a/a0/n;
.source ""

# interfaces
.implements Lb/h/k/p;
.implements Lb/h/l/g;
.implements Lc/d/a/a/y/a;
.implements Lc/d/a/a/f0/n;
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;
    }
.end annotation


# static fields
.field public static final s:I


# instance fields
.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/PorterDuff$Mode;

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/graphics/PorterDuff$Mode;

.field public g:Landroid/content/res/ColorStateList;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public final n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/Rect;

.field public final p:Lb/b/q/l;

.field public final q:Lc/d/a/a/y/c;

.field public r:Lc/d/a/a/z/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lc/d/a/a/j;->Widget_Design_FloatingActionButton:I

    sput v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lc/d/a/a/b;->floatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    sget v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->s:I

    invoke-static {p1, p2, p3, v0}, Lc/d/a/a/j0/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lc/d/a/a/a0/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lc/d/a/a/k;->FloatingActionButton:[I

    sget v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->s:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lc/d/a/a/a0/h;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lc/d/a/a/k;->FloatingActionButton_backgroundTint:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    sget v1, Lc/d/a/a/k;->FloatingActionButton_backgroundTintMode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    sget v1, Lc/d/a/a/k;->FloatingActionButton_rippleColor:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    sget v1, Lc/d/a/a/k;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    sget v1, Lc/d/a/a/k;->FloatingActionButton_fabCustomSize:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    sget v1, Lc/d/a/a/k;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    sget v1, Lc/d/a/a/k;->FloatingActionButton_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    sget v3, Lc/d/a/a/k;->FloatingActionButton_hoveredFocusedTranslationZ:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    sget v4, Lc/d/a/a/k;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    sget v4, Lc/d/a/a/k;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Z

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lc/d/a/a/d;->mtrl_fab_min_touch_target:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lc/d/a/a/k;->FloatingActionButton_maxImageSize:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    sget v5, Lc/d/a/a/k;->FloatingActionButton_showMotionSpec:I

    invoke-static {p1, v0, v5}, Lc/d/a/a/l/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lc/d/a/a/l/g;

    move-result-object v5

    sget v7, Lc/d/a/a/k;->FloatingActionButton_hideMotionSpec:I

    invoke-static {p1, v0, v7}, Lc/d/a/a/l/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lc/d/a/a/l/g;

    move-result-object v7

    sget v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->s:I

    sget-object v9, Lc/d/a/a/f0/k;->m:Lc/d/a/a/f0/c;

    invoke-static {p1, p2, p3, v8, v9}, Lc/d/a/a/f0/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILc/d/a/a/f0/c;)Lc/d/a/a/f0/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/a/f0/k$b;->a()Lc/d/a/a/f0/k;

    move-result-object p1

    sget v8, Lc/d/a/a/k;->FloatingActionButton_ensureMinTouchTargetSize:I

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    sget v8, Lc/d/a/a/k;->FloatingActionButton_android_enabled:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lb/b/q/l;

    invoke-direct {v0, p0}, Lb/b/q/l;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lb/b/q/l;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lb/b/q/l;

    invoke-virtual {v0, p2, p3}, Lb/b/q/l;->a(Landroid/util/AttributeSet;I)V

    new-instance p2, Lc/d/a/a/y/c;

    invoke-direct {p2, p0}, Lc/d/a/a/y/c;-><init>(Lc/d/a/a/y/b;)V

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lc/d/a/a/y/c;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lc/d/a/a/z/e;->a(Lc/d/a/a/f0/k;)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    iget v8, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    invoke-virtual {p1, p2, p3, v0, v8}, Lc/d/a/a/z/e;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    .line 1
    iput v4, p1, Lc/d/a/a/z/e;->k:I

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    .line 3
    iget p2, p1, Lc/d/a/a/z/e;->h:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_0

    iput v1, p1, Lc/d/a/a/z/e;->h:F

    iget p2, p1, Lc/d/a/a/z/e;->h:F

    iget p3, p1, Lc/d/a/a/z/e;->i:F

    iget v0, p1, Lc/d/a/a/z/e;->j:F

    invoke-virtual {p1, p2, p3, v0}, Lc/d/a/a/z/e;->a(FFF)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    .line 5
    iget p2, p1, Lc/d/a/a/z/e;->i:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_1

    iput v3, p1, Lc/d/a/a/z/e;->i:F

    iget p2, p1, Lc/d/a/a/z/e;->h:F

    iget p3, p1, Lc/d/a/a/z/e;->i:F

    iget v0, p1, Lc/d/a/a/z/e;->j:F

    invoke-virtual {p1, p2, p3, v0}, Lc/d/a/a/z/e;->a(FFF)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    .line 7
    iget p2, p1, Lc/d/a/a/z/e;->j:F

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_2

    iput v2, p1, Lc/d/a/a/z/e;->j:F

    iget p2, p1, Lc/d/a/a/z/e;->h:F

    iget p3, p1, Lc/d/a/a/z/e;->i:F

    iget v0, p1, Lc/d/a/a/z/e;->j:F

    invoke-virtual {p1, p2, p3, v0}, Lc/d/a/a/z/e;->a(FFF)V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    .line 9
    iget p3, p1, Lc/d/a/a/z/e;->t:I

    if-eq p3, p2, :cond_3

    iput p2, p1, Lc/d/a/a/z/e;->t:I

    .line 10
    iget p2, p1, Lc/d/a/a/z/e;->s:F

    invoke-virtual {p1, p2}, Lc/d/a/a/z/e;->a(F)V

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    .line 12
    iput-object v5, p1, Lc/d/a/a/z/e;->p:Lc/d/a/a/l/g;

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    .line 14
    iput-object v7, p1, Lc/d/a/a/z/e;->q:Lc/d/a/a/l/g;

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    .line 16
    iput-boolean v6, p1, Lc/d/a/a/z/e;->f:Z

    .line 17
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static a(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    if-ne v0, p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static synthetic a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getImpl()Lc/d/a/a/z/e;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r:Lc/d/a/a/z/e;

    if-nez v0, :cond_0

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lc/d/a/a/z/g;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lc/d/a/a/z/g;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lc/d/a/a/e0/b;)V

    .line 2
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r:Lc/d/a/a/z/e;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r:Lc/d/a/a/z/e;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    sget p1, Lc/d/a/a/d;->design_fab_size_normal:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_1
    sget p1, Lc/d/a/a/d;->design_fab_size_mini:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(I)I

    move-result p1

    :goto_1
    return p1
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lc/d/a/a/z/e;->w:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lc/d/a/a/z/e;->w:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, v0, Lc/d/a/a/z/e;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lc/d/a/a/l/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/a/l/j<",
            "+",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 2
    iget-object v1, p1, Lc/d/a/a/z/e;->x:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lc/d/a/a/z/e;->x:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p1, Lc/d/a/a/z/e;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    return-void
.end method

.method public a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lc/d/a/a/z/b;

    invoke-direct {v1, p0, p1}, Lc/d/a/a/z/b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V

    move-object p1, v1

    .line 4
    :goto_0
    invoke-virtual {v0}, Lc/d/a/a/z/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :cond_1
    iget-object v1, v0, Lc/d/a/a/z/e;->o:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    invoke-virtual {v0}, Lc/d/a/a/z/e;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lc/d/a/a/z/e;->q:Lc/d/a/a/l/g;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object v1, v0, Lc/d/a/a/z/e;->n:Lc/d/a/a/l/g;

    if-nez v1, :cond_4

    iget-object v1, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lc/d/a/a/a;->design_fab_hide_motion_spec:I

    invoke-static {v1, v2}, Lc/d/a/a/l/g;->a(Landroid/content/Context;I)Lc/d/a/a/l/g;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/a/z/e;->n:Lc/d/a/a/l/g;

    :cond_4
    iget-object v1, v0, Lc/d/a/a/z/e;->n:Lc/d/a/a/l/g;

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v2, v2}, Lc/d/a/a/z/e;->a(Lc/d/a/a/l/g;FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v2, Lc/d/a/a/z/c;

    invoke-direct {v2, v0, p2, p1}, Lc/d/a/a/z/c;-><init>(Lc/d/a/a/z/e;ZLc/d/a/a/z/e$f;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, v0, Lc/d/a/a/z/e;->w:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    :cond_6
    iget-object v0, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p2, :cond_7

    const/16 v1, 0x8

    goto :goto_3

    :cond_7
    const/4 v1, 0x4

    :goto_3
    invoke-virtual {v0, v1, p2}, Lc/d/a/a/a0/n;->a(IZ)V

    if-eqz p1, :cond_8

    .line 7
    iget-object p2, p1, Lc/d/a/a/z/b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    iget-object p1, p1, Lc/d/a/a/z/b;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lc/d/a/a/y/c;

    .line 8
    iget-boolean v0, v0, Lc/d/a/a/y/c;->b:Z

    return v0
.end method

.method public a(Landroid/graphics/Rect;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lb/h/k/q;->A(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lc/d/a/a/z/e;->v:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lc/d/a/a/z/e;->v:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, v0, Lc/d/a/a/z/e;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    return-void
.end method

.method public b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lc/d/a/a/z/b;

    invoke-direct {v1, p0, p1}, Lc/d/a/a/z/b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V

    move-object p1, v1

    .line 3
    :goto_0
    invoke-virtual {v0}, Lc/d/a/a/z/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, v0, Lc/d/a/a/z/e;->o:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    invoke-virtual {v0}, Lc/d/a/a/z/e;->j()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7

    iget-object v1, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    iget-object v1, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    invoke-virtual {v0, v3}, Lc/d/a/a/z/e;->a(F)V

    :cond_3
    iget-object v1, v0, Lc/d/a/a/z/e;->p:Lc/d/a/a/l/g;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 4
    :cond_4
    iget-object v1, v0, Lc/d/a/a/z/e;->m:Lc/d/a/a/l/g;

    if-nez v1, :cond_5

    iget-object v1, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lc/d/a/a/a;->design_fab_show_motion_spec:I

    invoke-static {v1, v3}, Lc/d/a/a/l/g;->a(Landroid/content/Context;I)Lc/d/a/a/l/g;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/a/z/e;->m:Lc/d/a/a/l/g;

    :cond_5
    iget-object v1, v0, Lc/d/a/a/z/e;->m:Lc/d/a/a/l/g;

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_1
    invoke-virtual {v0, v1, v2, v2, v2}, Lc/d/a/a/z/e;->a(Lc/d/a/a/l/g;FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v2, Lc/d/a/a/z/d;

    invoke-direct {v2, v0, p2, p1}, Lc/d/a/a/z/d;-><init>(Lc/d/a/a/z/e;ZLc/d/a/a/z/e$f;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, v0, Lc/d/a/a/z/e;->v:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p2}, Lc/d/a/a/a0/n;->a(IZ)V

    iget-object p2, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p2, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    iget-object p2, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    invoke-virtual {v0, v2}, Lc/d/a/a/z/e;->a(F)V

    if-eqz p1, :cond_8

    .line 6
    iget-object p2, p1, Lc/d/a/a/z/b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    iget-object p1, p1, Lc/d/a/a/z/b;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public b()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/a/z/e;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/a/z/e;->c()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-nez v2, :cond_2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v2}, Lb/b/q/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/a/z/e;->a([I)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/a/z/e;->a()F

    move-result v0

    return v0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget v0, v0, Lc/d/a/a/z/e;->i:F

    return v0
.end method

.method public getCompatPressedTranslationZ()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget v0, v0, Lc/d/a/a/z/e;->j:F

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lc/d/a/a/z/e;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCustomSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    return v0
.end method

.method public getExpandedComponentIdHint()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lc/d/a/a/y/c;

    .line 1
    iget v0, v0, Lc/d/a/a/y/c;->c:I

    return v0
.end method

.method public getHideMotionSpec()Lc/d/a/a/l/g;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lc/d/a/a/z/e;->q:Lc/d/a/a/l/g;

    return-object v0
.end method

.method public getRippleColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRippleColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShapeAppearanceModel()Lc/d/a/a/f0/k;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lc/d/a/a/z/e;->a:Lc/d/a/a/f0/k;

    .line 2
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/d/a/a/f0/k;

    return-object v0
.end method

.method public getShowMotionSpec()Lc/d/a/a/l/g;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lc/d/a/a/z/e;->p:Lc/d/a/a/l/g;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    return v0
.end method

.method public getSizeDimension()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(I)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/a/z/e;->d()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lc/d/a/a/z/e;->b:Lc/d/a/a/f0/g;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/view/View;Lc/d/a/a/f0/g;)V

    :cond_0
    invoke-virtual {v0}, Lc/d/a/a/z/e;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lc/d/a/a/z/e;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v2, :cond_1

    new-instance v2, Lc/d/a/a/z/f;

    invoke-direct {v2, v0}, Lc/d/a/a/z/f;-><init>(Lc/d/a/a/z/e;)V

    iput-object v2, v0, Lc/d/a/a/z/e;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    iget-object v0, v0, Lc/d/a/a/z/e;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lc/d/a/a/z/e;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lc/d/a/a/z/e;->E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v1

    invoke-virtual {v1}, Lc/d/a/a/z/e;->m()V

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->e()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lc/d/a/a/y/c;

    iget-object p1, p1, Lcom/google/android/material/stateful/ExtendableSavedState;->d:Lb/e/h;

    const/4 v1, 0x0

    const-string v2, "expandableWidgetHelper"

    .line 1
    invoke-virtual {p1, v2, v1}, Lb/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lc/d/a/a/y/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v1, Lcom/google/android/material/stateful/ExtendableSavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, v1, Lcom/google/android/material/stateful/ExtendableSavedState;->d:Lb/e/h;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lc/d/a/a/y/c;

    invoke-virtual {v2}, Lc/d/a/a/y/c;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "expandableWidgetHelper"

    invoke-virtual {v0, v3, v2}, Lb/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lc/d/a/a/z/e;->b:Lc/d/a/a/f0/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lc/d/a/a/f0/g;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, v0, Lc/d/a/a/z/e;->d:Lc/d/a/a/z/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lc/d/a/a/z/a;->a(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lc/d/a/a/z/e;->b:Lc/d/a/a/f0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/d/a/a/f0/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget v1, v0, Lc/d/a/a/z/e;->h:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lc/d/a/a/z/e;->h:F

    iget p1, v0, Lc/d/a/a/z/e;->h:F

    iget v1, v0, Lc/d/a/a/z/e;->i:F

    iget v2, v0, Lc/d/a/a/z/e;->j:F

    invoke-virtual {v0, p1, v1, v2}, Lc/d/a/a/z/e;->a(FFF)V

    :cond_0
    return-void
.end method

.method public setCompatElevationResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget v1, v0, Lc/d/a/a/z/e;->i:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lc/d/a/a/z/e;->i:F

    iget p1, v0, Lc/d/a/a/z/e;->h:F

    iget v1, v0, Lc/d/a/a/z/e;->i:F

    iget v2, v0, Lc/d/a/a/z/e;->j:F

    invoke-virtual {v0, p1, v1, v2}, Lc/d/a/a/z/e;->a(FFF)V

    :cond_0
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget v1, v0, Lc/d/a/a/z/e;->j:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lc/d/a/a/z/e;->j:F

    iget p1, v0, Lc/d/a/a/z/e;->h:F

    iget v1, v0, Lc/d/a/a/z/e;->i:F

    iget v2, v0, Lc/d/a/a/z/e;->j:F

    invoke-virtual {v0, p1, v1, v2}, Lc/d/a/a/z/e;->a(FFF)V

    :cond_0
    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    return-void
.end method

.method public setCustomSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom size must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/d/a/a/z/e;->b(F)V

    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iget-boolean v0, v0, Lc/d/a/a/z/e;->f:Z

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 3
    iput-boolean p1, v0, Lc/d/a/a/z/e;->f:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lc/d/a/a/y/c;

    .line 1
    iput p1, v0, Lc/d/a/a/y/c;->c:I

    return-void
.end method

.method public setHideMotionSpec(Lc/d/a/a/l/g;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iput-object p1, v0, Lc/d/a/a/z/e;->q:Lc/d/a/a/l/g;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/a/l/g;->a(Landroid/content/Context;I)Lc/d/a/a/l/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(Lc/d/a/a/l/g;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    .line 1
    iget v0, p1, Lc/d/a/a/z/e;->s:F

    invoke-virtual {p1, v0}, Lc/d/a/a/z/e;->a(F)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Lb/b/q/l;

    invoke-virtual {v0, p1}, Lb/b/q/l;->a(I)V

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lc/d/a/a/z/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/a/z/e;->f()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/a/z/e;->f()V

    return-void
.end method

.method public setShadowPaddingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iput-boolean p1, v0, Lc/d/a/a/z/e;->g:Z

    invoke-virtual {v0}, Lc/d/a/a/z/e;->m()V

    return-void
.end method

.method public setShapeAppearanceModel(Lc/d/a/a/f0/k;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/d/a/a/z/e;->a(Lc/d/a/a/f0/k;)V

    return-void
.end method

.method public setShowMotionSpec(Lc/d/a/a/l/g;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object v0

    .line 1
    iput-object p1, v0, Lc/d/a/a/z/e;->p:Lc/d/a/a/l/g;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/a/l/g;->a(Landroid/content/Context;I)Lc/d/a/a/l/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(Lc/d/a/a/l/g;)V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d()V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/a/z/e;->g()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/a/z/e;->g()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/a/z/e;->g()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Z

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lc/d/a/a/z/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/a/z/e;->e()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lc/d/a/a/a0/n;->setVisibility(I)V

    return-void
.end method
