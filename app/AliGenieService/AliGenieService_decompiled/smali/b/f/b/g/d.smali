.class public Lb/f/b/g/d;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source ""


# instance fields
.field public p0:F

.field public q0:I

.field public r0:I

.field public s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public t0:I

.field public u0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lb/f/b/g/d;->p0:F

    const/4 v0, -0x1

    iput v0, p0, Lb/f/b/g/d;->q0:I

    iput v0, p0, Lb/f/b/g/d;->r0:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    iput v0, p0, Lb/f/b/g/d;->t0:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget v0, p0, Lb/f/b/g/d;->t0:I

    if-nez v0, :cond_0

    iget-object p1, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_2
    iget v0, p0, Lb/f/b/g/d;->t0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lb/f/b/d;Z)V
    .locals 7

    .line 1
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2
    check-cast p2, Lb/f/b/g/c;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget v5, p0, Lb/f/b/g/d;->t0:I

    if-nez v5, :cond_3

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz p2, :cond_2

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v3

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :cond_3
    :goto_1
    iget-boolean p2, p0, Lb/f/b/g/d;->u0:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 3
    iget-boolean v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    if-eqz v6, :cond_6

    .line 4
    invoke-virtual {p1, p2}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    iget-object v6, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget v6, p0, Lb/f/b/g/d;->q0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2

    :cond_4
    iget v6, p0, Lb/f/b/g/d;->r0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_5
    :goto_2
    iput-boolean v4, p0, Lb/f/b/g/d;->u0:Z

    return-void

    :cond_6
    iget p2, p0, Lb/f/b/g/d;->q0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    invoke-virtual {p1, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    iget v3, p0, Lb/f/b/g/d;->q0:I

    invoke-virtual {p1, p2, v0, v3, v6}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_3

    :cond_7
    iget p2, p0, Lb/f/b/g/d;->r0:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    invoke-virtual {p1, v1}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    iget v3, p0, Lb/f/b/g/d;->r0:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_3

    :cond_8
    iget p2, p0, Lb/f/b/g/d;->p0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    invoke-virtual {p1, v1}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    iget v2, p0, Lb/f/b/g/d;->p0:F

    .line 5
    invoke-virtual {p1}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v3

    .line 6
    iget-object v4, v3, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v4, p2, v0}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p2, v3, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {p2, v1, v2}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 7
    invoke-virtual {p1, v3}, Lb/f/b/d;->a(Lb/f/b/b;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public b(Lb/f/b/d;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lb/f/b/g/d;->t0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 3
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 4
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 6
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    goto :goto_0

    .line 7
    :cond_1
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 8
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 10
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m(I)V
    .locals 1

    iget-object v0, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1
    iput p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    .line 2
    iput-boolean p1, p0, Lb/f/b/g/d;->u0:Z

    return-void
.end method

.method public n(I)V
    .locals 3

    iget v0, p0, Lb/f/b/g/d;->t0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lb/f/b/g/d;->t0:I

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lb/f/b/g/d;->t0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    :goto_0
    iput-object p1, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lb/f/b/g/d;->u0:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lb/f/b/g/d;->u0:Z

    return v0
.end method
