.class public Lc/d/a/a/z/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/z/e$b;,
        Lc/d/a/a/z/e$d;,
        Lc/d/a/a/z/e$c;,
        Lc/d/a/a/z/e$g;,
        Lc/d/a/a/z/e$h;,
        Lc/d/a/a/z/e$f;,
        Lc/d/a/a/z/e$e;
    }
.end annotation


# static fields
.field public static final F:Landroid/animation/TimeInterpolator;

.field public static final G:[I

.field public static final H:[I

.field public static final I:[I

.field public static final J:[I

.field public static final K:[I

.field public static final L:[I


# instance fields
.field public final A:Landroid/graphics/Rect;

.field public final B:Landroid/graphics/RectF;

.field public final C:Landroid/graphics/RectF;

.field public final D:Landroid/graphics/Matrix;

.field public E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public a:Lc/d/a/a/f0/k;

.field public b:Lc/d/a/a/f0/g;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Lc/d/a/a/z/a;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Z

.field public g:Z

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public final l:Lc/d/a/a/a0/f;

.field public m:Lc/d/a/a/l/g;

.field public n:Lc/d/a/a/l/g;

.field public o:Landroid/animation/Animator;

.field public p:Lc/d/a/a/l/g;

.field public q:Lc/d/a/a/l/g;

.field public r:F

.field public s:F

.field public t:I

.field public u:I

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/a/z/e$e;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final z:Lc/d/a/a/e0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lc/d/a/a/l/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Lc/d/a/a/z/e;->F:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lc/d/a/a/z/e;->G:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lc/d/a/a/z/e;->H:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lc/d/a/a/z/e;->I:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lc/d/a/a/z/e;->J:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lc/d/a/a/z/e;->K:[I

    new-array v0, v1, [I

    sput-object v0, Lc/d/a/a/z/e;->L:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lc/d/a/a/e0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/a/z/e;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc/d/a/a/z/e;->s:F

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/a/z/e;->u:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/d/a/a/z/e;->A:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/d/a/a/z/e;->B:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/d/a/a/z/e;->C:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/d/a/a/z/e;->D:Landroid/graphics/Matrix;

    iput-object p1, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lc/d/a/a/z/e;->z:Lc/d/a/a/e0/b;

    new-instance p1, Lc/d/a/a/a0/f;

    invoke-direct {p1}, Lc/d/a/a/a0/f;-><init>()V

    iput-object p1, p0, Lc/d/a/a/z/e;->l:Lc/d/a/a/a0/f;

    iget-object p1, p0, Lc/d/a/a/z/e;->l:Lc/d/a/a/a0/f;

    sget-object p2, Lc/d/a/a/z/e;->G:[I

    new-instance v0, Lc/d/a/a/z/e$d;

    invoke-direct {v0, p0}, Lc/d/a/a/z/e$d;-><init>(Lc/d/a/a/z/e;)V

    invoke-virtual {p0, v0}, Lc/d/a/a/z/e;->a(Lc/d/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lc/d/a/a/a0/f;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lc/d/a/a/z/e;->l:Lc/d/a/a/a0/f;

    sget-object p2, Lc/d/a/a/z/e;->H:[I

    new-instance v0, Lc/d/a/a/z/e$c;

    invoke-direct {v0, p0}, Lc/d/a/a/z/e$c;-><init>(Lc/d/a/a/z/e;)V

    invoke-virtual {p0, v0}, Lc/d/a/a/z/e;->a(Lc/d/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lc/d/a/a/a0/f;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lc/d/a/a/z/e;->l:Lc/d/a/a/a0/f;

    sget-object p2, Lc/d/a/a/z/e;->I:[I

    new-instance v0, Lc/d/a/a/z/e$c;

    invoke-direct {v0, p0}, Lc/d/a/a/z/e$c;-><init>(Lc/d/a/a/z/e;)V

    invoke-virtual {p0, v0}, Lc/d/a/a/z/e;->a(Lc/d/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lc/d/a/a/a0/f;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lc/d/a/a/z/e;->l:Lc/d/a/a/a0/f;

    sget-object p2, Lc/d/a/a/z/e;->J:[I

    new-instance v0, Lc/d/a/a/z/e$c;

    invoke-direct {v0, p0}, Lc/d/a/a/z/e$c;-><init>(Lc/d/a/a/z/e;)V

    invoke-virtual {p0, v0}, Lc/d/a/a/z/e;->a(Lc/d/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lc/d/a/a/a0/f;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lc/d/a/a/z/e;->l:Lc/d/a/a/a0/f;

    sget-object p2, Lc/d/a/a/z/e;->K:[I

    new-instance v0, Lc/d/a/a/z/e$g;

    invoke-direct {v0, p0}, Lc/d/a/a/z/e$g;-><init>(Lc/d/a/a/z/e;)V

    invoke-virtual {p0, v0}, Lc/d/a/a/z/e;->a(Lc/d/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lc/d/a/a/a0/f;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lc/d/a/a/z/e;->l:Lc/d/a/a/a0/f;

    sget-object p2, Lc/d/a/a/z/e;->L:[I

    new-instance v0, Lc/d/a/a/z/e$b;

    invoke-direct {v0, p0}, Lc/d/a/a/z/e$b;-><init>(Lc/d/a/a/z/e;)V

    invoke-virtual {p0, v0}, Lc/d/a/a/z/e;->a(Lc/d/a/a/z/e$h;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lc/d/a/a/a0/f;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Lc/d/a/a/z/e;->r:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final a(Lc/d/a/a/l/g;FFF)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lc/d/a/a/l/g;->a(Ljava/lang/String;)Lc/d/a/a/l/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc/d/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lc/d/a/a/l/g;->a(Ljava/lang/String;)Lc/d/a/a/l/h;

    move-result-object v2

    invoke-virtual {v2, p2}, Lc/d/a/a/l/h;->a(Landroid/animation/Animator;)V

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    aput p3, v4, v5

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, v1}, Lc/d/a/a/l/g;->a(Ljava/lang/String;)Lc/d/a/a/l/h;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/d/a/a/l/h;->a(Landroid/animation/Animator;)V

    .line 3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lc/d/a/a/z/e;->D:Landroid/graphics/Matrix;

    invoke-virtual {p0, p4, p2}, Lc/d/a/a/z/e;->a(FLandroid/graphics/Matrix;)V

    iget-object p2, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lc/d/a/a/l/e;

    invoke-direct {p3}, Lc/d/a/a/l/e;-><init>()V

    new-instance p4, Lc/d/a/a/z/e$a;

    invoke-direct {p4, p0}, Lc/d/a/a/z/e$a;-><init>(Lc/d/a/a/z/e;)V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lc/d/a/a/z/e;->D:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    invoke-virtual {p1, p3}, Lc/d/a/a/l/g;->a(Ljava/lang/String;)Lc/d/a/a/l/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc/d/a/a/l/h;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lc/d/a/a/z/e$h;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Lc/d/a/a/z/e;->F:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(F)V
    .locals 1

    iput p1, p0, Lc/d/a/a/z/e;->s:F

    iget-object v0, p0, Lc/d/a/a/z/e;->D:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lc/d/a/a/z/e;->a(FLandroid/graphics/Matrix;)V

    iget-object p1, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public a(FFF)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final a(FLandroid/graphics/Matrix;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lc/d/a/a/z/e;->t:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/a/z/e;->B:Landroid/graphics/RectF;

    iget-object v2, p0, Lc/d/a/a/z/e;->C:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lc/d/a/a/z/e;->t:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget v0, p0, Lc/d/a/a/z/e;->t:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/z/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc/d/a/a/d0/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 5

    iget-boolean v0, p0, Lc/d/a/a/z/e;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc/d/a/a/z/e;->k:I

    iget-object v1, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lc/d/a/a/z/e;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc/d/a/a/z/e;->a()F

    move-result v1

    iget v2, p0, Lc/d/a/a/z/e;->j:F

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final a(Lc/d/a/a/f0/k;)V
    .locals 2

    iput-object p1, p0, Lc/d/a/a/z/e;->a:Lc/d/a/a/f0/k;

    iget-object v0, p0, Lc/d/a/a/z/e;->b:Lc/d/a/a/f0/g;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, v0, Lc/d/a/a/f0/g;->b:Lc/d/a/a/f0/g$b;

    iput-object p1, v1, Lc/d/a/a/f0/g$b;->a:Lc/d/a/a/f0/k;

    invoke-virtual {v0}, Lc/d/a/a/f0/g;->invalidateSelf()V

    .line 7
    :cond_0
    iget-object v0, p0, Lc/d/a/a/z/e;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lc/d/a/a/f0/n;

    if-eqz v1, :cond_1

    check-cast v0, Lc/d/a/a/f0/n;

    invoke-interface {v0, p1}, Lc/d/a/a/f0/n;->setShapeAppearanceModel(Lc/d/a/a/f0/k;)V

    :cond_1
    iget-object v0, p0, Lc/d/a/a/z/e;->d:Lc/d/a/a/z/a;

    if-eqz v0, :cond_2

    .line 8
    iput-object p1, v0, Lc/d/a/a/z/a;->o:Lc/d/a/a/f0/k;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public a([I)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public b(F)V
    .locals 3

    iget-object v0, p0, Lc/d/a/a/z/e;->b:Lc/d/a/a/f0/g;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lc/d/a/a/f0/g;->b:Lc/d/a/a/f0/g$b;

    iget v2, v1, Lc/d/a/a/f0/g$b;->o:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    iput p1, v1, Lc/d/a/a/f0/g$b;->o:F

    invoke-virtual {v0}, Lc/d/a/a/f0/g;->i()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lc/d/a/a/z/e;->u:I

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lc/d/a/a/z/e;->u:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public c()Z
    .locals 4

    iget-object v0, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lc/d/a/a/z/e;->u:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lc/d/a/a/z/e;->u:I

    if-eq v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public d()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public e()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/z/e;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->a()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/z/e;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public h()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public i()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Lb/h/k/q;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()Z
    .locals 2

    iget-boolean v0, p0, Lc/d/a/a/z/e;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget v1, p0, Lc/d/a/a/z/e;->k:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public l()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final m()V
    .locals 8

    iget-object v0, p0, Lc/d/a/a/z/e;->A:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lc/d/a/a/z/e;->a(Landroid/graphics/Rect;)V

    .line 1
    iget-object v1, p0, Lc/d/a/a/z/e;->e:Landroid/graphics/drawable/Drawable;

    const-string v2, "Didn\'t initialize content background"

    invoke-static {v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lc/d/a/a/z/e;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v3, p0, Lc/d/a/a/z/e;->e:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v2, p0, Lc/d/a/a/z/e;->z:Lc/d/a/a/e0/b;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc/d/a/a/z/e;->z:Lc/d/a/a/e0/b;

    iget-object v1, p0, Lc/d/a/a/z/e;->e:Landroid/graphics/drawable/Drawable;

    :goto_0
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-virtual {v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v1, p0, Lc/d/a/a/z/e;->z:Lc/d/a/a/e0/b;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 3
    iget-object v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    iget v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    add-int/2addr v2, v5

    add-int/2addr v3, v5

    add-int/2addr v4, v5

    add-int/2addr v0, v5

    .line 5
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    return-void
.end method
