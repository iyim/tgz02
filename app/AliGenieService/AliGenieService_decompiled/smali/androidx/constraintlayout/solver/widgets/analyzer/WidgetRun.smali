.class public abstract Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/f/b/g/j/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public c:Lb/f/b/g/j/k;

.field public d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public e:Lb/f/b/g/j/f;

.field public f:I

.field public g:Z

.field public h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

.field public i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

.field public j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/f/b/g/j/f;

    invoke-direct {v0, p0}, Lb/f/b/g/j/f;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->NONE:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:I

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    if-eq p2, p1, :cond_3

    :goto_0
    move p1, p2

    :cond_3
    return p1
.end method

.method public final a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .locals 3

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v0, p1, Lb/f/b/g/j/l;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_2

    :cond_2
    iget-object p1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    goto :goto_0

    :cond_3
    iget-object p1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    :goto_0
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_2

    :cond_4
    iget-object p1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    goto :goto_1

    :cond_5
    iget-object p1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    :goto_1
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    :goto_2
    return-object v0
.end method

.method public final a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .locals 2

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez p2, :cond_1

    iget-object p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    goto :goto_0

    :cond_1
    iget-object p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    :goto_0
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_1

    :cond_3
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    :goto_1
    return-object v1
.end method

.method public abstract a()V
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 10

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v1

    iget-boolean v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result p1

    add-int/2addr p1, v2

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int p2, v2, p1

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_a

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_a

    .line 1
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    if-eqz v4, :cond_9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    const/4 v3, 0x2

    if-eq v4, v3, :cond_5

    const/4 v3, 0x3

    if-eq v4, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v6, :cond_2

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    if-ne v8, v3, :cond_2

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v6, :cond_2

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    if-ne v4, v3, :cond_2

    goto :goto_6

    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez p3, :cond_3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    goto :goto_0

    :cond_3
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    :goto_0
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    if-ne p3, v7, :cond_4

    .line 3
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_1

    :cond_4
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    int-to-float v3, v3

    mul-float/2addr v4, v3

    add-float/2addr v4, v5

    float-to-int v3, v4

    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    goto :goto_5

    :cond_5
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 4
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_a

    if-nez p3, :cond_6

    .line 5
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    goto :goto_2

    :cond_6
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    :goto_2
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez p3, :cond_7

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:F

    goto :goto_3

    :cond_7
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    :goto_3
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_4

    :cond_8
    iget v3, v3, Lb/f/b/g/j/f;->m:I

    invoke-virtual {p0, v3, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a(II)I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_5

    :cond_9
    move v3, p2

    :goto_4
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-virtual {p0, v3, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a(II)I

    move-result v3

    :goto_5
    invoke-virtual {v4, v3}, Lb/f/b/g/j/f;->a(I)V

    .line 6
    :cond_a
    :goto_6
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v4, :cond_b

    return-void

    :cond_b
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    if-ne v3, p2, :cond_c

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    return-void

    :cond_c
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez p3, :cond_d

    .line 7
    iget p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    goto :goto_7

    .line 8
    :cond_d
    iget p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:F

    :goto_7
    if-ne v0, v1, :cond_e

    .line 9
    iget p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move p2, v5

    :cond_e
    sub-int/2addr v2, p1

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget p3, p3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    sub-int/2addr v2, p3

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    int-to-float p1, p1

    add-float/2addr p1, v5

    int-to-float v0, v2

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget p3, p3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a(I)V

    :cond_f
    :goto_8
    return-void
.end method

.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V
    .locals 1

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILb/f/b/g/j/f;)V
    .locals 2

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->h:I

    iput-object p4, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->i:Lb/f/b/g/j/f;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lb/f/b/g/j/d;)V
    .locals 0

    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Lb/f/b/g/j/f;

    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v1, :cond_0

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract e()Z
.end method
