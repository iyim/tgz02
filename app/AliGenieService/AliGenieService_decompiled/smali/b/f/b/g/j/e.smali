.class public Lb/f/b/g/j/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lb/f/b/g/c;

.field public b:Z

.field public c:Z

.field public d:Lb/f/b/g/c;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lb/f/b/g/j/b$b;

.field public g:Lb/f/b/g/j/b$a;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/f/b/g/j/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/f/b/g/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/f/b/g/j/e;->b:Z

    iput-boolean v0, p0, Lb/f/b/g/j/e;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/b/g/j/e;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/b/g/j/e;->f:Lb/f/b/g/j/b$b;

    new-instance v0, Lb/f/b/g/j/b$a;

    invoke-direct {v0}, Lb/f/b/g/j/b$a;-><init>()V

    iput-object v0, p0, Lb/f/b/g/j/e;->g:Lb/f/b/g/j/b$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/b/g/j/e;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iput-object p1, p0, Lb/f/b/g/j/e;->d:Lb/f/b/g/c;

    return-void
.end method


# virtual methods
.method public final a(Lb/f/b/g/c;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lb/f/b/g/j/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v3, :cond_b

    iget-object v9, v0, Lb/f/b/g/j/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/f/b/g/j/k;

    .line 11
    iget-object v10, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    instance-of v11, v10, Lb/f/b/g/j/c;

    if-eqz v11, :cond_0

    check-cast v10, Lb/f/b/g/j/c;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    if-eq v10, v2, :cond_2

    goto/16 :goto_6

    :cond_0
    if-nez v2, :cond_1

    instance-of v10, v10, Lb/f/b/g/j/j;

    if-nez v10, :cond_2

    goto/16 :goto_6

    :cond_1
    instance-of v10, v10, Lb/f/b/g/j/l;

    if-nez v10, :cond_2

    goto/16 :goto_6

    :cond_2
    if-nez v2, :cond_3

    iget-object v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    goto :goto_1

    :cond_3
    iget-object v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    :goto_1
    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-nez v2, :cond_4

    iget-object v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    goto :goto_2

    :cond_4
    iget-object v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    :goto_2
    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v12, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v12, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    iget-object v12, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d()J

    move-result-wide v12

    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    iget-object v10, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v10, v4, v5}, Lb/f/b/g/j/k;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v10

    iget-object v14, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v14, v4, v5}, Lb/f/b/g/j/k;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v14

    sub-long/2addr v10, v12

    iget-object v4, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    neg-int v5, v4

    int-to-long v0, v5

    cmp-long v0, v10, v0

    if-ltz v0, :cond_5

    int-to-long v0, v4

    add-long/2addr v10, v0

    :cond_5
    neg-long v0, v14

    sub-long/2addr v0, v12

    iget-object v4, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    cmp-long v14, v0, v4

    if-ltz v14, :cond_6

    sub-long/2addr v0, v4

    :cond_6
    iget-object v4, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    const/high16 v14, 0x3f800000    # 1.0f

    if-lez v5, :cond_7

    long-to-float v0, v0

    div-float/2addr v0, v4

    long-to-float v1, v10

    sub-float v5, v14, v4

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_3

    :cond_7
    const-wide/16 v0, 0x0

    :goto_3
    long-to-float v0, v0

    mul-float v1, v0, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-long v10, v1

    sub-float/2addr v14, v4

    mul-float/2addr v14, v0

    add-float/2addr v14, v5

    float-to-long v0, v14

    add-long/2addr v10, v12

    add-long/2addr v10, v0

    iget-object v0, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    int-to-long v4, v1

    add-long/2addr v4, v10

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    goto :goto_6

    :cond_8
    iget-object v0, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-eqz v10, :cond_9

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    int-to-long v4, v1

    invoke-virtual {v9, v0, v4, v5}, Lb/f/b/g/j/k;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v0

    iget-object v4, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    int-to-long v4, v4

    add-long/2addr v4, v12

    goto :goto_4

    :cond_9
    if-eqz v11, :cond_a

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    int-to-long v4, v1

    invoke-virtual {v9, v0, v4, v5}, Lb/f/b/g/j/k;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v0

    iget-object v4, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    neg-int v4, v4

    int-to-long v4, v4

    add-long/2addr v4, v12

    neg-long v0, v0

    :goto_4
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_5

    :cond_a
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    int-to-long v4, v1

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d()J

    move-result-wide v0

    add-long/2addr v0, v4

    iget-object v4, v9, Lb/f/b/g/j/k;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    :goto_5
    move-wide v4, v0

    .line 12
    :goto_6
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_b
    long-to-int v0, v7

    return v0
.end method

.method public a()V
    .locals 7

    iget-object v0, p0, Lb/f/b/g/j/e;->e:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lb/f/b/g/j/e;->d:Lb/f/b/g/c;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    invoke-virtual {v1}, Lb/f/b/g/j/j;->c()V

    iget-object v1, p0, Lb/f/b/g/j/e;->d:Lb/f/b/g/c;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    invoke-virtual {v1}, Lb/f/b/g/j/l;->c()V

    iget-object v1, p0, Lb/f/b/g/j/e;->d:Lb/f/b/g/c;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb/f/b/g/j/e;->d:Lb/f/b/g/c;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb/f/b/g/j/e;->d:Lb/f/b/g/c;

    iget-object v1, v1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v6, v3, Lb/f/b/g/d;

    if-eqz v6, :cond_1

    new-instance v4, Lb/f/b/g/j/h;

    invoke-direct {v4, v3}, Lb/f/b/g/j/h;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b:Lb/f/b/g/j/c;

    if-nez v6, :cond_2

    new-instance v6, Lb/f/b/g/j/c;

    invoke-direct {v6, v3, v5}, Lb/f/b/g/j/c;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    iput-object v6, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b:Lb/f/b/g/j/c;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b:Lb/f/b/g/j/c;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c:Lb/f/b/g/j/c;

    if-nez v5, :cond_5

    new-instance v5, Lb/f/b/g/j/c;

    invoke-direct {v5, v3, v4}, Lb/f/b/g/j/c;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    iput-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c:Lb/f/b/g/j/c;

    :cond_5
    if-nez v2, :cond_6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c:Lb/f/b/g/j/c;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v4, v3, Lb/f/b/g/f;

    if-eqz v4, :cond_0

    new-instance v4, Lb/f/b/g/j/i;

    invoke-direct {v4, v3}, Lb/f/b/g/j/i;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :goto_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->c()V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, p0, Lb/f/b/g/j/e;->d:Lb/f/b/g/c;

    if-ne v2, v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a()V

    goto :goto_5

    .line 10
    :cond_c
    iget-object v0, p0, Lb/f/b/g/j/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput v5, Lb/f/b/g/j/k;->d:I

    iget-object v0, p0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v1, p0, Lb/f/b/g/j/e;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v5, v1}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    iget-object v0, p0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v1, p0, Lb/f/b/g/j/e;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v4, v1}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    iput-boolean v5, p0, Lb/f/b/g/j/e;->b:Z

    return-void
.end method

.method public final a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    iget-object v0, p0, Lb/f/b/g/j/e;->g:Lb/f/b/g/j/b$a;

    iput-object p2, v0, Lb/f/b/g/j/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p4, v0, Lb/f/b/g/j/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput p3, v0, Lb/f/b/g/j/b$a;->c:I

    iput p5, v0, Lb/f/b/g/j/b$a;->d:I

    iget-object p2, p0, Lb/f/b/g/j/e;->f:Lb/f/b/g/j/b$b;

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Lb/f/b/g/j/b$a;)V

    iget-object p2, p0, Lb/f/b/g/j/e;->g:Lb/f/b/g/j/b$a;

    iget p2, p2, Lb/f/b/g/j/b$a;->e:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    iget-object p2, p0, Lb/f/b/g/j/e;->g:Lb/f/b/g/j/b$a;

    iget p2, p2, Lb/f/b/g/j/b$a;->f:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    iget-object p2, p0, Lb/f/b/g/j/e;->g:Lb/f/b/g/j/b$a;

    iget-boolean p3, p2, Lb/f/b/g/j/b$a;->h:Z

    .line 13
    iput-boolean p3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Z

    .line 14
    iget p2, p2, Lb/f/b/g/j/b$a;->g:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;",
            "II",
            "Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;",
            "Ljava/util/ArrayList<",
            "Lb/f/b/g/j/k;",
            ">;",
            "Lb/f/b/g/j/k;",
            ")V"
        }
    .end annotation

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->c:Lb/f/b/g/j/k;

    if-nez v0, :cond_c

    iget-object v0, p0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    if-eq p1, v1, :cond_c

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p6, :cond_1

    new-instance p6, Lb/f/b/g/j/k;

    invoke-direct {p6, p1, p3}, Lb/f/b/g/j/k;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p6, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->c:Lb/f/b/g/j/k;

    .line 1
    iget-object p3, p6, Lb/f/b/g/j/k;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p3, p3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/g/j/d;

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_0

    :cond_3
    iget-object p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p3, p3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/g/j/d;

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    instance-of v0, p1, Lb/f/b/g/j/l;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lb/f/b/g/j/l;

    iget-object v0, v0, Lb/f/b/g/j/l;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/g/j/d;

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_2

    :cond_7
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v1, p4, :cond_8

    iput-boolean p3, p6, Lb/f/b/g/j/k;->a:Z

    :cond_8
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_3

    :cond_9
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v1, p4, :cond_a

    iput-boolean p3, p6, Lb/f/b/g/j/k;->a:Z

    :cond_a
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_4

    :cond_b
    if-ne p2, p3, :cond_c

    instance-of p3, p1, Lb/f/b/g/j/l;

    if-eqz p3, :cond_c

    check-cast p1, Lb/f/b/g/j/l;

    iget-object p1, p1, Lb/f/b/g/j/l;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;",
            "I",
            "Ljava/util/ArrayList<",
            "Lb/f/b/g/j/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/g/j/d;

    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v6, 0x0

    iget-object v7, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v5, 0x0

    iget-object v6, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/g/j/d;

    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_4

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v6, 0x1

    iget-object v7, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_3

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v5, 0x1

    iget-object v6, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Lb/f/b/g/j/l;

    iget-object p1, p1, Lb/f/b/g/j/l;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/g/j/d;

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Lb/f/b/g/j/k;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final a(Lb/f/b/g/c;)Z
    .locals 13

    iget-object v0, p1, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v2

    const/4 v9, 0x1

    aget-object v3, v3, v9

    .line 3
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 4
    :goto_1
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    goto :goto_0

    :cond_1
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v10

    const/4 v6, 0x2

    if-gez v5, :cond_2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_2

    iput v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    :cond_2
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_3

    iput v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    .line 5
    :cond_3
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    const/4 v7, 0x3

    if-lez v5, :cond_9

    .line 6
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_5

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v5, :cond_4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_5

    :cond_4
    iput v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    goto :goto_3

    :cond_5
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_7

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_6

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_7

    :cond_6
    :goto_2
    iput v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    goto :goto_3

    :cond_7
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_9

    if-ne v3, v5, :cond_9

    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-nez v5, :cond_8

    iput v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    :cond_8
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_b

    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-ne v5, v9, :cond_b

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_a

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_b

    :cond_a
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_b
    move-object v5, v4

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_d

    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-ne v4, v9, :cond_d

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_c

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_d

    :cond_c
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_d
    move-object v8, v3

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iput-object v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iput-object v8, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_e

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_e

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_f

    :cond_e
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v3, :cond_24

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v3, :cond_24

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v3, :cond_f

    goto/16 :goto_b

    :cond_f
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/high16 v11, 0x3f000000    # 0.5f

    if-ne v5, v3, :cond_17

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v3, :cond_10

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v3, :cond_17

    :cond_10
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-ne v3, v7, :cond_12

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_11

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_11
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v8

    int-to-float v2, v8

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    :goto_4
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    goto/16 :goto_e

    :cond_12
    if-ne v3, v9, :cond_13

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v1

    :goto_5
    iput v1, v2, Lb/f/b/g/j/f;->m:I

    goto/16 :goto_0

    :cond_13
    if-ne v3, v6, :cond_15

    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v2

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v12, :cond_14

    aget-object v3, v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_17

    :cond_14
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:F

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_7

    :cond_15
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v3, v2

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_16

    aget-object v3, v3, v9

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    :cond_16
    :goto_6
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_7
    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    goto/16 :goto_e

    :cond_17
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v3, :cond_1f

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_18

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_1f

    :cond_18
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-ne v3, v7, :cond_1b

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_19

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_19
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v6

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    .line 7
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    div-float v2, v10, v2

    :cond_1a
    int-to-float v3, v6

    :goto_8
    mul-float/2addr v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    goto/16 :goto_4

    :cond_1b
    if-ne v3, v9, :cond_1c

    const/4 v6, 0x0

    .line 8
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto/16 :goto_a

    :cond_1c
    if-ne v3, v6, :cond_1e

    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v9

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v7, :cond_1d

    aget-object v3, v3, v9

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1f

    :cond_1d
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v6

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v8, v2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto/16 :goto_d

    :cond_1e
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v3, v6

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_16

    aget-object v3, v3, v7

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1f

    goto :goto_6

    :cond_1f
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_0

    if-ne v8, v3, :cond_0

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-eq v3, v9, :cond_23

    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-ne v4, v9, :cond_20

    goto :goto_9

    :cond_20
    if-ne v4, v6, :cond_0

    if-ne v3, v6, :cond_0

    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_21

    aget-object v2, v3, v2

    if-ne v2, v5, :cond_0

    :cond_21
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v2, v9

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_22

    aget-object v2, v2, v9

    if-ne v2, v4, :cond_0

    :cond_22
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:F

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v11

    float-to-int v6, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    int-to-float v2, v2

    goto :goto_8

    :cond_23
    :goto_9
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v3

    iput v3, v2, Lb/f/b/g/j/f;->m:I

    :goto_a
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v1

    goto/16 :goto_5

    :cond_24
    :goto_b
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_25

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v2

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:I

    sub-int/2addr v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v6, v2

    move-object v5, v3

    goto :goto_c

    :cond_25
    move v6, v2

    :goto_c
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v3, :cond_26

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:I

    sub-int/2addr v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v8, v2

    move-object v7, v3

    goto :goto_d

    :cond_26
    move-object v7, v8

    move v8, v2

    :goto_d
    move-object v3, p0

    move-object v4, v1

    :goto_e
    invoke-virtual/range {v3 .. v8}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Lb/f/b/g/j/f;->a(I)V

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lb/f/b/g/j/f;->a(I)V

    goto/16 :goto_1

    :cond_27
    return v2
.end method

.method public b()V
    .locals 11

    iget-object v0, p0, Lb/f/b/g/j/e;->a:Lb/f/b/g/c;

    iget-object v0, v0, Lb/f/b/g/i;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget-object v10, v2, v9

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v5, :cond_3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v5, :cond_4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    :cond_5
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget v8, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v7

    move-object v6, v7

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :goto_3
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    goto :goto_6

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v2, :cond_7

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v3

    :goto_4
    iput v3, v2, Lb/f/b/g/j/f;->m:I

    goto :goto_6

    :cond_7
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v3

    :goto_5
    invoke-virtual {v2, v3}, Lb/f/b/g/j/f;->a(I)V

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_a

    if-eqz v2, :cond_a

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lb/f/b/g/j/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v2, :cond_9

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v3

    goto :goto_4

    :cond_9
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v3

    goto :goto_5

    :cond_a
    :goto_6
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v2, v2, Lb/f/b/g/j/l;->l:Lb/f/b/g/j/f;

    if-eqz v2, :cond_0

    .line 1
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    .line 2
    invoke-virtual {v2, v1}, Lb/f/b/g/j/f;->a(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
