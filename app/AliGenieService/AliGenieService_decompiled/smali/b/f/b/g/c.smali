.class public Lb/f/b/g/c;
.super Lb/f/b/g/i;
.source ""


# instance fields
.field public A0:[Lb/f/b/g/b;

.field public B0:I

.field public C0:Z

.field public D0:Z

.field public E0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public F0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public G0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public H0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public I0:Lb/f/b/g/j/b$a;

.field public q0:Lb/f/b/g/j/b;

.field public r0:Lb/f/b/g/j/e;

.field public s0:Lb/f/b/g/j/b$b;

.field public t0:Z

.field public u0:Lb/f/b/d;

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:I

.field public z0:[Lb/f/b/g/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lb/f/b/g/i;-><init>()V

    new-instance v0, Lb/f/b/g/j/b;

    invoke-direct {v0, p0}, Lb/f/b/g/j/b;-><init>(Lb/f/b/g/c;)V

    iput-object v0, p0, Lb/f/b/g/c;->q0:Lb/f/b/g/j/b;

    new-instance v0, Lb/f/b/g/j/e;

    invoke-direct {v0, p0}, Lb/f/b/g/j/e;-><init>(Lb/f/b/g/c;)V

    iput-object v0, p0, Lb/f/b/g/c;->r0:Lb/f/b/g/j/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/b/g/c;->s0:Lb/f/b/g/j/b$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/f/b/g/c;->t0:Z

    new-instance v2, Lb/f/b/d;

    invoke-direct {v2}, Lb/f/b/d;-><init>()V

    iput-object v2, p0, Lb/f/b/g/c;->u0:Lb/f/b/d;

    iput v1, p0, Lb/f/b/g/c;->x0:I

    iput v1, p0, Lb/f/b/g/c;->y0:I

    const/4 v2, 0x4

    new-array v3, v2, [Lb/f/b/g/b;

    iput-object v3, p0, Lb/f/b/g/c;->z0:[Lb/f/b/g/b;

    new-array v2, v2, [Lb/f/b/g/b;

    iput-object v2, p0, Lb/f/b/g/c;->A0:[Lb/f/b/g/b;

    const/16 v2, 0x101

    iput v2, p0, Lb/f/b/g/c;->B0:I

    iput-boolean v1, p0, Lb/f/b/g/c;->C0:Z

    iput-boolean v1, p0, Lb/f/b/g/c;->D0:Z

    iput-object v0, p0, Lb/f/b/g/c;->E0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lb/f/b/g/c;->F0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lb/f/b/g/c;->G0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lb/f/b/g/c;->H0:Ljava/lang/ref/WeakReference;

    new-instance v0, Lb/f/b/g/j/b$a;

    invoke-direct {v0}, Lb/f/b/g/j/b$a;-><init>()V

    iput-object v0, p0, Lb/f/b/g/c;->I0:Lb/f/b/g/j/b$a;

    return-void
.end method

.method public static a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Lb/f/b/g/j/b$b;Lb/f/b/g/j/b$a;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, p2, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, p2, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v1

    iput v1, p2, Lb/f/b/g/j/b$a;->c:I

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v1

    iput v1, p2, Lb/f/b/g/j/b$a;->d:I

    iput-boolean v0, p2, Lb/f/b/g/j/b$a;->i:Z

    iput p3, p2, Lb/f/b/g/j/b$a;->j:I

    iget-object p3, p2, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    iget-object v1, p2, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_3

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    if-eqz v1, :cond_4

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    cmpl-float v3, v5, v3

    if-lez v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    if-eqz p3, :cond_6

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p3, p2, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v1, :cond_5

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-nez p3, :cond_5

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p3, p2, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    move p3, v0

    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-nez v5, :cond_8

    if-nez v3, :cond_8

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v1, p2, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p3, :cond_7

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-nez v1, :cond_7

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v1, p2, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_7
    move v1, v0

    :cond_8
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p3, p2, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move p3, v0

    :cond_9
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v1, p2, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v1, v0

    :cond_a
    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    aget v0, v4, v0

    if-ne v0, v6, :cond_b

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_7

    :cond_b
    if-nez v1, :cond_f

    iget-object v0, p2, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_c

    iget v0, p2, Lb/f/b/g/j/b$a;->d:I

    goto :goto_4

    :cond_c
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Lb/f/b/g/j/b$a;)V

    iget v0, p2, Lb/f/b/g/j/b$a;->f:I

    :goto_4
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v1, p2, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    if-eqz v1, :cond_e

    if-ne v1, v5, :cond_d

    goto :goto_5

    .line 8
    :cond_d
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_6

    :cond_e
    :goto_5
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    :goto_6
    float-to-int v0, v1

    .line 9
    iput v0, p2, Lb/f/b/g/j/b$a;->c:I

    :cond_f
    :goto_7
    if-eqz v3, :cond_14

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_10

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p3, p2, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_b

    :cond_10
    if-nez p3, :cond_14

    iget-object p3, p2, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p3, v0, :cond_11

    iget p3, p2, Lb/f/b/g/j/b$a;->c:I

    goto :goto_8

    :cond_11
    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p3, p2, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object p3, p1

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Lb/f/b/g/j/b$a;)V

    iget p3, p2, Lb/f/b/g/j/b$a;->e:I

    :goto_8
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    if-eqz v0, :cond_13

    if-ne v0, v5, :cond_12

    goto :goto_9

    :cond_12
    int-to-float p3, p3

    .line 10
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    mul-float/2addr p3, v0

    goto :goto_a

    :cond_13
    :goto_9
    int-to-float p3, p3

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    div-float/2addr p3, v0

    :goto_a
    float-to-int p3, p3

    .line 11
    iput p3, p2, Lb/f/b/g/j/b$a;->d:I

    :cond_14
    :goto_b
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Lb/f/b/g/j/b$a;)V

    iget p1, p2, Lb/f/b/g/j/b$a;->e:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    iget p1, p2, Lb/f/b/g/j/b$a;->f:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    iget-boolean p1, p2, Lb/f/b/g/j/b$a;->h:Z

    .line 12
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Z

    .line 13
    iget p1, p2, Lb/f/b/g/j/b$a;->g:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    sget p0, Lb/f/b/g/j/b$a;->k:I

    iput p0, p2, Lb/f/b/g/j/b$a;->j:I

    iget-boolean p0, p2, Lb/f/b/g/j/b$a;->i:Z

    return p0
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 2

    iget-object v0, p0, Lb/f/b/g/c;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v0

    iget-object v1, p0, Lb/f/b/g/c;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/f/b/g/c;->H0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Lb/f/b/g/c;->x0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lb/f/b/g/c;->A0:[Lb/f/b/g/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lb/f/b/g/b;

    iput-object p2, p0, Lb/f/b/g/c;->A0:[Lb/f/b/g/b;

    :cond_0
    iget-object p2, p0, Lb/f/b/g/c;->A0:[Lb/f/b/g/b;

    iget v1, p0, Lb/f/b/g/c;->x0:I

    new-instance v2, Lb/f/b/g/b;

    const/4 v3, 0x0

    .line 2
    iget-boolean v4, p0, Lb/f/b/g/c;->t0:Z

    .line 3
    invoke-direct {v2, p1, v3, v4}, Lb/f/b/g/b;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v2, p2, v1

    iget p1, p0, Lb/f/b/g/c;->x0:I

    add-int/2addr p1, v0

    iput p1, p0, Lb/f/b/g/c;->x0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 4
    iget p2, p0, Lb/f/b/g/c;->y0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lb/f/b/g/c;->z0:[Lb/f/b/g/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lb/f/b/g/b;

    iput-object p2, p0, Lb/f/b/g/c;->z0:[Lb/f/b/g/b;

    :cond_2
    iget-object p2, p0, Lb/f/b/g/c;->z0:[Lb/f/b/g/b;

    iget v1, p0, Lb/f/b/g/c;->y0:I

    new-instance v2, Lb/f/b/g/b;

    .line 5
    iget-boolean v3, p0, Lb/f/b/g/c;->t0:Z

    .line 6
    invoke-direct {v2, p1, v0, v3}, Lb/f/b/g/b;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v2, p2, v1

    iget p1, p0, Lb/f/b/g/c;->y0:I

    add-int/2addr p1, v0

    iput p1, p0, Lb/f/b/g/c;->y0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(ZZ)V

    iget-object v0, p0, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(ZI)Z
    .locals 10

    iget-object v0, p0, Lb/f/b/g/c;->r0:Lb/f/b/g/j/e;

    const/4 v1, 0x1

    and-int/2addr p1, v1

    .line 7
    iget-object v2, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    iget-object v4, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    iget-object v5, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v5

    iget-object v6, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    move-result v6

    if-eqz p1, :cond_4

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v7, :cond_0

    if-ne v4, v7, :cond_4

    :cond_0
    iget-object v7, v0, Lb/f/b/g/j/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    if-ne v9, p2, :cond_1

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e()Z

    move-result v8

    if-nez v8, :cond_1

    move p1, v3

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, p1, :cond_4

    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v0, p1, v3}, Lb/f/b/g/j/e;->a(Lb/f/b/g/c;I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v7, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result p1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, p1, :cond_4

    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v0, p1, v1}, Lb/f/b/g/j/e;->a(Lb/f/b/g/c;I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v7, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result p1

    :goto_0
    invoke-virtual {v7, p1}, Lb/f/b/g/j/f;->a(I)V

    :cond_4
    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p2, :cond_6

    aget-object v6, p1, v3

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_5

    aget-object p1, p1, v3

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v6, :cond_7

    :cond_5
    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result p1

    add-int/2addr p1, v5

    iget-object v6, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    iget-object v6, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    sub-int/2addr p1, v5

    invoke-virtual {v6, p1}, Lb/f/b/g/j/f;->a(I)V

    goto :goto_2

    :cond_6
    aget-object v5, p1, v1

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v7, :cond_8

    aget-object p1, p1, v1

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v5, :cond_7

    goto :goto_1

    :cond_7
    move p1, v3

    goto :goto_3

    :cond_8
    :goto_1
    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result p1

    add-int/2addr p1, v6

    iget-object v5, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    iget-object v5, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    sub-int/2addr p1, v6

    invoke-virtual {v5, p1}, Lb/f/b/g/j/f;->a(I)V

    :goto_2
    move p1, v1

    :goto_3
    invoke-virtual {v0}, Lb/f/b/g/j/e;->b()V

    iget-object v5, v0, Lb/f/b/g/j/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    if-eq v7, p2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    if-ne v7, v8, :cond_a

    iget-boolean v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    if-nez v7, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b()V

    goto :goto_4

    :cond_b
    iget-object v5, v0, Lb/f/b/g/j/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    if-eq v7, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    if-ne v7, v8, :cond_e

    goto :goto_5

    :cond_e
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v7, :cond_f

    goto :goto_6

    :cond_f
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v7, :cond_10

    goto :goto_6

    :cond_10
    instance-of v7, v6, Lb/f/b/g/j/c;

    if-nez v7, :cond_c

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v6, :cond_c

    :goto_6
    move v1, v3

    :cond_11
    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p1, v0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    return v1
.end method

.method public b(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 2

    iget-object v0, p0, Lb/f/b/g/c;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v0

    iget-object v1, p0, Lb/f/b/g/c;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/f/b/g/c;->G0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public b(Lb/f/b/d;)Z
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lb/f/b/g/c;->m(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;Z)V

    iget-object v1, p0, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    .line 2
    instance-of v6, v6, Lb/f/b/g/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_7

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    iget-object v4, p0, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v6, v4, Lb/f/b/g/a;

    if-eqz v6, :cond_6

    check-cast v4, Lb/f/b/g/a;

    move v6, v2

    .line 3
    :goto_2
    iget v7, v4, Lb/f/b/g/f;->q0:I

    if-ge v6, v7, :cond_6

    iget-object v7, v4, Lb/f/b/g/f;->p0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    iget v8, v4, Lb/f/b/g/a;->r0:I

    if-eqz v8, :cond_4

    if-ne v8, v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 4
    :cond_3
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:[Z

    aput-boolean v5, v7, v5

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:[Z

    aput-boolean v5, v7, v2

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_9

    .line 5
    iget-object v4, p0, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;Z)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    sget-boolean v3, Lb/f/b/d;->r:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_6
    if-ge v4, v1, :cond_b

    iget-object v6, p0, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v4, :cond_c

    move v10, v2

    goto :goto_7

    :cond_c
    move v10, v5

    :goto_7
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/HashSet;IZ)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {p0, p1, v3}, Lb/f/b/g/g;->a(Lb/f/b/g/c;Lb/f/b/d;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;Z)V

    goto :goto_8

    :cond_d
    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_13

    iget-object v4, p0, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v6, v4, Lb/f/b/g/c;

    if-eqz v6, :cond_11

    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v6, v2

    aget-object v6, v6, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_e

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_e
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v8, :cond_f

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_f
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;Z)V

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_10

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_10
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_12

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_a

    :cond_11
    invoke-static {p0, p1, v4}, Lb/f/b/g/g;->a(Lb/f/b/g/c;Lb/f/b/d;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;Z)V

    :cond_12
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    iget v0, p0, Lb/f/b/g/c;->x0:I

    const/4 v1, 0x0

    if-lez v0, :cond_14

    invoke-static {p0, p1, v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/ArrayList;I)V

    :cond_14
    iget v0, p0, Lb/f/b/g/c;->y0:I

    if-lez v0, :cond_15

    invoke-static {p0, p1, v1, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/ArrayList;I)V

    :cond_15
    return v5
.end method

.method public c(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 2

    iget-object v0, p0, Lb/f/b/g/c;->E0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v0

    iget-object v1, p0, Lb/f/b/g/c;->E0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/f/b/g/c;->E0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public m(I)Z
    .locals 1

    iget v0, p0, Lb/f/b/g/c;->B0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lb/f/b/g/c;->B0:I

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lb/f/b/g/c;->m(I)Z

    move-result p1

    sput-boolean p1, Lb/f/b/d;->r:Z

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v0}, Lb/f/b/d;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lb/f/b/g/c;->v0:I

    iput v0, p0, Lb/f/b/g/c;->w0:I

    invoke-super {p0}, Lb/f/b/g/i;->q()V

    return-void
.end method

.method public s()V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iput-boolean v2, v1, Lb/f/b/g/c;->C0:Z

    iput-boolean v2, v1, Lb/f/b/g/c;->D0:Z

    iget-object v0, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    aget-object v5, v5, v2

    iget v8, v1, Lb/f/b/g/c;->B0:I

    invoke-static {v8, v6}, Lb/f/b/g/g;->a(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1
    iget-object v8, v1, Lb/f/b/g/c;->s0:Lb/f/b/g/j/b$b;

    .line 2
    invoke-static {v1, v8}, Lb/f/b/g/j/g;->a(Lb/f/b/g/c;Lb/f/b/g/j/b$b;)V

    move v8, v2

    :goto_0
    if-ge v8, v3, :cond_2

    iget-object v9, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()Z

    move-result v10

    if-eqz v10, :cond_1

    instance-of v10, v9, Lb/f/b/g/d;

    if-nez v10, :cond_1

    instance-of v10, v9, Lb/f/b/g/a;

    if-nez v10, :cond_1

    instance-of v10, v9, Lb/f/b/g/h;

    if-nez v10, :cond_1

    .line 3
    iget-boolean v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Z

    if-nez v10, :cond_1

    .line 4
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    invoke-virtual {v9, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v12, :cond_0

    iget v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-eq v10, v6, :cond_0

    if-ne v11, v12, :cond_0

    iget v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-eq v10, v6, :cond_0

    move v10, v6

    goto :goto_1

    :cond_0
    move v10, v2

    :goto_1
    if-nez v10, :cond_1

    new-instance v10, Lb/f/b/g/j/b$a;

    invoke-direct {v10}, Lb/f/b/g/j/b$a;-><init>()V

    iget-object v11, v1, Lb/f/b/g/c;->s0:Lb/f/b/g/j/b$b;

    sget v12, Lb/f/b/g/j/b$a;->k:I

    invoke-static {v9, v11, v10, v12}, Lb/f/b/g/c;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Lb/f/b/g/j/b$b;Lb/f/b/g/j/b$a;I)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    if-le v3, v8, :cond_36

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v10, :cond_3

    if-ne v7, v10, :cond_36

    :cond_3
    iget v10, v1, Lb/f/b/g/c;->B0:I

    const/16 v11, 0x400

    invoke-static {v10, v11}, Lb/f/b/g/g;->a(II)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 5
    iget-object v10, v1, Lb/f/b/g/c;->s0:Lb/f/b/g/j/b$b;

    .line 6
    iget-object v11, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v2

    :goto_2
    if-ge v13, v12, :cond_5

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    invoke-static {v15, v8, v2, v14}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v2

    if-nez v2, :cond_4

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v7

    goto/16 :goto_18

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    if-ge v2, v12, :cond_15

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    move/from16 v19, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    move/from16 v20, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    move-object/from16 v21, v7

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    invoke-static {v6, v3, v4, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lb/f/b/g/c;->I0:Lb/f/b/g/j/b$a;

    sget v4, Lb/f/b/g/j/b$a;->k:I

    invoke-static {v9, v10, v3, v4}, Lb/f/b/g/c;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Lb/f/b/g/j/b$b;Lb/f/b/g/j/b$a;I)Z

    :cond_6
    instance-of v3, v9, Lb/f/b/g/d;

    if-eqz v3, :cond_a

    move-object v4, v9

    check-cast v4, Lb/f/b/g/d;

    .line 8
    iget v6, v4, Lb/f/b/g/d;->t0:I

    if-nez v6, :cond_8

    if-nez v14, :cond_7

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    :cond_7
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_8
    iget v6, v4, Lb/f/b/g/d;->t0:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    if-nez v8, :cond_9

    .line 11
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    instance-of v4, v9, Lb/f/b/g/f;

    if-eqz v4, :cond_10

    instance-of v4, v9, Lb/f/b/g/a;

    if-eqz v4, :cond_d

    move-object v4, v9

    check-cast v4, Lb/f/b/g/a;

    invoke-virtual {v4}, Lb/f/b/g/a;->t()I

    move-result v6

    if-nez v6, :cond_c

    if-nez v13, :cond_b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v6

    :cond_b
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {v4}, Lb/f/b/g/a;->t()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_10

    if-nez v15, :cond_f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_d
    move-object v4, v9

    check-cast v4, Lb/f/b/g/f;

    if-nez v13, :cond_e

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    :goto_4
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v4, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_12

    iget-object v4, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_12

    if-nez v3, :cond_12

    instance-of v4, v9, Lb/f/b/g/a;

    if-nez v4, :cond_12

    if-nez v16, :cond_11

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_11
    move-object/from16 v4, v16

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    :cond_12
    iget-object v4, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_14

    iget-object v4, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_14

    iget-object v4, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_14

    if-nez v3, :cond_14

    instance-of v3, v9, Lb/f/b/g/a;

    if-nez v3, :cond_14

    if-nez v17, :cond_13

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    move-object/from16 v3, v17

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v3

    :cond_14
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v7, v21

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_15
    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/b/g/d;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_5

    :cond_16
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v13, :cond_17

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/b/g/f;

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Lb/f/b/g/f;->a(Ljava/util/ArrayList;ILb/f/b/g/j/m;)V

    invoke-virtual {v8, v2}, Lb/f/b/g/j/m;->a(Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_6

    :cond_17
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 12
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_18

    .line 13
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_7

    :cond_18
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 14
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_19

    .line 15
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_8

    :cond_19
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 16
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1a

    .line 17
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_9

    :cond_1a
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v16, :cond_1b

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_a

    :cond_1b
    if-eqz v14, :cond_1c

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/b/g/d;

    const/4 v7, 0x1

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_b

    :cond_1c
    const/4 v7, 0x1

    if-eqz v15, :cond_1d

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/b/g/f;

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Lb/f/b/g/f;->a(Ljava/util/ArrayList;ILb/f/b/g/j/m;)V

    invoke-virtual {v8, v2}, Lb/f/b/g/j/m;->a(Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_c

    :cond_1d
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 18
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1e

    .line 19
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_d

    :cond_1e
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 20
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1f

    .line 21
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_e

    :cond_1f
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 22
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_20

    .line 23
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_f

    :cond_20
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 24
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_21

    .line 25
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_10

    :cond_21
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v17, :cond_22

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {v4, v7, v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;

    goto :goto_11

    :cond_22
    const/4 v3, 0x0

    :goto_12
    if-ge v3, v12, :cond_25

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 26
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v8, v6, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_23

    const/4 v8, 0x1

    aget-object v6, v6, v8

    if-ne v6, v7, :cond_23

    const/4 v6, 0x1

    goto :goto_13

    :cond_23
    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_24

    .line 27
    iget v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m0:I

    invoke-static {v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/util/ArrayList;I)Lb/f/b/g/j/m;

    move-result-object v6

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n0:I

    invoke-static {v2, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/util/ArrayList;I)Lb/f/b/g/j/m;

    move-result-object v4

    if-eqz v6, :cond_24

    if-eqz v4, :cond_24

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Lb/f/b/g/j/m;->a(ILb/f/b/g/j/m;)V

    const/4 v7, 0x2

    .line 28
    iput v7, v4, Lb/f/b/g/j/m;->c:I

    .line 29
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_26

    goto/16 :goto_18

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_2a

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v9, 0x0

    :cond_27
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/f/b/g/j/m;

    .line 30
    iget v7, v6, Lb/f/b/g/j/m;->c:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_28

    goto :goto_14

    .line 31
    :cond_28
    iget-object v7, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    const/4 v8, 0x0

    .line 32
    invoke-virtual {v6, v7, v8}, Lb/f/b/g/j/m;->a(Lb/f/b/d;I)I

    move-result v7

    if-le v7, v4, :cond_27

    move-object v9, v6

    move v4, v7

    goto :goto_14

    :cond_29
    if-eqz v9, :cond_2a

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    goto :goto_15

    :cond_2a
    const/4 v9, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_2e

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_2b
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/f/b/g/j/m;

    .line 33
    iget v7, v6, Lb/f/b/g/j/m;->c:I

    if-nez v7, :cond_2c

    goto :goto_16

    .line 34
    :cond_2c
    iget-object v7, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    const/4 v8, 0x1

    .line 35
    invoke-virtual {v6, v7, v8}, Lb/f/b/g/j/m;->a(Lb/f/b/d;I)I

    move-result v7

    if-le v7, v4, :cond_2b

    move-object v3, v6

    move v4, v7

    goto :goto_16

    :cond_2d
    if-eqz v3, :cond_2e

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    goto :goto_17

    :cond_2e
    const/4 v3, 0x0

    :goto_17
    if-nez v9, :cond_30

    if-eqz v3, :cond_2f

    goto :goto_19

    :cond_2f
    :goto_18
    const/4 v2, 0x0

    goto :goto_1a

    :cond_30
    :goto_19
    const/4 v2, 0x1

    :goto_1a
    if-eqz v2, :cond_35

    .line 36
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v2, :cond_32

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v2

    if-ge v0, v2, :cond_31

    if-lez v0, :cond_31

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lb/f/b/g/c;->C0:Z

    goto :goto_1b

    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v0

    :cond_32
    :goto_1b
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v3, v21

    if-ne v3, v2, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    move/from16 v4, v20

    if-ge v4, v2, :cond_33

    if-lez v4, :cond_33

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lb/f/b/g/c;->D0:Z

    goto :goto_1c

    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v4

    goto :goto_1c

    :cond_34
    move/from16 v4, v20

    :goto_1c
    move v2, v0

    const/4 v0, 0x1

    goto :goto_1e

    :cond_35
    move/from16 v4, v20

    move-object/from16 v3, v21

    goto :goto_1d

    :cond_36
    move/from16 v19, v3

    move-object v3, v7

    :goto_1d
    move v2, v0

    const/4 v0, 0x0

    :goto_1e
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Lb/f/b/g/c;->m(I)Z

    move-result v7

    if-nez v7, :cond_38

    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Lb/f/b/g/c;->m(I)Z

    move-result v7

    if-eqz v7, :cond_37

    goto :goto_1f

    :cond_37
    const/4 v7, 0x0

    goto :goto_20

    :cond_38
    :goto_1f
    const/4 v7, 0x1

    :goto_20
    iget-object v8, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lb/f/b/d;->h:Z

    iput-boolean v9, v8, Lb/f/b/d;->i:Z

    iget v9, v1, Lb/f/b/g/c;->B0:I

    if-eqz v9, :cond_39

    if-eqz v7, :cond_39

    const/4 v7, 0x1

    iput-boolean v7, v8, Lb/f/b/d;->i:Z

    :cond_39
    iget-object v7, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_3a

    goto :goto_21

    :cond_3a
    const/4 v8, 0x0

    goto :goto_22

    :cond_3b
    :goto_21
    const/4 v8, 0x1

    :goto_22
    const/4 v9, 0x0

    .line 37
    iput v9, v1, Lb/f/b/g/c;->x0:I

    iput v9, v1, Lb/f/b/g/c;->y0:I

    move/from16 v9, v19

    const/4 v10, 0x0

    :goto_23
    if-ge v10, v9, :cond_3d

    .line 38
    iget-object v11, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v12, v11, Lb/f/b/g/i;

    if-eqz v12, :cond_3c

    check-cast v11, Lb/f/b/g/i;

    invoke-virtual {v11}, Lb/f/b/g/i;->s()V

    :cond_3c
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_3d
    invoke-virtual {v1, v6}, Lb/f/b/g/c;->m(I)Z

    move-result v10

    move v12, v0

    const/4 v0, 0x0

    const/4 v11, 0x1

    :goto_24
    if-eqz v11, :cond_4d

    const/4 v13, 0x1

    add-int/lit8 v14, v0, 0x1

    :try_start_0
    iget-object v0, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v0}, Lb/f/b/d;->g()V

    const/4 v13, 0x0

    .line 39
    iput v13, v1, Lb/f/b/g/c;->x0:I

    iput v13, v1, Lb/f/b/g/c;->y0:I

    .line 40
    iget-object v0, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;)V

    const/4 v0, 0x0

    :goto_25
    if-ge v0, v9, :cond_3e

    iget-object v13, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v15, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v13, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3e
    iget-object v0, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v1, v0}, Lb/f/b/g/c;->b(Lb/f/b/d;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, v1, Lb/f/b/g/c;->E0:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x5

    if-eqz v0, :cond_3f

    :try_start_2
    iget-object v0, v1, Lb/f/b/g/c;->E0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, v1, Lb/f/b/g/c;->E0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v15}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    .line 41
    iget-object v15, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v15, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    iget-object v15, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    const/4 v6, 0x0

    invoke-virtual {v15, v0, v13, v6, v11}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v6, 0x0

    .line 42
    :try_start_3
    iput-object v6, v1, Lb/f/b/g/c;->E0:Ljava/lang/ref/WeakReference;

    goto :goto_26

    :catch_0
    move-exception v0

    goto :goto_27

    :cond_3f
    :goto_26
    iget-object v0, v1, Lb/f/b/g/c;->G0:Ljava/lang/ref/WeakReference;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_40

    :try_start_4
    iget-object v0, v1, Lb/f/b/g/c;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, v1, Lb/f/b/g/c;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v13}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 43
    iget-object v13, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v13, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    iget-object v13, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v0, v15, v11}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v6, 0x0

    .line 44
    :try_start_5
    iput-object v6, v1, Lb/f/b/g/c;->G0:Ljava/lang/ref/WeakReference;

    :cond_40
    iget-object v0, v1, Lb/f/b/g/c;->F0:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_41

    :try_start_6
    iget-object v0, v1, Lb/f/b/g/c;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, v1, Lb/f/b/g/c;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v13}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 45
    iget-object v13, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v13, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    iget-object v13, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    const/4 v15, 0x0

    invoke-virtual {v13, v0, v6, v15, v11}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v6, 0x0

    .line 46
    :try_start_7
    iput-object v6, v1, Lb/f/b/g/c;->F0:Ljava/lang/ref/WeakReference;

    goto :goto_28

    :goto_27
    const/4 v6, 0x0

    goto :goto_2a

    :cond_41
    :goto_28
    iget-object v0, v1, Lb/f/b/g/c;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_42

    iget-object v0, v1, Lb/f/b/g/c;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, v1, Lb/f/b/g/c;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v13}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 47
    iget-object v13, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v13, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    iget-object v13, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v0, v15, v11}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const/4 v6, 0x0

    .line 48
    :try_start_8
    iput-object v6, v1, Lb/f/b/g/c;->H0:Ljava/lang/ref/WeakReference;

    goto :goto_29

    :catch_1
    move-exception v0

    goto :goto_27

    :cond_42
    const/4 v6, 0x0

    :goto_29
    iget-object v0, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v0}, Lb/f/b/d;->e()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v11, 0x1

    goto :goto_2c

    :catch_2
    move-exception v0

    :goto_2a
    const/4 v11, 0x1

    goto :goto_2b

    :catch_3
    move-exception v0

    const/4 v6, 0x0

    :goto_2b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXCEPTION : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2c
    iget-object v0, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    if-eqz v11, :cond_43

    sget-object v6, Lb/f/b/g/g;->a:[Z

    const/4 v11, 0x2

    const/4 v13, 0x0

    .line 49
    aput-boolean v13, v6, v11

    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Lb/f/b/g/c;->m(I)Z

    move-result v11

    invoke-virtual {v1, v0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Lb/f/b/d;Z)V

    iget-object v13, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_2d
    if-ge v15, v13, :cond_44

    iget-object v6, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v6, v0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Lb/f/b/d;Z)V

    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0x40

    goto :goto_2d

    .line 50
    :cond_43
    invoke-virtual {v1, v0, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Lb/f/b/d;Z)V

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v9, :cond_44

    iget-object v6, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v11, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    invoke-virtual {v6, v11, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Lb/f/b/d;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_44
    if-eqz v8, :cond_48

    const/16 v0, 0x8

    if-ge v14, v0, :cond_48

    sget-object v0, Lb/f/b/g/g;->a:[Z

    const/4 v6, 0x2

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_2f
    if-ge v0, v9, :cond_45

    iget-object v15, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v17

    add-int v6, v17, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v15

    add-int/2addr v15, v6

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x2

    goto :goto_2f

    :cond_45
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v11, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v11

    if-ge v11, v0, :cond_46

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x0

    aput-object v11, v0, v12

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_30

    :cond_46
    const/4 v0, 0x0

    :goto_30
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v11, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v11

    if-ge v11, v6, :cond_47

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aput-object v6, v0, v11

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_31

    :cond_47
    move v6, v12

    goto :goto_31

    :cond_48
    move v6, v12

    const/4 v0, 0x0

    :goto_31
    iget v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v12

    if-le v11, v12, :cond_49

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x0

    aput-object v6, v0, v11

    const/4 v0, 0x1

    const/4 v6, 0x1

    :cond_49
    iget v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v12

    if-le v11, v12, :cond_4a

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aput-object v6, v0, v11

    move v0, v11

    move v6, v0

    goto :goto_32

    :cond_4a
    const/4 v11, 0x1

    :goto_32
    if-nez v6, :cond_4c

    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v15, :cond_4b

    if-lez v2, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v12

    if-le v12, v2, :cond_4b

    iput-boolean v11, v1, Lb/f/b/g/c;->C0:Z

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v0, v13

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    move v0, v11

    move v6, v0

    :cond_4b
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v12, v12, v11

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v13, :cond_4c

    if-lez v4, :cond_4c

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v12

    if-le v12, v4, :cond_4c

    iput-boolean v11, v1, Lb/f/b/g/c;->D0:Z

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v0, v11

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_33

    :cond_4c
    move v11, v0

    move v12, v6

    :goto_33
    move v0, v14

    const/16 v6, 0x40

    goto/16 :goto_24

    :cond_4d
    iput-object v7, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    if-eqz v12, :cond_4e

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aput-object v5, v0, v2

    const/4 v2, 0x1

    aput-object v3, v0, v2

    :cond_4e
    iget-object v0, v1, Lb/f/b/g/c;->u0:Lb/f/b/d;

    .line 51
    iget-object v0, v0, Lb/f/b/d;->n:Lb/f/b/c;

    .line 52
    invoke-virtual {v1, v0}, Lb/f/b/g/i;->a(Lb/f/b/c;)V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lb/f/b/g/c;->r0:Lb/f/b/g/j/e;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lb/f/b/g/j/e;->b:Z

    return-void
.end method
