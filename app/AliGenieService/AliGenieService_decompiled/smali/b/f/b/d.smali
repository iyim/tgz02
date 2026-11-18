.class public Lb/f/b/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/f/b/d$a;
    }
.end annotation


# static fields
.field public static r:Z = false

.field public static s:I = 0x3e8

.field public static t:J


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lb/f/b/d$a;

.field public e:I

.field public f:I

.field public g:[Lb/f/b/b;

.field public h:Z

.field public i:Z

.field public j:[Z

.field public k:I

.field public l:I

.field public m:I

.field public final n:Lb/f/b/c;

.field public o:[Landroidx/constraintlayout/solver/SolverVariable;

.field public p:I

.field public q:Lb/f/b/d$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/f/b/d;->a:Z

    iput v0, p0, Lb/f/b/d;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lb/f/b/d;->c:Ljava/util/HashMap;

    const/16 v2, 0x20

    iput v2, p0, Lb/f/b/d;->e:I

    iget v2, p0, Lb/f/b/d;->e:I

    iput v2, p0, Lb/f/b/d;->f:I

    iput-object v1, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    iput-boolean v0, p0, Lb/f/b/d;->h:Z

    iput-boolean v0, p0, Lb/f/b/d;->i:Z

    new-array v1, v2, [Z

    iput-object v1, p0, Lb/f/b/d;->j:[Z

    const/4 v1, 0x1

    iput v1, p0, Lb/f/b/d;->k:I

    iput v0, p0, Lb/f/b/d;->l:I

    iput v2, p0, Lb/f/b/d;->m:I

    sget v1, Lb/f/b/d;->s:I

    new-array v1, v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Lb/f/b/d;->o:[Landroidx/constraintlayout/solver/SolverVariable;

    iput v0, p0, Lb/f/b/d;->p:I

    new-array v0, v2, [Lb/f/b/b;

    iput-object v0, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    invoke-virtual {p0}, Lb/f/b/d;->f()V

    new-instance v0, Lb/f/b/c;

    invoke-direct {v0}, Lb/f/b/c;-><init>()V

    iput-object v0, p0, Lb/f/b/d;->n:Lb/f/b/c;

    new-instance v0, Lb/f/b/f;

    iget-object v1, p0, Lb/f/b/d;->n:Lb/f/b/c;

    invoke-direct {v0, v1}, Lb/f/b/f;-><init>(Lb/f/b/c;)V

    iput-object v0, p0, Lb/f/b/d;->d:Lb/f/b/d$a;

    new-instance v0, Lb/f/b/b;

    iget-object v1, p0, Lb/f/b/d;->n:Lb/f/b/c;

    invoke-direct {v0, v1}, Lb/f/b/b;-><init>(Lb/f/b/c;)V

    iput-object v0, p0, Lb/f/b/d;->q:Lb/f/b/d$a;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 2

    iget v0, p0, Lb/f/b/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lb/f/b/d;->f:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lb/f/b/d;->d()V

    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {p0, v0, p2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    iget v0, p0, Lb/f/b/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/f/b/d;->b:I

    iget v0, p0, Lb/f/b/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/f/b/d;->k:I

    iget v0, p0, Lb/f/b/d;->b:I

    iput v0, p2, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    iput p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    iget-object p1, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object p1, p1, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object p2, p1, v0

    iget-object p1, p0, Lb/f/b/d;->d:Lb/f/b/d$a;

    invoke-interface {p1, p2}, Lb/f/b/d$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-object p2
.end method

.method public final a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 2

    iget-object p2, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object p2, p2, Lb/f/b/c;->c:Lb/f/b/e;

    invoke-virtual {p2}, Lb/f/b/e;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/solver/SolverVariable;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/constraintlayout/solver/SolverVariable;

    invoke-direct {p2, p1}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/SolverVariable;->a()V

    .line 1
    :goto_0
    iput-object p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 2
    iget p1, p0, Lb/f/b/d;->p:I

    sget v0, Lb/f/b/d;->s:I

    if-lt p1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lb/f/b/d;->s:I

    iget-object p1, p0, Lb/f/b/d;->o:[Landroidx/constraintlayout/solver/SolverVariable;

    sget v0, Lb/f/b/d;->s:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object p1, p0, Lb/f/b/d;->o:[Landroidx/constraintlayout/solver/SolverVariable;

    :cond_1
    iget-object p1, p0, Lb/f/b/d;->o:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Lb/f/b/d;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/f/b/d;->p:I

    aput-object p2, p1, v0

    return-object p2
.end method

.method public a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lb/f/b/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lb/f/b/d;->f:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lb/f/b/d;->d()V

    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5

    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 24
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_2

    .line 25
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()V

    .line 26
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v0, p1

    .line 27
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, Lb/f/b/d;->b:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v2, v2, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object p1, v2, p1

    if-nez p1, :cond_5

    :cond_3
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    if-eq p1, v1, :cond_4

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->a()V

    :cond_4
    iget p1, p0, Lb/f/b/d;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/f/b/d;->b:I

    iget p1, p0, Lb/f/b/d;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/f/b/d;->k:I

    iget p1, p0, Lb/f/b/d;->b:I

    iput p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iget-object v1, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v1, v1, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, Landroidx/constraintlayout/solver/SolverVariable;->f:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Lb/f/b/d;F)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    .line 18
    iput p3, v1, Lb/f/b/b;->b:F

    :cond_2
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    iget-object v2, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v2, p1, p3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, p2, v3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v2, p1, v3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, p2, p3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    .line 19
    invoke-virtual {v1, p0, p4}, Lb/f/b/b;->a(Lb/f/b/d;I)Lb/f/b/b;

    :cond_4
    invoke-virtual {p0, v1}, Lb/f/b/d;->a(Lb/f/b/b;)V

    return-object v1
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lb/f/b/d;->l:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v1, v1, v0

    iget-object v2, v1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Lb/f/b/b;->b:F

    iput v1, v2, Landroidx/constraintlayout/solver/SolverVariable;->f:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 5

    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Lb/f/b/d;F)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lb/f/b/d;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v1, v1, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->n:Z

    if-eqz v3, :cond_0

    iget v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->o:I

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->p:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/solver/SolverVariable;->a(Lb/f/b/d;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-eq v0, v1, :cond_6

    iget-object v3, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v0, v3, v0

    iget-boolean v3, v0, Lb/f/b/b;->f:Z

    if-eqz v3, :cond_3

    :goto_1
    int-to-float p1, p2

    iput p1, v0, Lb/f/b/b;->b:F

    goto :goto_4

    :cond_3
    iget-object v3, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v3}, Lb/f/b/b$a;->b()I

    move-result v3

    if-nez v3, :cond_4

    iput-boolean v2, v0, Lb/f/b/b;->f:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v0

    if-gez p2, :cond_5

    mul-int/2addr p2, v1

    int-to-float p2, p2

    .line 20
    iput p2, v0, Lb/f/b/b;->b:F

    iget-object p2, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    int-to-float p2, p2

    iput p2, v0, Lb/f/b/b;->b:F

    iget-object p2, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    :goto_2
    invoke-interface {p2, p1, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_3

    .line 21
    :cond_6
    invoke-virtual {p0}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v0

    .line 22
    iput-object p1, v0, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    int-to-float p2, p2

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->f:F

    iput p2, v0, Lb/f/b/b;->b:F

    iput-boolean v2, v0, Lb/f/b/b;->f:Z

    .line 23
    :goto_3
    invoke-virtual {p0, v0}, Lb/f/b/d;->a(Lb/f/b/b;)V

    :goto_4
    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 6

    invoke-virtual {p0}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 3
    iget-object p3, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p3, p1, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, p6, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_2

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p4, v2

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_2

    iget-object p4, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p4, p1, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, p2, v3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, p5, v3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, p6, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p4, p1, v3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, p2, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    int-to-float p1, p3

    goto :goto_1

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, p6, v3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, p5, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    neg-int p1, p7

    :goto_0
    int-to-float p1, p1

    :goto_1
    iput p1, v0, Lb/f/b/b;->b:F

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-interface {v2, p1, v5}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    mul-float v2, v4, v3

    invoke-interface {p1, p2, v2}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    mul-float/2addr v3, p4

    invoke-interface {p1, p5, v3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    mul-float/2addr v1, p4

    invoke-interface {p1, p6, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p2, p1

    iput p2, v0, Lb/f/b/b;->b:F

    :cond_6
    :goto_2
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    .line 4
    invoke-virtual {v0, p0, p8}, Lb/f/b/b;->a(Lb/f/b/d;I)Lb/f/b/b;

    :cond_7
    invoke-virtual {p0, v0}, Lb/f/b/d;->a(Lb/f/b/b;)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    .locals 7

    invoke-virtual {p0}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lb/f/b/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Lb/f/b/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    invoke-virtual {v6, p0, p6}, Lb/f/b/b;->a(Lb/f/b/d;I)Lb/f/b/b;

    :cond_0
    invoke-virtual {p0, v6}, Lb/f/b/d;->a(Lb/f/b/b;)V

    return-void
.end method

.method public a(Lb/f/b/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lb/f/b/d;->l:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Lb/f/b/d;->m:I

    if-ge v2, v4, :cond_1

    iget v2, v0, Lb/f/b/d;->k:I

    add-int/2addr v2, v3

    iget v4, v0, Lb/f/b/d;->f:I

    if-lt v2, v4, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lb/f/b/d;->d()V

    :cond_2
    iget-boolean v2, v1, Lb/f/b/b;->f:Z

    if-nez v2, :cond_23

    .line 5
    iget-object v2, v0, Lb/f/b/d;->g:[Lb/f/b/b;

    array-length v2, v2

    const/4 v5, -0x1

    if-nez v2, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_d

    iget-object v6, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v6}, Lb/f/b/b$a;->b()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_6

    iget-object v8, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v8, v7}, Lb/f/b/b$a;->b(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    iget v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    if-ne v9, v5, :cond_4

    iget-boolean v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-nez v9, :cond_4

    iget-boolean v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->n:Z

    if-eqz v9, :cond_5

    :cond_4
    iget-object v9, v1, Lb/f/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    iget-object v6, v1, Lb/f/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_b

    iget-object v8, v1, Lb/f/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/SolverVariable;

    iget-boolean v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-eqz v9, :cond_7

    invoke-virtual {v1, v0, v8, v3}, Lb/f/b/b;->a(Lb/f/b/d;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    goto :goto_3

    :cond_7
    iget-boolean v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->n:Z

    if-eqz v9, :cond_9

    if-nez v9, :cond_8

    goto :goto_3

    .line 6
    :cond_8
    iget-object v9, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v9, v8}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v9

    iget v10, v1, Lb/f/b/b;->b:F

    iget v11, v8, Landroidx/constraintlayout/solver/SolverVariable;->p:F

    mul-float/2addr v11, v9

    add-float/2addr v11, v10

    iput v11, v1, Lb/f/b/b;->b:F

    iget-object v10, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v10, v8, v3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/solver/SolverVariable;->b(Lb/f/b/b;)V

    iget-object v10, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    iget-object v11, v0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v11, v11, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v8, v8, Landroidx/constraintlayout/solver/SolverVariable;->o:I

    aget-object v8, v11, v8

    invoke-interface {v10, v8, v9, v3}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    iget-object v8, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v8}, Lb/f/b/b$a;->b()I

    move-result v8

    if-nez v8, :cond_a

    iput-boolean v3, v1, Lb/f/b/b;->f:Z

    iput-boolean v3, v0, Lb/f/b/d;->a:Z

    goto :goto_3

    .line 7
    :cond_9
    iget-object v9, v0, Lb/f/b/d;->g:[Lb/f/b/b;

    iget v8, v8, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    aget-object v8, v9, v8

    invoke-virtual {v1, v0, v8, v3}, Lb/f/b/b;->a(Lb/f/b/d;Lb/f/b/b;Z)V

    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    iget-object v6, v1, Lb/f/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_c
    move v2, v3

    goto/16 :goto_0

    :cond_d
    iget-object v2, v1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v2, :cond_e

    iget-object v2, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v2}, Lb/f/b/b$a;->b()I

    move-result v2

    if-nez v2, :cond_e

    iput-boolean v3, v1, Lb/f/b/b;->f:Z

    iput-boolean v3, v0, Lb/f/b/d;->a:Z

    .line 8
    :cond_e
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lb/f/b/b;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    return-void

    .line 9
    :cond_f
    iget v2, v1, Lb/f/b/b;->b:F

    const/4 v6, 0x0

    cmpg-float v7, v2, v6

    if-gez v7, :cond_10

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v2, v7

    iput v2, v1, Lb/f/b/b;->b:F

    iget-object v2, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v2}, Lb/f/b/b$a;->a()V

    .line 10
    :cond_10
    iget-object v2, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v2}, Lb/f/b/b$a;->b()I

    move-result v2

    move v11, v6

    move v13, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_5
    if-ge v8, v2, :cond_17

    iget-object v15, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v15, v8}, Lb/f/b/b$a;->a(I)F

    move-result v15

    iget-object v4, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v4, v8}, Lb/f/b/b$a;->b(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iget-object v5, v4, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v5, v7, :cond_13

    if-nez v9, :cond_11

    goto :goto_6

    :cond_11
    cmpl-float v5, v11, v15

    if-lez v5, :cond_12

    :goto_6
    invoke-virtual {v1, v4}, Lb/f/b/b;->b(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v5

    goto :goto_7

    :cond_12
    if-nez v12, :cond_16

    invoke-virtual {v1, v4}, Lb/f/b/b;->b(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v5

    if-eqz v5, :cond_16

    move v5, v3

    :goto_7
    move-object v9, v4

    move v12, v5

    move v11, v15

    goto :goto_a

    :cond_13
    if-nez v9, :cond_16

    cmpg-float v5, v15, v6

    if-gez v5, :cond_16

    if-nez v10, :cond_14

    goto :goto_8

    :cond_14
    cmpl-float v5, v13, v15

    if-lez v5, :cond_15

    :goto_8
    invoke-virtual {v1, v4}, Lb/f/b/b;->b(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v5

    goto :goto_9

    :cond_15
    if-nez v14, :cond_16

    invoke-virtual {v1, v4}, Lb/f/b/b;->b(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v5

    if-eqz v5, :cond_16

    move v5, v3

    :goto_9
    move-object v10, v4

    move v14, v5

    move v13, v15

    :cond_16
    :goto_a
    add-int/lit8 v8, v8, 0x1

    const/4 v5, -0x1

    goto :goto_5

    :cond_17
    if-eqz v9, :cond_18

    goto :goto_b

    :cond_18
    move-object v9, v10

    :goto_b
    if-nez v9, :cond_19

    move v2, v3

    goto :goto_c

    .line 11
    :cond_19
    invoke-virtual {v1, v9}, Lb/f/b/b;->c(Landroidx/constraintlayout/solver/SolverVariable;)V

    const/4 v2, 0x0

    :goto_c
    iget-object v4, v1, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v4}, Lb/f/b/b$a;->b()I

    move-result v4

    if-nez v4, :cond_1a

    iput-boolean v3, v1, Lb/f/b/b;->f:Z

    :cond_1a
    if-eqz v2, :cond_1f

    .line 12
    iget v2, v0, Lb/f/b/d;->k:I

    add-int/2addr v2, v3

    iget v4, v0, Lb/f/b/d;->f:I

    if-lt v2, v4, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lb/f/b/d;->d()V

    :cond_1b
    sget-object v2, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iget v4, v0, Lb/f/b/d;->b:I

    add-int/2addr v4, v3

    iput v4, v0, Lb/f/b/d;->b:I

    iget v4, v0, Lb/f/b/d;->k:I

    add-int/2addr v4, v3

    iput v4, v0, Lb/f/b/d;->k:I

    iget v4, v0, Lb/f/b/d;->b:I

    iput v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    iget-object v5, v0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v5, v5, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object v2, v5, v4

    .line 13
    iput-object v2, v1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, v0, Lb/f/b/d;->l:I

    invoke-virtual/range {p0 .. p1}, Lb/f/b/d;->b(Lb/f/b/b;)V

    iget v5, v0, Lb/f/b/d;->l:I

    add-int/2addr v4, v3

    if-ne v5, v4, :cond_1f

    iget-object v4, v0, Lb/f/b/d;->q:Lb/f/b/d$a;

    check-cast v4, Lb/f/b/b;

    invoke-virtual {v4, v1}, Lb/f/b/b;->a(Lb/f/b/d$a;)V

    iget-object v4, v0, Lb/f/b/d;->q:Lb/f/b/d$a;

    invoke-virtual {v0, v4}, Lb/f/b/d;->b(Lb/f/b/d$a;)I

    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1e

    iget-object v4, v1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v4, v2, :cond_1c

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v4, v2}, Lb/f/b/b;->a([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 15
    invoke-virtual {v1, v2}, Lb/f/b/b;->c(Landroidx/constraintlayout/solver/SolverVariable;)V

    :cond_1c
    iget-boolean v2, v1, Lb/f/b/b;->f:Z

    if-nez v2, :cond_1d

    iget-object v2, v1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/solver/SolverVariable;->a(Lb/f/b/d;Lb/f/b/b;)V

    :cond_1d
    iget-object v2, v0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v2, v2, Lb/f/b/c;->b:Lb/f/b/e;

    invoke-virtual {v2, v1}, Lb/f/b/e;->a(Ljava/lang/Object;)Z

    iget v2, v0, Lb/f/b/d;->l:I

    sub-int/2addr v2, v3

    iput v2, v0, Lb/f/b/d;->l:I

    :cond_1e
    move v4, v3

    goto :goto_d

    :cond_1f
    const/4 v4, 0x0

    .line 16
    :goto_d
    iget-object v2, v1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v2, :cond_21

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v5, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v2, v5, :cond_20

    iget v2, v1, Lb/f/b/b;->b:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_21

    :cond_20
    move/from16 v16, v3

    goto :goto_e

    :cond_21
    const/16 v16, 0x0

    :goto_e
    if-nez v16, :cond_22

    return-void

    :cond_22
    move/from16 v16, v4

    goto :goto_f

    :cond_23
    const/16 v16, 0x0

    :goto_f
    if-nez v16, :cond_24

    .line 17
    invoke-virtual/range {p0 .. p1}, Lb/f/b/d;->b(Lb/f/b/b;)V

    :cond_24
    return-void
.end method

.method public a(Lb/f/b/d$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 28
    :goto_0
    iget v3, v0, Lb/f/b/d;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v6, v3, v2

    iget-object v6, v6, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v3, v2

    iget v3, v3, Lb/f/b/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-nez v2, :cond_f

    add-int/2addr v3, v5

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, -0x1

    move v11, v6

    move v8, v7

    move v9, v8

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_4
    iget v12, v0, Lb/f/b/d;->l:I

    if-ge v6, v12, :cond_c

    iget-object v12, v0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v12, v12, v6

    iget-object v13, v12, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v13, v13, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v14, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v13, v14, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-boolean v13, v12, Lb/f/b/b;->f:Z

    if-eqz v13, :cond_4

    goto/16 :goto_8

    :cond_4
    iget v13, v12, Lb/f/b/b;->b:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_b

    iget-object v13, v12, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v13}, Lb/f/b/b$a;->b()I

    move-result v13

    move v14, v10

    move v10, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v13, :cond_a

    iget-object v15, v12, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v15, v8}, Lb/f/b/b$a;->b(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v15

    iget-object v1, v12, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v1, v15}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v1

    cmpg-float v16, v1, v4

    if-gtz v16, :cond_5

    goto :goto_7

    :cond_5
    move v4, v14

    move v14, v11

    move v11, v10

    move v10, v9

    const/4 v9, 0x0

    :goto_6
    const/16 v5, 0x9

    if-ge v9, v5, :cond_9

    iget-object v5, v15, Landroidx/constraintlayout/solver/SolverVariable;->h:[F

    aget v5, v5, v9

    div-float/2addr v5, v1

    cmpg-float v17, v5, v14

    if-gez v17, :cond_6

    if-eq v9, v4, :cond_7

    :cond_6
    if-le v9, v4, :cond_8

    :cond_7
    iget v4, v15, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    move v11, v4

    move v14, v5

    move v10, v6

    move v4, v9

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    move v9, v10

    move v10, v11

    move v11, v14

    move v14, v4

    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    move v8, v9

    move v9, v10

    move v10, v14

    :cond_b
    :goto_8
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_c
    if-eq v8, v7, :cond_d

    iget-object v1, v0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v1, v1, v8

    iget-object v4, v1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    iget-object v4, v0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v4, v4, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v4, v9

    invoke-virtual {v1, v4}, Lb/f/b/b;->c(Landroidx/constraintlayout/solver/SolverVariable;)V

    iget-object v4, v1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v8, v4, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/solver/SolverVariable;->a(Lb/f/b/d;Lb/f/b/b;)V

    goto :goto_9

    :cond_d
    const/4 v2, 0x1

    :goto_9
    iget v1, v0, Lb/f/b/d;->k:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_e

    const/4 v2, 0x1

    :cond_e
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_3

    .line 29
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lb/f/b/d;->b(Lb/f/b/d$a;)I

    invoke-virtual/range {p0 .. p0}, Lb/f/b/d;->a()V

    return-void
.end method

.method public final b(Lb/f/b/d$a;)I
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lb/f/b/d;->k:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lb/f/b/d;->j:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    :cond_1
    :goto_1
    if-nez v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lb/f/b/d;->k:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2

    return v3

    :cond_2
    move-object v4, p1

    check-cast v4, Lb/f/b/b;

    .line 8
    iget-object v5, v4, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v5, :cond_3

    .line 9
    iget-object v6, p0, Lb/f/b/d;->j:[Z

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    aput-boolean v1, v6, v5

    :cond_3
    iget-object v5, p0, Lb/f/b/d;->j:[Z

    invoke-interface {v4, p0, v5}, Lb/f/b/d$a;->a(Lb/f/b/d;[Z)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lb/f/b/d;->j:[Z

    iget v6, v4, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_4

    return v3

    :cond_4
    aput-boolean v1, v5, v6

    :cond_5
    if-eqz v4, :cond_a

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    move v8, v5

    move v7, v6

    move v5, v0

    :goto_2
    iget v9, p0, Lb/f/b/d;->l:I

    if-ge v5, v9, :cond_9

    iget-object v9, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v9, v9, v5

    iget-object v10, v9, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v11, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v10, v11, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v10, v9, Lb/f/b/b;->f:Z

    if-eqz v10, :cond_7

    goto :goto_3

    .line 10
    :cond_7
    iget-object v10, v9, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v10, v4}, Lb/f/b/b$a;->b(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 11
    iget-object v10, v9, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v10, v4}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8

    iget v9, v9, Lb/f/b/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v8

    if-gez v10, :cond_8

    move v7, v5

    move v8, v9

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    if-le v7, v6, :cond_1

    iget-object v5, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v5, v5, v7

    iget-object v8, v5, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v6, v8, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    invoke-virtual {v5, v4}, Lb/f/b/b;->c(Landroidx/constraintlayout/solver/SolverVariable;)V

    iget-object v4, v5, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    invoke-virtual {v4, p0, v5}, Landroidx/constraintlayout/solver/SolverVariable;->a(Lb/f/b/d;Lb/f/b/b;)V

    goto :goto_1

    :cond_a
    move v2, v1

    goto/16 :goto_1

    :cond_b
    return v3
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 6
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz p1, :cond_0

    .line 7
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lb/f/b/b;
    .locals 5

    iget-object v0, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v0, v0, Lb/f/b/c;->b:Lb/f/b/e;

    invoke-virtual {v0}, Lb/f/b/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lb/f/b/b;

    iget-object v1, p0, Lb/f/b/d;->n:Lb/f/b/c;

    invoke-direct {v0, v1}, Lb/f/b/b;-><init>(Lb/f/b/c;)V

    sget-wide v1, Lb/f/b/d;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lb/f/b/d;->t:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v1}, Lb/f/b/b$a;->clear()V

    const/4 v1, 0x0

    iput v1, v0, Lb/f/b/b;->b:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/f/b/b;->f:Z

    .line 5
    :goto_0
    sget v1, Landroidx/constraintlayout/solver/SolverVariable;->q:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/solver/SolverVariable;->q:I

    return-object v0
.end method

.method public b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 3

    invoke-virtual {p0}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lb/f/b/d;->c()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lb/f/b/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Lb/f/b/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p4, p2}, Lb/f/b/d;->a(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    .line 2
    iget-object p3, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lb/f/b/d;->a(Lb/f/b/b;)V

    return-void
.end method

.method public final b(Lb/f/b/b;)V
    .locals 7

    iget-boolean v0, p1, Lb/f/b/b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget p1, p1, Lb/f/b/b;->b:F

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->a(Lb/f/b/d;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    iget v1, p0, Lb/f/b/d;->l:I

    aput-object p1, v0, v1

    iget-object v0, p1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/f/b/d;->l:I

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->a(Lb/f/b/d;Lb/f/b/b;)V

    :goto_0
    iget-boolean p1, p0, Lb/f/b/d;->a:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget v1, p0, Lb/f/b/d;->l:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v2, v1, v0

    if-eqz v2, :cond_5

    aget-object v2, v1, v0

    iget-boolean v2, v2, Lb/f/b/b;->f:Z

    if-eqz v2, :cond_5

    aget-object v1, v1, v0

    iget-object v2, v1, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v1, Lb/f/b/b;->b:F

    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/solver/SolverVariable;->a(Lb/f/b/d;F)V

    iget-object v2, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v2, v2, Lb/f/b/c;->b:Lb/f/b/e;

    invoke-virtual {v2, v1}, Lb/f/b/e;->a(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Lb/f/b/d;->l:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    aget-object v5, v3, v4

    iget-object v5, v5, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    if-ne v5, v1, :cond_2

    aget-object v3, v3, v4

    iget-object v3, v3, Lb/f/b/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aput-object v2, v1, v3

    :cond_4
    iget v1, p0, Lb/f/b/d;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/f/b/d;->l:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, Lb/f/b/d;->a:Z

    :cond_7
    return-void
.end method

.method public c()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 3

    iget v0, p0, Lb/f/b/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lb/f/b/d;->f:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lb/f/b/d;->d()V

    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    iget v1, p0, Lb/f/b/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/f/b/d;->b:I

    iget v1, p0, Lb/f/b/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/f/b/d;->k:I

    iget v1, p0, Lb/f/b/d;->b:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    iget-object v2, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v2, v2, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 3

    invoke-virtual {p0}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lb/f/b/d;->c()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lb/f/b/b;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Lb/f/b/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p1, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p4, p2}, Lb/f/b/d;->a(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    .line 2
    iget-object p3, v0, Lb/f/b/b;->e:Lb/f/b/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lb/f/b/d;->a(Lb/f/b/b;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lb/f/b/d;->e:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb/f/b/d;->e:I

    iget-object v0, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    iget v1, p0, Lb/f/b/d;->e:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/f/b/b;

    iput-object v0, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    iget-object v0, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v1, v0, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Lb/f/b/d;->e:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, v0, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Lb/f/b/d;->e:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lb/f/b/d;->j:[Z

    iput v0, p0, Lb/f/b/d;->f:I

    iput v0, p0, Lb/f/b/d;->m:I

    return-void
.end method

.method public e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lb/f/b/d;->d:Lb/f/b/d$a;

    invoke-interface {v0}, Lb/f/b/d$a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/f/b/d;->a()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lb/f/b/d;->h:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lb/f/b/d;->i:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/f/b/d;->d:Lb/f/b/d$a;

    invoke-virtual {p0, v0}, Lb/f/b/d;->a(Lb/f/b/d$a;)V

    goto :goto_4

    :cond_2
    :goto_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lb/f/b/d;->l:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lb/f/b/b;->f:Z

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lb/f/b/d;->a()V

    :goto_4
    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lb/f/b/d;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v2, v2, Lb/f/b/c;->b:Lb/f/b/e;

    invoke-virtual {v2, v1}, Lb/f/b/e;->a(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v3, v2, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/SolverVariable;->a()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lb/f/b/c;->c:Lb/f/b/e;

    iget-object v2, p0, Lb/f/b/d;->o:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, p0, Lb/f/b/d;->p:I

    invoke-virtual {v1, v2, v3}, Lb/f/b/e;->a([Ljava/lang/Object;I)V

    iput v0, p0, Lb/f/b/d;->p:I

    iget-object v1, p0, Lb/f/b/d;->n:Lb/f/b/c;

    iget-object v1, v1, Lb/f/b/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lb/f/b/d;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_2
    iput v0, p0, Lb/f/b/d;->b:I

    iget-object v1, p0, Lb/f/b/d;->d:Lb/f/b/d$a;

    invoke-interface {v1}, Lb/f/b/d$a;->clear()V

    const/4 v1, 0x1

    iput v1, p0, Lb/f/b/d;->k:I

    move v1, v0

    :goto_1
    iget v2, p0, Lb/f/b/d;->l:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lb/f/b/d;->g:[Lb/f/b/b;

    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    aget-object v2, v2, v1

    iput-boolean v0, v2, Lb/f/b/b;->c:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lb/f/b/d;->f()V

    iput v0, p0, Lb/f/b/d;->l:I

    new-instance v0, Lb/f/b/b;

    iget-object v1, p0, Lb/f/b/d;->n:Lb/f/b/c;

    invoke-direct {v0, v1}, Lb/f/b/b;-><init>(Lb/f/b/c;)V

    iput-object v0, p0, Lb/f/b/d;->q:Lb/f/b/d$a;

    return-void
.end method
