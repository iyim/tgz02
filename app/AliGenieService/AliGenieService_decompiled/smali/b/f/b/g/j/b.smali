.class public Lb/f/b/g/j/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/f/b/g/j/b$a;,
        Lb/f/b/g/j/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/f/b/g/j/b$a;

.field public c:Lb/f/b/g/c;


# direct methods
.method public constructor <init>(Lb/f/b/g/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/b/g/j/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lb/f/b/g/j/b$a;

    invoke-direct {v0}, Lb/f/b/g/j/b$a;-><init>()V

    iput-object v0, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    iput-object p1, p0, Lb/f/b/g/j/b;->c:Lb/f/b/g/c;

    return-void
.end method


# virtual methods
.method public a(Lb/f/b/g/c;IIIII)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    .line 9
    iget-object v5, v1, Lb/f/b/g/c;->s0:Lb/f/b/g/j/b$b;

    .line 10
    iget-object v6, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v8

    const/16 v9, 0x80

    invoke-static {v2, v9}, Lb/f/b/g/g;->a(II)Z

    move-result v9

    const/16 v10, 0x40

    if-nez v9, :cond_1

    invoke-static {v2, v10}, Lb/f/b/g/g;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v13, 0x0

    if-eqz v2, :cond_a

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v6, :cond_a

    iget-object v15, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v12, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v11, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    .line 11
    iget v10, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    cmpl-float v10, v10, v13

    if-lez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    .line 12
    :goto_5
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v10, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    goto :goto_6

    :cond_6
    instance-of v10, v15, Lb/f/b/g/h;

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0x40

    goto :goto_2

    :cond_9
    :goto_6
    const/4 v2, 0x0

    :cond_a
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v10, :cond_b

    if-eq v4, v10, :cond_c

    :cond_b
    if-eqz v9, :cond_d

    :cond_c
    const/4 v11, 0x1

    goto :goto_7

    :cond_d
    const/4 v11, 0x0

    :goto_7
    and-int/2addr v2, v11

    if-eqz v2, :cond_2c

    .line 13
    iget-object v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:[I

    const/4 v14, 0x0

    aget v11, v11, v14

    move/from16 v14, p4

    .line 14
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 15
    iget-object v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move/from16 v15, p6

    .line 16
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ne v3, v10, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v15

    if-eq v15, v11, :cond_e

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    invoke-virtual/range {p1 .. p1}, Lb/f/b/g/c;->t()V

    :cond_e
    if-ne v4, v10, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v11

    if-eq v11, v14, :cond_f

    invoke-virtual {v1, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    invoke-virtual/range {p1 .. p1}, Lb/f/b/g/c;->t()V

    :cond_f
    if-ne v3, v10, :cond_25

    if-ne v4, v10, :cond_25

    .line 17
    iget-object v11, v1, Lb/f/b/g/c;->r0:Lb/f/b/g/j/e;

    const/4 v14, 0x1

    and-int/2addr v9, v14

    .line 18
    iget-boolean v14, v11, Lb/f/b/g/j/e;->b:Z

    if-nez v14, :cond_11

    iget-boolean v14, v11, Lb/f/b/g/j/e;->c:Z

    if-eqz v14, :cond_10

    goto :goto_8

    :cond_10
    const/4 v13, 0x0

    goto :goto_a

    :cond_11
    :goto_8
    iget-object v14, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v14, v14, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c()V

    const/4 v13, 0x0

    iput-boolean v13, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    iget-object v12, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    invoke-virtual {v12}, Lb/f/b/g/j/j;->f()V

    iget-object v12, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    invoke-virtual {v12}, Lb/f/b/g/j/l;->f()V

    const/4 v13, 0x0

    goto :goto_9

    :cond_12
    const/4 v13, 0x0

    iget-object v12, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c()V

    iget-object v12, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iput-boolean v13, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    invoke-virtual {v12}, Lb/f/b/g/j/j;->f()V

    iget-object v12, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    invoke-virtual {v12}, Lb/f/b/g/j/l;->f()V

    iput-boolean v13, v11, Lb/f/b/g/j/e;->c:Z

    :goto_a
    iget-object v12, v11, Lb/f/b/g/j/e;->d:Lb/f/b/g/c;

    invoke-virtual {v11, v12}, Lb/f/b/g/j/e;->a(Lb/f/b/g/c;)Z

    iget-object v12, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    .line 19
    iput v13, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 20
    iput v13, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    .line 21
    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    iget-object v13, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    iget-boolean v14, v11, Lb/f/b/g/j/e;->b:Z

    if-eqz v14, :cond_13

    invoke-virtual {v11}, Lb/f/b/g/j/e;->a()V

    :cond_13
    iget-object v14, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v14

    iget-object v15, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    move-result v15

    iget-object v10, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    iget-object v10, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v15}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    invoke-virtual {v11}, Lb/f/b/g/j/e;->b()V

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v10, :cond_15

    if-ne v13, v10, :cond_14

    goto :goto_b

    :cond_14
    move/from16 v18, v2

    move-object/from16 v19, v5

    goto :goto_d

    :cond_15
    :goto_b
    if-eqz v9, :cond_17

    iget-object v10, v11, Lb/f/b/g/j/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e()Z

    move-result v18

    if-nez v18, :cond_16

    const/4 v9, 0x0

    :cond_17
    if-eqz v9, :cond_18

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v10, :cond_18

    iget-object v10, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    move/from16 v18, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v10, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object v2, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    move-object/from16 v19, v5

    const/4 v10, 0x0

    invoke-virtual {v11, v2, v10}, Lb/f/b/g/j/e;->a(Lb/f/b/g/c;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    iget-object v2, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v2

    invoke-virtual {v5, v2}, Lb/f/b/g/j/f;->a(I)V

    goto :goto_c

    :cond_18
    move/from16 v18, v2

    move-object/from16 v19, v5

    :goto_c
    if-eqz v9, :cond_19

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v2, :cond_19

    iget-object v2, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object v2, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    const/4 v5, 0x1

    invoke-virtual {v11, v2, v5}, Lb/f/b/g/j/e;->a(Lb/f/b/g/c;I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    iget-object v2, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    invoke-virtual {v5, v2}, Lb/f/b/g/j/f;->a(I)V

    :cond_19
    :goto_d
    iget-object v2, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v9, v2, v5

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v10, :cond_1b

    aget-object v2, v2, v5

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v2, 0x0

    goto :goto_f

    :cond_1b
    :goto_e
    iget-object v2, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v2

    add-int/2addr v2, v14

    iget-object v5, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    iget-object v5, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    sub-int/2addr v2, v14

    invoke-virtual {v5, v2}, Lb/f/b/g/j/f;->a(I)V

    invoke-virtual {v11}, Lb/f/b/g/j/e;->b()V

    iget-object v2, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v9, v2, v5

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v10, :cond_1c

    aget-object v2, v2, v5

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_1d

    :cond_1c
    iget-object v2, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    add-int/2addr v2, v15

    iget-object v5, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    iget-object v5, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    sub-int/2addr v2, v15

    invoke-virtual {v5, v2}, Lb/f/b/g/j/f;->a(I)V

    :cond_1d
    invoke-virtual {v11}, Lb/f/b/g/j/e;->b()V

    const/4 v2, 0x1

    :goto_f
    iget-object v5, v11, Lb/f/b/g/j/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v14, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    if-ne v10, v14, :cond_1e

    iget-boolean v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    if-nez v10, :cond_1e

    goto :goto_10

    :cond_1e
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b()V

    goto :goto_10

    :cond_1f
    iget-object v5, v11, Lb/f/b/g/j/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-nez v2, :cond_21

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v14, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    if-ne v10, v14, :cond_21

    goto :goto_11

    :cond_21
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v10, :cond_22

    goto :goto_12

    :cond_22
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v10, :cond_23

    instance-of v10, v9, Lb/f/b/g/j/h;

    if-nez v10, :cond_23

    goto :goto_12

    :cond_23
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v10, :cond_20

    instance-of v10, v9, Lb/f/b/g/j/c;

    if-nez v10, :cond_20

    instance-of v9, v9, Lb/f/b/g/j/h;

    if-nez v9, :cond_20

    :goto_12
    const/4 v2, 0x0

    goto :goto_13

    :cond_24
    const/4 v2, 0x1

    :goto_13
    iget-object v5, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v5, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object v5, v11, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v5, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    move v11, v2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x2

    goto/16 :goto_17

    :cond_25
    move/from16 v18, v2

    move-object/from16 v19, v5

    .line 22
    iget-object v2, v1, Lb/f/b/g/c;->r0:Lb/f/b/g/j/e;

    .line 23
    iget-boolean v5, v2, Lb/f/b/g/j/e;->b:Z

    if-eqz v5, :cond_27

    iget-object v5, v2, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v5, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c()V

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v13, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iput-boolean v11, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    iput-boolean v11, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    invoke-virtual {v12}, Lb/f/b/g/j/j;->f()V

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iput-boolean v11, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    invoke-virtual {v10}, Lb/f/b/g/j/l;->f()V

    goto :goto_14

    :cond_26
    const/4 v11, 0x0

    iget-object v5, v2, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c()V

    iget-object v5, v2, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iput-boolean v11, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v10, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    iput-boolean v11, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    invoke-virtual {v5}, Lb/f/b/g/j/j;->f()V

    iget-object v5, v2, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v10, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    iput-boolean v11, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    invoke-virtual {v5}, Lb/f/b/g/j/l;->f()V

    invoke-virtual {v2}, Lb/f/b/g/j/e;->a()V

    goto :goto_15

    :cond_27
    const/4 v11, 0x0

    :goto_15
    iget-object v5, v2, Lb/f/b/g/j/e;->d:Lb/f/b/g/c;

    invoke-virtual {v2, v5}, Lb/f/b/g/j/e;->a(Lb/f/b/g/c;)Z

    iget-object v5, v2, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    .line 24
    iput v11, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 25
    iput v11, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    .line 26
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    iget-object v2, v2, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v3, v2, :cond_28

    .line 27
    invoke-virtual {v1, v9, v11}, Lb/f/b/g/c;->a(ZI)Z

    move-result v5

    const/4 v10, 0x1

    and-int/lit8 v12, v5, 0x1

    move v5, v10

    goto :goto_16

    :cond_28
    const/4 v10, 0x1

    move v12, v10

    const/4 v5, 0x0

    :goto_16
    if-ne v4, v2, :cond_29

    invoke-virtual {v1, v9, v10}, Lb/f/b/g/c;->a(ZI)Z

    move-result v9

    and-int/2addr v9, v12

    add-int/lit8 v5, v5, 0x1

    move v11, v9

    goto :goto_17

    :cond_29
    move v11, v12

    :goto_17
    if-eqz v11, :cond_2d

    if-ne v3, v2, :cond_2a

    const/4 v3, 0x1

    goto :goto_18

    :cond_2a
    const/4 v3, 0x0

    :goto_18
    if-ne v4, v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_19

    :cond_2b
    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v1, v3, v2}, Lb/f/b/g/c;->a(ZZ)V

    goto :goto_1a

    :cond_2c
    move/from16 v18, v2

    move-object/from16 v19, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :cond_2d
    :goto_1a
    if-eqz v11, :cond_2e

    const/4 v2, 0x2

    if-eq v5, v2, :cond_5b

    .line 28
    :cond_2e
    iget v2, v1, Lb/f/b/g/c;->B0:I

    if-lez v6, :cond_3e

    .line 29
    iget-object v3, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Lb/f/b/g/c;->m(I)Z

    move-result v4

    .line 30
    iget-object v5, v1, Lb/f/b/g/c;->s0:Lb/f/b/g/j/b$b;

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v3, :cond_3b

    .line 31
    iget-object v10, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v11, v10, Lb/f/b/g/d;

    if-eqz v11, :cond_2f

    goto :goto_1c

    :cond_2f
    instance-of v11, v10, Lb/f/b/g/a;

    if-eqz v11, :cond_30

    goto :goto_1c

    .line 32
    :cond_30
    iget-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Z

    if-eqz v11, :cond_31

    goto :goto_1c

    :cond_31
    if-eqz v4, :cond_32

    .line 33
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    if-eqz v11, :cond_32

    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    if-eqz v12, :cond_32

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v11, :cond_32

    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v11, :cond_32

    :goto_1c
    const/4 v13, 0x0

    goto/16 :goto_21

    :cond_32
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v15, :cond_33

    iget v14, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-eq v14, v12, :cond_33

    if-ne v13, v15, :cond_33

    iget v14, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-eq v14, v12, :cond_33

    move v14, v12

    goto :goto_1d

    :cond_33
    const/4 v14, 0x0

    :goto_1d
    if-nez v14, :cond_38

    invoke-virtual {v1, v12}, Lb/f/b/g/c;->m(I)Z

    move-result v15

    if-eqz v15, :cond_38

    instance-of v12, v10, Lb/f/b/g/h;

    if-nez v12, :cond_38

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_34

    iget v15, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-nez v15, :cond_34

    if-eq v13, v12, :cond_34

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Z

    move-result v12

    if-nez v12, :cond_34

    const/4 v14, 0x1

    :cond_34
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v12, :cond_35

    iget v15, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-nez v15, :cond_35

    if-eq v11, v12, :cond_35

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Z

    move-result v12

    if-nez v12, :cond_35

    const/4 v12, 0x1

    goto :goto_1e

    :cond_35
    move v12, v14

    :goto_1e
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v14, :cond_37

    if-ne v13, v14, :cond_36

    goto :goto_1f

    :cond_36
    const/4 v13, 0x0

    goto :goto_20

    :cond_37
    :goto_1f
    iget v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_39

    const/4 v12, 0x1

    goto :goto_20

    :cond_38
    const/4 v13, 0x0

    move v12, v14

    :cond_39
    :goto_20
    if-eqz v12, :cond_3a

    goto :goto_21

    :cond_3a
    sget v11, Lb/f/b/g/j/b$a;->k:I

    invoke-virtual {v0, v5, v10, v11}, Lb/f/b/g/j/b;->a(Lb/f/b/g/j/b$b;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    :goto_21
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1b

    :cond_3b
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 34
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_3d

    iget-object v9, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lb/f/c/h;

    if-eqz v10, :cond_3c

    check-cast v9, Lb/f/c/h;

    invoke-virtual {v9}, Lb/f/c/h;->a()V

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_3d
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3e

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_3e

    iget-object v9, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/f/c/b;

    invoke-virtual {v9}, Lb/f/c/b;->c()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 39
    :cond_3e
    invoke-virtual/range {p0 .. p1}, Lb/f/b/g/j/b;->a(Lb/f/b/g/c;)V

    iget-object v3, v0, Lb/f/b/g/j/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v6, :cond_3f

    invoke-virtual {v0, v1, v7, v8}, Lb/f/b/g/j/b;->a(Lb/f/b/g/c;II)V

    :cond_3f
    if-lez v3, :cond_5a

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_40

    const/4 v4, 0x1

    goto :goto_24

    :cond_40
    const/4 v4, 0x0

    :goto_24
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_41

    const/4 v5, 0x1

    goto :goto_25

    :cond_41
    const/4 v5, 0x0

    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v6

    iget-object v9, v0, Lb/f/b/g/j/b;->c:Lb/f/b/g/c;

    .line 40
    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    .line 41
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v9

    iget-object v10, v0, Lb/f/b/g/j/b;->c:Lb/f/b/g/c;

    .line 42
    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    .line 43
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v10, v9

    const/4 v11, 0x0

    move v9, v6

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v3, :cond_47

    iget-object v12, v0, Lb/f/b/g/j/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v13, v12, Lb/f/b/g/h;

    if-nez v13, :cond_42

    move/from16 v16, v2

    move-object/from16 v15, v19

    goto :goto_28

    :cond_42
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v13

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v14

    move/from16 v16, v2

    move-object/from16 v15, v19

    const/4 v2, 0x1

    invoke-virtual {v0, v15, v12, v2}, Lb/f/b/g/j/b;->a(Lb/f/b/g/j/b$b;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v17

    or-int v2, v11, v17

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v11

    move/from16 p2, v2

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    if-eq v11, v13, :cond_44

    invoke-virtual {v12, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    if-eqz v4, :cond_43

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    move-result v11

    if-le v11, v9, :cond_43

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    move-result v11

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v13

    add-int/2addr v13, v11

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_43
    const/4 v11, 0x1

    goto :goto_27

    :cond_44
    move/from16 v11, p2

    :goto_27
    if-eq v2, v14, :cond_46

    invoke-virtual {v12, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    if-eqz v5, :cond_45

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d()I

    move-result v2

    if-le v2, v10, :cond_45

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d()I

    move-result v2

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v10, v2

    :cond_45
    const/4 v11, 0x1

    :cond_46
    check-cast v12, Lb/f/b/g/h;

    .line 44
    iget-boolean v2, v12, Lb/f/b/g/h;->r0:Z

    or-int/2addr v2, v11

    move v11, v2

    :goto_28
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v19, v15

    move/from16 v2, v16

    goto/16 :goto_26

    :cond_47
    move/from16 v16, v2

    move-object/from16 v15, v19

    const/4 v2, 0x0

    :goto_29
    const/4 v14, 0x2

    if-ge v2, v14, :cond_56

    move v12, v11

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v3, :cond_54

    .line 45
    iget-object v11, v0, Lb/f/b/g/j/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v13, v11, Lb/f/b/g/e;

    if-eqz v13, :cond_48

    instance-of v13, v11, Lb/f/b/g/h;

    if-eqz v13, :cond_4c

    :cond_48
    instance-of v13, v11, Lb/f/b/g/d;

    if-eqz v13, :cond_49

    goto :goto_2b

    .line 46
    :cond_49
    iget v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_4a

    goto :goto_2b

    :cond_4a
    if-eqz v18, :cond_4b

    .line 47
    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v13, :cond_4b

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v13, :cond_4b

    goto :goto_2b

    :cond_4b
    instance-of v13, v11, Lb/f/b/g/h;

    if-eqz v13, :cond_4d

    :cond_4c
    :goto_2b
    move/from16 p2, v3

    goto/16 :goto_2e

    :cond_4d
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v13

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v14

    move/from16 p2, v3

    .line 48
    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    const/4 v1, 0x1

    if-ne v2, v1, :cond_4e

    const/4 v1, 0x2

    .line 49
    :cond_4e
    invoke-virtual {v0, v15, v11, v1}, Lb/f/b/g/j/b;->a(Lb/f/b/g/j/b$b;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v1

    or-int/2addr v12, v1

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v1

    move/from16 p3, v12

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v12

    if-eq v1, v13, :cond_50

    invoke-virtual {v11, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    if-eqz v4, :cond_4f

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    move-result v1

    if-le v1, v9, :cond_4f

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    move-result v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v11, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v13

    add-int/2addr v13, v1

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_4f
    const/4 v1, 0x1

    goto :goto_2c

    :cond_50
    move/from16 v1, p3

    :goto_2c
    if-eq v12, v14, :cond_52

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    if-eqz v5, :cond_51

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d()I

    move-result v1

    if-le v1, v10, :cond_51

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d()I

    move-result v1

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v12

    add-int/2addr v12, v1

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_51
    const/4 v12, 0x1

    goto :goto_2d

    :cond_52
    move v12, v1

    .line 50
    :goto_2d
    iget-boolean v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Z

    if-eqz v1, :cond_53

    .line 51
    iget v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-eq v3, v1, :cond_53

    const/4 v12, 0x1

    :cond_53
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move/from16 v3, p2

    const/4 v14, 0x2

    goto/16 :goto_2a

    :cond_54
    move/from16 p2, v3

    move-object/from16 v1, p1

    const/4 v3, 0x1

    if-eqz v12, :cond_55

    .line 52
    invoke-virtual {v0, v1, v7, v8}, Lb/f/b/g/j/b;->a(Lb/f/b/g/c;II)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, p2

    const/4 v11, 0x0

    goto/16 :goto_29

    :cond_55
    move v11, v12

    goto :goto_2f

    :cond_56
    const/4 v3, 0x1

    :goto_2f
    if-eqz v11, :cond_59

    invoke-virtual {v0, v1, v7, v8}, Lb/f/b/g/j/b;->a(Lb/f/b/g/c;II)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v2

    if-ge v2, v9, :cond_57

    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    move v12, v3

    goto :goto_30

    :cond_57
    const/4 v12, 0x0

    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    if-ge v2, v10, :cond_58

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    move v12, v3

    :cond_58
    if-eqz v12, :cond_59

    invoke-virtual {v0, v1, v7, v8}, Lb/f/b/g/j/b;->a(Lb/f/b/g/c;II)V

    :cond_59
    move/from16 v2, v16

    :cond_5a
    invoke-virtual {v1, v2}, Lb/f/b/g/c;->n(I)V

    :cond_5b
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public a(Lb/f/b/g/c;)V
    .locals 5

    iget-object v0, p0, Lb/f/b/g/j/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lb/f/b/g/j/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lb/f/b/g/c;->t()V

    return-void
.end method

.method public final a(Lb/f/b/g/c;II)V
    .locals 3

    .line 3
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    .line 4
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k(I)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j(I)V

    .line 6
    iput p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge p2, v2, :cond_0

    iput v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 7
    :cond_0
    iput p3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget p3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    if-ge p2, p3, :cond_1

    iput p3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    .line 8
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k(I)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j(I)V

    iget-object p1, p0, Lb/f/b/g/j/b;->c:Lb/f/b/g/c;

    invoke-virtual {p1}, Lb/f/b/g/c;->s()V

    return-void
.end method

.method public final a(Lb/f/b/g/j/b$b;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 4

    iget-object v0, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v1

    iput v1, v0, Lb/f/b/g/j/b$a;->c:I

    iget-object v0, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v1

    iput v1, v0, Lb/f/b/g/j/b$a;->d:I

    iget-object v0, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/f/b/g/j/b$a;->i:Z

    iput p3, v0, Lb/f/b/g/j/b$a;->j:I

    iget-object p3, v0, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    if-ne p3, v0, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iget-object v0, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    iget-object v0, v0, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_2

    move p3, v2

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-eqz v0, :cond_3

    iget v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    const/4 v3, 0x4

    if-eqz p3, :cond_4

    iget-object p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    aget p3, p3, v1

    if-ne p3, v3, :cond_4

    iget-object p3, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v1, p3, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4
    if-eqz v0, :cond_5

    iget-object p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    aget p3, p3, v2

    if-ne p3, v3, :cond_5

    iget-object p3, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    iget-object p3, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Lb/f/b/g/j/b$a;)V

    iget-object p1, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    iget p1, p1, Lb/f/b/g/j/b$a;->e:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    iget-object p1, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    iget p1, p1, Lb/f/b/g/j/b$a;->f:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    iget-object p1, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    iget-boolean p3, p1, Lb/f/b/g/j/b$a;->h:Z

    .line 1
    iput-boolean p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Z

    .line 2
    iget p1, p1, Lb/f/b/g/j/b$a;->g:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    iget-object p1, p0, Lb/f/b/g/j/b;->b:Lb/f/b/g/j/b$a;

    sget p2, Lb/f/b/g/j/b$a;->k:I

    iput p2, p1, Lb/f/b/g/j/b$a;->j:I

    iget-boolean p1, p1, Lb/f/b/g/j/b$a;->i:Z

    return p1
.end method
