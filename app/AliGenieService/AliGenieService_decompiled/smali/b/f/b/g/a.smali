.class public Lb/f/b/g/a;
.super Lb/f/b/g/f;
.source ""


# instance fields
.field public r0:I

.field public s0:Z

.field public t0:I

.field public u0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/f/b/g/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/f/b/g/a;->r0:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/f/b/g/a;->s0:Z

    iput v0, p0, Lb/f/b/g/a;->t0:I

    iput-boolean v0, p0, Lb/f/b/g/a;->u0:Z

    return-void
.end method


# virtual methods
.method public a(Lb/f/b/d;Z)V
    .locals 13

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x3

    aput-object v0, p2, v4

    move p2, v1

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v5, v0

    if-ge p2, v5, :cond_0

    aget-object v5, v0, p2

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    iput-object v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Lb/f/b/g/a;->r0:I

    if-ltz p2, :cond_1f

    const/4 v5, 0x4

    if-ge p2, v5, :cond_1f

    aget-object p2, v0, p2

    iget-boolean v0, p0, Lb/f/b/g/a;->u0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lb/f/b/g/a;->s()Z

    :cond_1
    iget-boolean v0, p0, Lb/f/b/g/a;->u0:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lb/f/b/g/a;->u0:Z

    iget p2, p0, Lb/f/b/g/a;->r0:I

    if-eqz p2, :cond_4

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eq p2, v2, :cond_3

    if-ne p2, v4, :cond_5

    :cond_3
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    invoke-virtual {p1, p2, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    invoke-virtual {p1, p2, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    :goto_2
    invoke-virtual {p1, p2, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    :cond_5
    return-void

    :cond_6
    move v0, v1

    :goto_3
    iget v6, p0, Lb/f/b/g/f;->q0:I

    if-ge v0, v6, :cond_c

    iget-object v6, p0, Lb/f/b/g/f;->p0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v0

    iget-boolean v7, p0, Lb/f/b/g/a;->s0:Z

    if-nez v7, :cond_7

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    iget v7, p0, Lb/f/b/g/a;->r0:I

    if-eqz v7, :cond_8

    if-ne v7, v3, :cond_9

    :cond_8
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_9

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_9

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_9

    :goto_4
    move v0, v3

    goto :goto_6

    :cond_9
    iget v7, p0, Lb/f/b/g/a;->r0:I

    if-eq v7, v2, :cond_a

    if-ne v7, v4, :cond_b

    :cond_a
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_b

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_b

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_b

    goto :goto_4

    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    move v0, v1

    :goto_6
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_7

    :cond_d
    move v6, v1

    goto :goto_8

    :cond_e
    :goto_7
    move v6, v3

    :goto_8
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_9

    :cond_f
    move v7, v1

    goto :goto_a

    :cond_10
    :goto_9
    move v7, v3

    :goto_a
    if-nez v0, :cond_15

    iget v0, p0, Lb/f/b/g/a;->r0:I

    if-nez v0, :cond_11

    if-nez v6, :cond_14

    :cond_11
    iget v0, p0, Lb/f/b/g/a;->r0:I

    if-ne v0, v2, :cond_12

    if-nez v7, :cond_14

    :cond_12
    iget v0, p0, Lb/f/b/g/a;->r0:I

    if-ne v0, v3, :cond_13

    if-nez v6, :cond_14

    :cond_13
    iget v0, p0, Lb/f/b/g/a;->r0:I

    if-ne v0, v4, :cond_15

    if-eqz v7, :cond_15

    :cond_14
    move v0, v3

    goto :goto_b

    :cond_15
    move v0, v1

    :goto_b
    const/4 v6, 0x5

    if-nez v0, :cond_16

    move v6, v5

    :cond_16
    move v0, v1

    :goto_c
    iget v7, p0, Lb/f/b/g/f;->q0:I

    if-ge v0, v7, :cond_1b

    iget-object v7, p0, Lb/f/b/g/f;->p0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v0

    iget-boolean v8, p0, Lb/f/b/g/a;->s0:Z

    if-nez v8, :cond_17

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b()Z

    move-result v8

    if-nez v8, :cond_17

    goto :goto_10

    :cond_17
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Lb/f/b/g/a;->r0:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Lb/f/b/g/a;->r0:I

    aget-object v10, v7, v9

    iput-object v8, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v10, v7, v9

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_18

    aget-object v10, v7, v9

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v10, p0, :cond_18

    aget-object v7, v7, v9

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:I

    add-int/2addr v7, v1

    goto :goto_d

    :cond_18
    move v7, v1

    :goto_d
    iget v9, p0, Lb/f/b/g/a;->r0:I

    if-eqz v9, :cond_1a

    if-ne v9, v2, :cond_19

    goto :goto_e

    :cond_19
    iget-object v9, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget v10, p0, Lb/f/b/g/a;->t0:I

    add-int/2addr v10, v7

    .line 1
    invoke-virtual {p1}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v11

    invoke-virtual {p1}, Lb/f/b/d;->c()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    iput v1, v12, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    invoke-virtual {v11, v9, v8, v12, v10}, Lb/f/b/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Lb/f/b/b;

    invoke-virtual {p1, v11}, Lb/f/b/d;->a(Lb/f/b/b;)V

    goto :goto_f

    .line 2
    :cond_1a
    :goto_e
    iget-object v9, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget v10, p0, Lb/f/b/g/a;->t0:I

    sub-int/2addr v10, v7

    .line 3
    invoke-virtual {p1}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v11

    invoke-virtual {p1}, Lb/f/b/d;->c()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    iput v1, v12, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    invoke-virtual {v11, v9, v8, v12, v10}, Lb/f/b/b;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Lb/f/b/b;

    invoke-virtual {p1, v11}, Lb/f/b/d;->a(Lb/f/b/b;)V

    .line 4
    :goto_f
    iget-object v9, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget v10, p0, Lb/f/b/g/a;->t0:I

    add-int/2addr v10, v7

    invoke-virtual {p1, v9, v8, v10, v6}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    iget p2, p0, Lb/f/b/g/a;->r0:I

    const/16 v0, 0x8

    if-nez p2, :cond_1c

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v5}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    :goto_11
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v1}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    goto :goto_12

    :cond_1c
    if-ne p2, v3, :cond_1d

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v5}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_11

    :cond_1d
    if-ne p2, v2, :cond_1e

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v5}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_11

    :cond_1e
    if-ne p2, v4, :cond_1f

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v5}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_11

    :cond_1f
    :goto_12
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lb/f/b/g/a;->u0:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lb/f/b/g/a;->u0:Z

    return v0
.end method

.method public s()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    iget v4, p0, Lb/f/b/g/f;->q0:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lb/f/b/g/f;->p0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v2

    iget-boolean v7, p0, Lb/f/b/g/a;->s0:Z

    if-nez v7, :cond_0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    iget v7, p0, Lb/f/b/g/a;->r0:I

    if-eqz v7, :cond_1

    if-ne v7, v1, :cond_2

    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_2
    iget v7, p0, Lb/f/b/g/a;->r0:I

    if-eq v7, v6, :cond_3

    if-ne v7, v5, :cond_4

    :cond_3
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_13

    if-lez v4, :cond_13

    move v2, v0

    move v3, v2

    :goto_3
    iget v4, p0, Lb/f/b/g/f;->q0:I

    if-ge v0, v4, :cond_10

    iget-object v4, p0, Lb/f/b/g/f;->p0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v0

    iget-boolean v7, p0, Lb/f/b/g/a;->s0:Z

    if-nez v7, :cond_6

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_8

    :cond_6
    if-nez v3, :cond_b

    iget v3, p0, Lb/f/b/g/a;->r0:I

    if-nez v3, :cond_7

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :goto_4
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v2

    goto :goto_5

    :cond_7
    if-ne v3, v1, :cond_8

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_4

    :cond_8
    if-ne v3, v6, :cond_9

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_4

    :cond_9
    if-ne v3, v5, :cond_a

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_4

    :cond_a
    :goto_5
    move v3, v1

    :cond_b
    iget v7, p0, Lb/f/b/g/a;->r0:I

    if-nez v7, :cond_c

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :goto_6
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_8

    :cond_c
    if-ne v7, v1, :cond_d

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :goto_7
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_8

    :cond_d
    if-ne v7, v6, :cond_e

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_6

    :cond_e
    if-ne v7, v5, :cond_f

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_7

    :cond_f
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    iget v0, p0, Lb/f/b/g/a;->t0:I

    add-int/2addr v2, v0

    iget v0, p0, Lb/f/b/g/a;->r0:I

    if-eqz v0, :cond_12

    if-ne v0, v1, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(II)V

    goto :goto_a

    :cond_12
    :goto_9
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(II)V

    :goto_a
    iput-boolean v1, p0, Lb/f/b/g/a;->u0:Z

    return v1

    :cond_13
    return v0
.end method

.method public t()I
    .locals 3

    iget v0, p0, Lb/f/b/g/a;->r0:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[Barrier] "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/f/b/g/f;->q0:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lb/f/b/g/f;->p0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-static {v0, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-static {v0, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
