.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static o0:F = 0.5f


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:I

.field public E:I

.field public F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public K:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public L:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public P:[Z

.field public Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public S:I

.field public T:I

.field public U:F

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Lb/f/b/g/j/c;

.field public b0:F

.field public c:Lb/f/b/g/j/c;

.field public c0:F

.field public d:Lb/f/b/g/j/j;

.field public d0:Ljava/lang/Object;

.field public e:Lb/f/b/g/j/l;

.field public e0:I

.field public f:[Z

.field public f0:Ljava/lang/String;

.field public g:Z

.field public g0:Ljava/lang/String;

.field public h:Z

.field public h0:I

.field public i:Z

.field public i0:I

.field public j:Z

.field public j0:[F

.field public k:Z

.field public k0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public l:I

.field public l0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public m:I

.field public m0:I

.field public n:I

.field public n0:I

.field public o:I

.field public p:[I

.field public q:I

.field public r:I

.field public s:F

.field public t:I

.field public u:I

.field public v:F

.field public w:I

.field public x:F

.field public y:[I

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    const/4 v2, 0x2

    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:Z

    iput-boolean v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    const/4 v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:I

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    new-array v5, v2, [I

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:[I

    const/4 v5, 0x0

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:F

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Z

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:I

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x6

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v7, v6, v0

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v7, v6, v3

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v7, v6, v2

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x5

    aput-object v7, v6, v8

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    new-array v6, v2, [Z

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:[Z

    new-array v6, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v6, v0

    aput-object v7, v6, v3

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    sget v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o0:F

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i0:I

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j0:[F

    new-array v5, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v1, v5, v0

    aput-object v1, v5, v3

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v1, v2, v0

    aput-object v1, v2, v3

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m0:I

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n0:I

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public a(I)F
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:F

    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 34
    iput p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 36
    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:I

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    .line 37
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p4, p5, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public a(Lb/f/b/c;)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()V

    return-void
.end method

.method public a(Lb/f/b/d;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    :cond_0
    return-void
.end method

.method public a(Lb/f/b/d;Z)V
    .locals 51

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v7

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    move/from16 v28, v0

    move/from16 v29, v1

    goto :goto_2

    :cond_2
    move/from16 v28, v7

    move/from16 v29, v28

    :goto_2
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v6, 0x8

    if-ne v0, v6, :cond_5

    .line 11
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v7

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v8

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v0, v7

    :goto_4
    if-nez v0, :cond_5

    .line 12
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:[Z

    aget-boolean v1, v0, v7

    if-nez v1, :cond_5

    aget-boolean v0, v0, v8

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    const/4 v5, 0x5

    if-nez v0, :cond_6

    iget-boolean v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    if-eqz v0, :cond_c

    :cond_6
    iget-boolean v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    if-eqz v0, :cond_8

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    invoke-virtual {v14, v13, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v12, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    if-eqz v28, :cond_8

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_8

    iget-boolean v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:Z

    if-eqz v1, :cond_7

    check-cast v0, Lb/f/b/g/c;

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Lb/f/b/g/c;->c(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Lb/f/b/g/c;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    goto :goto_5

    :cond_7
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v7, v5}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_8
    :goto_5
    iget-boolean v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    if-eqz v0, :cond_b

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    invoke-virtual {v14, v11, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v10, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v9, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    :cond_9
    if-eqz v29, :cond_b

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_b

    iget-boolean v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:Z

    if-eqz v1, :cond_a

    check-cast v0, Lb/f/b/g/c;

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Lb/f/b/g/c;->c(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Lb/f/b/g/c;->b(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    goto :goto_6

    :cond_a
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v7, v5}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_b
    :goto_6
    iget-boolean v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    if-eqz v0, :cond_c

    iput-boolean v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    iput-boolean v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    return-void

    :cond_c
    if-eqz p2, :cond_f

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    if-eqz v0, :cond_f

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    if-eqz v1, :cond_f

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v3, :cond_f

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v0, :cond_f

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v13, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v12, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v11, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v10, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v0, v0, Lb/f/b/g/j/l;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v9, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_e

    if-eqz v28, :cond_d

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v7, v6}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_d
    if-eqz v29, :cond_e

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v7, v6}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_e
    iput-boolean v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    iput-boolean v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    return-void

    :cond_f
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_14

    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Lb/f/b/g/c;

    invoke-virtual {v0, v15, v7}, Lb/f/b/g/c;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    move v0, v8

    goto :goto_7

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Z

    move-result v0

    :goto_7
    invoke-virtual {v15, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v1, Lb/f/b/g/c;

    invoke-virtual {v1, v15, v8}, Lb/f/b/g/c;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    move v1, v8

    goto :goto_8

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Z

    move-result v1

    :goto_8
    if-nez v0, :cond_12

    if-eqz v28, :cond_12

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-eq v2, v6, :cond_12

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_12

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_12

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    invoke-virtual {v14, v2, v12, v7, v8}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_12
    if-nez v1, :cond_13

    if-eqz v29, :cond_13

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-eq v2, v6, :cond_13

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_13

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_13

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_13

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    invoke-virtual {v14, v2, v10, v7, v8}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_13
    move/from16 v30, v0

    move/from16 v31, v1

    goto :goto_9

    :cond_14
    move/from16 v30, v7

    move/from16 v31, v30

    :goto_9
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge v0, v1, :cond_15

    move v0, v1

    :cond_15
    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    if-ge v1, v2, :cond_16

    move v1, v2

    :cond_16
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v7

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_17

    move v2, v8

    goto :goto_a

    :cond_17
    move v2, v7

    :goto_a
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v8

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_18

    move v3, v8

    goto :goto_b

    :cond_18
    move v3, v7

    :goto_b
    iget v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    iput v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    iget v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    iput v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    iget v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    iget v8, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    const/16 v18, 0x0

    cmpl-float v4, v4, v18

    const/16 v18, 0x4

    if-lez v4, :cond_2a

    iget v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-eq v4, v6, :cond_2a

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v19, 0x0

    aget-object v4, v4, v19

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_19

    if-nez v5, :cond_19

    const/4 v5, 0x3

    :cond_19
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_1a

    if-nez v8, :cond_1a

    const/4 v8, 0x3

    :cond_1a
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/high16 v23, 0x3f800000    # 1.0f

    if-ne v7, v6, :cond_25

    const/4 v7, 0x1

    aget-object v4, v4, v7

    if-ne v4, v6, :cond_25

    const/4 v4, 0x3

    if-ne v5, v4, :cond_25

    if-ne v8, v4, :cond_25

    .line 13
    iget v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1c

    if-eqz v2, :cond_1b

    if-nez v3, :cond_1b

    const/4 v4, 0x0

    iput v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    goto :goto_c

    :cond_1b
    if-nez v2, :cond_1c

    if-eqz v3, :cond_1c

    const/4 v2, 0x1

    iput v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    if-ne v2, v6, :cond_1c

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    div-float v2, v23, v2

    iput v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    :cond_1c
    :goto_c
    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    if-nez v2, :cond_1e

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    const/4 v2, 0x1

    :goto_d
    iput v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    goto :goto_e

    :cond_1e
    const/4 v2, 0x1

    iget v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    if-ne v3, v2, :cond_20

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    const/4 v2, 0x0

    goto :goto_d

    :cond_20
    :goto_e
    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    :goto_f
    iput v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    goto :goto_10

    :cond_22
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    div-float v2, v23, v2

    iput v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    const/4 v2, 0x1

    goto :goto_f

    :cond_23
    :goto_10
    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_29

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    if-lez v2, :cond_24

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:I

    if-nez v2, :cond_24

    const/4 v2, 0x0

    :goto_11
    iput v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    goto/16 :goto_12

    :cond_24
    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    if-nez v2, :cond_29

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:I

    if-lez v2, :cond_29

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    div-float v2, v23, v2

    iput v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    const/4 v2, 0x1

    goto :goto_11

    .line 14
    :cond_25
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_27

    const/4 v4, 0x3

    if-ne v5, v4, :cond_27

    iput v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    iget v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move/from16 v35, v1

    if-eq v2, v6, :cond_26

    move/from16 v33, v8

    move/from16 v32, v18

    goto :goto_13

    :cond_26
    move/from16 v34, v3

    move/from16 v32, v5

    move/from16 v33, v8

    goto :goto_14

    :cond_27
    const/4 v3, 0x1

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_29

    const/4 v2, 0x3

    if-ne v8, v2, :cond_29

    iput v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_28

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    div-float v1, v23, v1

    iput v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    :cond_28
    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_29

    move/from16 v35, v1

    move/from16 v32, v5

    move/from16 v33, v18

    goto :goto_13

    :cond_29
    :goto_12
    move/from16 v35, v1

    move/from16 v32, v5

    move/from16 v33, v8

    const/16 v34, 0x1

    goto :goto_14

    :cond_2a
    move/from16 v35, v1

    move/from16 v32, v5

    move/from16 v33, v8

    :goto_13
    const/16 v34, 0x0

    :goto_14
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    const/4 v2, 0x0

    aput v32, v1, v2

    const/4 v2, 0x1

    aput v33, v1, v2

    if-eqz v34, :cond_2c

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    const/4 v2, -0x1

    if-eqz v1, :cond_2b

    if-ne v1, v2, :cond_2d

    :cond_2b
    const/16 v18, 0x1

    goto :goto_15

    :cond_2c
    const/4 v2, -0x1

    :cond_2d
    const/16 v18, 0x0

    :goto_15
    if-eqz v34, :cond_2f

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2e

    if-ne v1, v2, :cond_2f

    :cond_2e
    const/16 v36, 0x1

    goto :goto_16

    :cond_2f
    const/16 v36, 0x0

    :goto_16
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_30

    instance-of v1, v15, Lb/f/b/g/c;

    if-eqz v1, :cond_30

    const/16 v21, 0x1

    goto :goto_17

    :cond_30
    const/16 v21, 0x0

    :goto_17
    if-eqz v21, :cond_31

    const/16 v22, 0x0

    goto :goto_18

    :cond_31
    move/from16 v22, v0

    :goto_18
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v37, v0, 0x1

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:[Z

    const/4 v2, 0x0

    aget-boolean v23, v0, v2

    aget-boolean v38, v0, v1

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:I

    const/4 v8, 0x2

    const/16 v39, 0x0

    if-eq v0, v8, :cond_37

    iget-boolean v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    if-nez v0, :cond_37

    if-eqz p2, :cond_33

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    if-eqz v0, :cond_33

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_33

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v0, :cond_32

    goto :goto_19

    :cond_32
    if-eqz p2, :cond_37

    iget v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v13, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v12, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_37

    if-eqz v28, :cond_37

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/16 v6, 0x8

    invoke-virtual {v14, v0, v12, v1, v6}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_1d

    :cond_33
    :goto_19
    const/16 v6, 0x8

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_34

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    move-object v7, v0

    goto :goto_1a

    :cond_34
    move-object/from16 v7, v39

    :goto_1a
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_1b

    :cond_35
    move-object/from16 v20, v39

    :goto_1b
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    const/16 v19, 0x0

    aget-boolean v5, v0, v19

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v27, v0, v19

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:[I

    aget v42, v6, v19

    iget v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    const/16 v17, 0x1

    aget-object v0, v0, v17

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v8, :cond_36

    move/from16 v44, v17

    goto :goto_1c

    :cond_36
    move/from16 v44, v19

    :goto_1c
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    move/from16 v24, v0

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:I

    move/from16 v25, v0

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v45, v1

    move-object/from16 v1, p1

    move/from16 v40, v2

    const/4 v2, 0x1

    move-object/from16 v46, v3

    move/from16 v3, v28

    move-object/from16 v47, v4

    move/from16 v4, v29

    const/4 v8, 0x5

    move/from16 v16, v6

    move-object/from16 v6, v20

    move-object/from16 v8, v27

    move-object/from16 v48, v9

    move/from16 v9, v21

    move-object/from16 v49, v10

    move-object/from16 v10, v47

    move-object/from16 v50, v11

    move-object/from16 v11, v46

    move-object/from16 v41, v12

    move/from16 v12, v45

    move-object/from16 v43, v13

    move/from16 v13, v22

    move/from16 v14, v40

    move/from16 v15, v42

    move/from16 v17, v18

    move/from16 v18, v44

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v23

    move/from16 v22, v32

    move/from16 v23, v33

    move/from16 v27, v37

    invoke-virtual/range {v0 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    goto :goto_1e

    :cond_37
    :goto_1d
    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v50, v11

    move-object/from16 v41, v12

    move-object/from16 v43, v13

    :goto_1e
    if-eqz p2, :cond_3b

    move-object/from16 v15, p0

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    if-eqz v0, :cond_3a

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_3a

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v0, :cond_3a

    iget v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v50

    invoke-virtual {v14, v13, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v12, v49

    invoke-virtual {v14, v12, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    iget-object v0, v0, Lb/f/b/g/j/l;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v1, v48

    invoke-virtual {v14, v1, v0}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_39

    if-nez v31, :cond_39

    if-eqz v29, :cond_39

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1f

    :cond_38
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_1f

    :cond_39
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_1f
    move v7, v10

    goto :goto_21

    :cond_3a
    move-object/from16 v14, p1

    move-object/from16 v1, v48

    move-object/from16 v12, v49

    move-object/from16 v13, v50

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_20

    :cond_3b
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v48

    move-object/from16 v12, v49

    move-object/from16 v13, v50

    :goto_20
    move v7, v11

    :goto_21
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3c

    move v7, v10

    :cond_3c
    if-eqz v7, :cond_47

    iget-boolean v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    if-nez v0, :cond_47

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v11

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_3d

    instance-of v0, v15, Lb/f/b/g/c;

    if-eqz v0, :cond_3d

    move v9, v11

    goto :goto_22

    :cond_3d
    move v9, v10

    :goto_22
    if-eqz v9, :cond_3e

    move/from16 v35, v10

    :cond_3e
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_3f

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    move-object v7, v0

    goto :goto_23

    :cond_3f
    move-object/from16 v7, v39

    :goto_23
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_40

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    move-object v6, v0

    goto :goto_24

    :cond_40
    move-object/from16 v6, v39

    :goto_24
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-gtz v0, :cond_41

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-ne v0, v2, :cond_45

    :cond_41
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_43

    .line 15
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    .line 16
    invoke-virtual {v14, v1, v13, v0, v2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v1, v0, v10, v2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    if-eqz v29, :cond_42

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v14, v7, v0, v10, v1}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_42
    move/from16 v27, v10

    goto :goto_26

    :cond_43
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-ne v0, v2, :cond_44

    invoke-virtual {v14, v1, v13, v10, v2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    goto :goto_25

    .line 17
    :cond_44
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    .line 18
    invoke-virtual {v14, v1, v13, v0, v2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    :cond_45
    :goto_25
    move/from16 v27, v37

    :goto_26
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v0, v11

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iget v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    iget-object v10, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:[I

    aget v16, v10, v11

    iget v10, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:F

    const/16 v17, 0x0

    aget-object v0, v0, v17

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v11, :cond_46

    const/16 v18, 0x1

    goto :goto_27

    :cond_46
    move/from16 v18, v17

    :goto_27
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:I

    move/from16 v24, v0

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    move/from16 v25, v0

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v2

    const/4 v2, 0x0

    move-object v11, v3

    move/from16 v3, v29

    move-object/from16 v21, v4

    move/from16 v4, v28

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v28, v12

    move/from16 v12, v19

    move-object/from16 v29, v13

    move/from16 v13, v35

    move/from16 v14, v20

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v36

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v38

    move/from16 v22, v33

    move/from16 v23, v32

    invoke-virtual/range {v0 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    goto :goto_28

    :cond_47
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    :goto_28
    if-eqz v34, :cond_49

    const/16 v6, 0x8

    move-object/from16 v7, p0

    iget v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    const/4 v1, 0x1

    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    if-ne v0, v1, :cond_48

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v41

    move-object/from16 v4, v43

    goto :goto_29

    :cond_48
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v43

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    :goto_29
    invoke-virtual/range {v0 .. v6}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    goto :goto_2a

    :cond_49
    move-object/from16 v7, p0

    :goto_2a
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 19
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 20
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 21
    iget v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    .line 22
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v4, v3}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v4, v3}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v4, v6}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v4, v6}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v4, v0}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v0

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    int-to-double v1, v2

    move-object/from16 p2, v5

    move-object/from16 v17, v6

    mul-double v5, v15, v1

    double-to-float v15, v5

    move-object v10, v0

    invoke-virtual/range {v10 .. v15}, Lb/f/b/b;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Lb/f/b/b;

    invoke-virtual {v4, v0}, Lb/f/b/d;->a(Lb/f/b/b;)V

    invoke-virtual/range {p1 .. p1}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    double-to-float v13, v5

    move-object v8, v0

    move-object v10, v3

    move-object/from16 v11, p2

    move-object/from16 v12, v17

    invoke-virtual/range {v8 .. v13}, Lb/f/b/b;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Lb/f/b/b;

    invoke-virtual {v4, v0}, Lb/f/b/d;->a(Lb/f/b/b;)V

    :cond_4a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 23
    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    return-void
.end method

.method public final a(Lb/f/b/d;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    invoke-virtual {v10, v13}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    invoke-virtual {v10, v14}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 24
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 25
    invoke-virtual {v10, v5}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    .line 26
    iget-object v5, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 27
    invoke-virtual {v10, v5}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v16

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v17

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Z

    move-result v18

    if-eqz v17, :cond_0

    add-int/lit8 v5, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, v16

    :goto_0
    if-eqz v18, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-eqz p17, :cond_2

    move-object/from16 v20, v6

    const/4 v12, 0x3

    goto :goto_1

    :cond_2
    move/from16 v12, p22

    move-object/from16 v20, v6

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v2, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v2, :cond_4

    const/4 v2, 0x2

    if-eq v6, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    if-eq v12, v2, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x4

    :cond_5
    const/4 v6, 0x0

    :goto_3
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v14, 0x8

    if-ne v2, v14, :cond_6

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    move v2, v6

    move/from16 v6, p13

    :goto_4
    if-eqz p27, :cond_9

    if-nez v16, :cond_7

    if-nez v17, :cond_7

    if-nez v18, :cond_7

    move/from16 v14, p12

    invoke-virtual {v10, v9, v14}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;I)V

    goto :goto_5

    :cond_7
    if-eqz v16, :cond_8

    if-nez v17, :cond_8

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v14

    const/16 v11, 0x8

    invoke-virtual {v10, v9, v7, v14, v11}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    goto :goto_6

    :cond_8
    :goto_5
    const/16 v11, 0x8

    goto :goto_6

    :cond_9
    move v11, v14

    :goto_6
    if-nez v2, :cond_d

    if-eqz p9, :cond_b

    const/4 v11, 0x0

    const/4 v14, 0x3

    invoke-virtual {v10, v8, v9, v11, v14}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    const/16 v11, 0x8

    if-lez v15, :cond_a

    invoke-virtual {v10, v8, v9, v15, v11}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_a
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_c

    invoke-virtual {v10, v8, v9, v1, v11}, Lb/f/b/d;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_7

    :cond_b
    invoke-virtual {v10, v8, v9, v6, v11}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    :cond_c
    :goto_7
    move/from16 v24, v2

    move/from16 v25, v3

    move v1, v5

    move-object v15, v7

    move-object v14, v8

    move-object/from16 v11, v20

    :goto_8
    move/from16 v20, p5

    goto/16 :goto_12

    :cond_d
    const/4 v1, 0x2

    if-eq v5, v1, :cond_10

    if-nez p17, :cond_10

    const/4 v1, 0x1

    if-eq v12, v1, :cond_e

    if-nez v12, :cond_10

    :cond_e
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_f
    const/16 v2, 0x8

    invoke-virtual {v10, v8, v9, v1, v2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    move/from16 v25, v3

    move v1, v5

    move-object v15, v7

    move-object v14, v8

    move-object/from16 v11, v20

    const/16 v24, 0x0

    goto :goto_8

    :cond_10
    const/4 v1, -0x2

    if-ne v3, v1, :cond_11

    move v11, v6

    goto :goto_9

    :cond_11
    move v11, v3

    :goto_9
    if-ne v4, v1, :cond_12

    move v1, v6

    goto :goto_a

    :cond_12
    move v1, v4

    :goto_a
    if-lez v6, :cond_13

    const/4 v3, 0x1

    if-eq v12, v3, :cond_13

    const/4 v6, 0x0

    :cond_13
    if-lez v11, :cond_14

    const/16 v3, 0x8

    invoke-virtual {v10, v8, v9, v11, v3}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_14
    if-lez v1, :cond_17

    if-eqz p3, :cond_15

    const/4 v3, 0x1

    if-ne v12, v3, :cond_15

    const/4 v3, 0x0

    goto :goto_b

    :cond_15
    const/4 v3, 0x1

    :goto_b
    if-eqz v3, :cond_16

    const/16 v3, 0x8

    invoke-virtual {v10, v8, v9, v1, v3}, Lb/f/b/d;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_c

    :cond_16
    const/16 v3, 0x8

    :goto_c
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_d

    :cond_17
    const/16 v3, 0x8

    :goto_d
    const/4 v4, 0x1

    if-ne v12, v4, :cond_19

    if-eqz p3, :cond_18

    invoke-virtual {v10, v8, v9, v6, v3}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    goto :goto_e

    :cond_18
    const/4 v4, 0x5

    invoke-virtual {v10, v8, v9, v6, v4}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    invoke-virtual {v10, v8, v9, v6, v3}, Lb/f/b/d;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :goto_e
    move/from16 v3, p5

    move/from16 p9, v1

    move v1, v5

    move-object v15, v7

    move-object v14, v8

    move/from16 p13, v11

    move-object/from16 v11, v20

    goto/16 :goto_11

    :cond_19
    const/4 v3, 0x2

    if-ne v12, v3, :cond_1c

    .line 28
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 29
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v3, :cond_1b

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_1a

    goto :goto_f

    :cond_1a
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v10, v2}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_10

    :cond_1b
    :goto_f
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v10, v2}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :goto_10
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Lb/f/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v14

    move-object v3, v14

    move-object v4, v8

    move/from16 p9, v1

    move v1, v5

    move-object v5, v9

    move/from16 p13, v11

    move-object/from16 v11, v20

    move-object v15, v7

    move-object v7, v2

    move-object v2, v8

    move/from16 v8, p26

    invoke-virtual/range {v3 .. v8}, Lb/f/b/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Lb/f/b/b;

    invoke-virtual {v10, v14}, Lb/f/b/d;->a(Lb/f/b/b;)V

    move/from16 v20, p5

    move/from16 v4, p9

    move/from16 v25, p13

    move-object v14, v2

    const/16 v24, 0x0

    goto :goto_12

    :cond_1c
    move/from16 p9, v1

    move v1, v5

    move-object v15, v7

    move-object v14, v8

    move/from16 p13, v11

    move-object/from16 v11, v20

    const/4 v3, 0x1

    :goto_11
    move/from16 v4, p9

    move/from16 v25, p13

    move/from16 v24, v2

    move/from16 v20, v3

    :goto_12
    if-eqz p27, :cond_59

    if-eqz p19, :cond_1d

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object v5, v9

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/16 v13, 0x8

    const/16 v31, 0x1

    goto/16 :goto_2e

    :cond_1d
    if-nez v16, :cond_1e

    if-nez v17, :cond_1e

    if-nez v18, :cond_1e

    goto :goto_13

    :cond_1e
    if-eqz v16, :cond_20

    if-nez v17, :cond_20

    :cond_1f
    :goto_13
    const/4 v3, 0x0

    goto/16 :goto_2a

    :cond_20
    if-nez v16, :cond_24

    if-eqz v17, :cond_24

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0x8

    invoke-virtual {v10, v14, v11, v1, v2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    if-eqz p3, :cond_1f

    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:Z

    if-eqz v1, :cond_23

    iget-boolean v1, v9, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-eqz v1, :cond_23

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_23

    check-cast v1, Lb/f/b/g/c;

    if-eqz p2, :cond_22

    .line 30
    iget-object v2, v1, Lb/f/b/g/c;->F0:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v2

    iget-object v3, v1, Lb/f/b/g/c;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v3

    if-le v2, v3, :cond_1f

    :cond_21
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lb/f/b/g/c;->F0:Ljava/lang/ref/WeakReference;

    goto :goto_13

    .line 31
    :cond_22
    invoke-virtual {v1, v13}, Lb/f/b/g/c;->c(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    goto :goto_13

    :cond_23
    move-object/from16 v8, p6

    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v8, v3, v1}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_2a

    :cond_24
    move-object/from16 v8, p6

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v16, :cond_54

    if-eqz v17, :cond_54

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v6, p11

    move v5, v2

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 32
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/16 v16, 0x6

    if-eqz v24, :cond_37

    if-nez v12, :cond_29

    if-nez v4, :cond_26

    if-nez v25, :cond_26

    .line 33
    iget-boolean v4, v15, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-eqz v4, :cond_25

    iget-boolean v4, v11, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-eqz v4, :cond_25

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    invoke-virtual {v10, v9, v15, v1, v5}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v14, v11, v1, v5}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    return-void

    :cond_25
    move/from16 v17, v3

    move/from16 v21, v17

    move v4, v5

    move/from16 v23, v4

    const/16 v18, 0x1

    goto :goto_14

    :cond_26
    move/from16 v18, v3

    const/4 v4, 0x5

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v23, 0x5

    :goto_14
    instance-of v3, v7, Lb/f/b/g/a;

    if-nez v3, :cond_27

    instance-of v3, v2, Lb/f/b/g/a;

    if-eqz v3, :cond_28

    :cond_27
    const/16 v23, 0x4

    :cond_28
    move/from16 v19, v16

    move/from16 v22, v17

    move/from16 v27, v18

    move/from16 v26, v23

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/16 v17, 0x4

    move/from16 v18, v4

    goto :goto_17

    :cond_29
    const/4 v3, 0x1

    if-ne v12, v3, :cond_2a

    move/from16 v3, v16

    const/4 v4, 0x4

    const/4 v5, 0x0

    goto :goto_16

    :cond_2a
    const/4 v3, 0x3

    if-ne v12, v3, :cond_36

    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2d

    if-eqz p20, :cond_2c

    if-eqz p3, :cond_2b

    const/4 v3, 0x5

    goto :goto_15

    :cond_2b
    const/4 v3, 0x4

    goto :goto_15

    :cond_2c
    const/16 v3, 0x8

    :goto_15
    const/4 v4, 0x5

    const/4 v5, 0x1

    :goto_16
    move/from16 v19, v3

    move/from16 v26, v4

    move/from16 v27, v5

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/16 v17, 0x4

    const/16 v18, 0x8

    const/16 v21, 0x1

    const/16 v22, 0x1

    :goto_17
    move-object/from16 v4, p7

    goto/16 :goto_1f

    :cond_2d
    if-eqz p17, :cond_31

    move/from16 v3, p23

    const/4 v5, 0x2

    const/16 v17, 0x4

    if-eq v3, v5, :cond_2f

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2e

    goto :goto_18

    :cond_2e
    const/4 v3, 0x0

    goto :goto_19

    :cond_2f
    const/4 v5, 0x1

    :goto_18
    move v3, v5

    :goto_19
    if-nez v3, :cond_30

    const/16 v3, 0x8

    const/4 v4, 0x5

    goto :goto_1b

    :cond_30
    move/from16 v4, v17

    const/4 v3, 0x5

    goto :goto_1b

    :cond_31
    const/4 v5, 0x1

    const/16 v17, 0x4

    if-lez v4, :cond_32

    move v3, v5

    move v4, v3

    move/from16 v21, v4

    const/16 v18, 0x5

    goto :goto_1d

    :cond_32
    if-nez v4, :cond_35

    if-nez v25, :cond_35

    if-nez p20, :cond_33

    const/16 v3, 0x8

    goto :goto_1c

    :cond_33
    if-eq v7, v1, :cond_34

    if-eq v2, v1, :cond_34

    move/from16 v3, v17

    goto :goto_1a

    :cond_34
    const/4 v3, 0x5

    :goto_1a
    move/from16 v4, v17

    :goto_1b
    move/from16 v18, v3

    move/from16 v26, v4

    move/from16 v21, v5

    move/from16 v22, v21

    move/from16 v27, v22

    move/from16 v19, v16

    const/4 v3, 0x3

    goto :goto_17

    :cond_35
    move/from16 v3, v17

    :goto_1c
    move/from16 v18, v3

    move v3, v5

    move v4, v3

    move/from16 v21, v4

    goto :goto_1d

    :cond_36
    const/4 v5, 0x1

    const/16 v17, 0x4

    move/from16 v18, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v21, 0x0

    :goto_1d
    move/from16 v22, v3

    move/from16 v19, v16

    move/from16 v26, v18

    move/from16 v27, v21

    const/4 v3, 0x3

    const/16 v18, 0x5

    move/from16 v21, v4

    goto :goto_17

    :cond_37
    const/4 v5, 0x1

    const/16 v17, 0x4

    iget-boolean v3, v15, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-eqz v3, :cond_3a

    iget-boolean v3, v11, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-eqz v3, :cond_3a

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    const/16 v3, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v15

    move/from16 p20, v1

    move/from16 p21, p16

    move-object/from16 p22, v11

    move-object/from16 p23, v14

    move/from16 p24, v2

    move/from16 p25, v3

    invoke-virtual/range {p17 .. p25}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    if-eqz p3, :cond_39

    if-eqz v20, :cond_39

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_38

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    move-object/from16 v4, p7

    goto :goto_1e

    :cond_38
    move-object/from16 v4, p7

    const/4 v2, 0x0

    :goto_1e
    if-eq v11, v4, :cond_39

    const/4 v1, 0x5

    invoke-virtual {v10, v4, v14, v2, v1}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_39
    return-void

    :cond_3a
    move-object/from16 v4, p7

    const/4 v3, 0x3

    move/from16 v21, v5

    move/from16 v22, v21

    move/from16 v19, v16

    move/from16 v26, v17

    const/16 v18, 0x5

    const/16 v27, 0x0

    :goto_1f
    if-eqz v21, :cond_3b

    if-ne v15, v11, :cond_3b

    if-eq v7, v1, :cond_3b

    const/16 v21, 0x0

    const/16 v28, 0x0

    goto :goto_20

    :cond_3b
    move/from16 v28, v21

    move/from16 v21, v5

    :goto_20
    if-eqz v22, :cond_3d

    if-nez v24, :cond_3c

    if-nez p18, :cond_3c

    if-nez p20, :cond_3c

    if-ne v15, v8, :cond_3c

    if-ne v11, v4, :cond_3c

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x8

    goto :goto_21

    :cond_3c
    move/from16 v22, v18

    move/from16 v18, p3

    :goto_21
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v29

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v30

    move-object v13, v1

    move-object/from16 v1, p1

    move/from16 v31, v5

    move-object v5, v2

    move-object v2, v9

    move/from16 p22, v12

    move v12, v3

    move-object v3, v15

    move/from16 v4, v29

    move-object v12, v5

    move-object/from16 v23, v13

    const/16 v13, 0x8

    move/from16 v5, p16

    move-object v6, v11

    move-object/from16 v32, v7

    move-object v7, v14

    move/from16 v8, v30

    move-object/from16 v33, v9

    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move/from16 v2, v21

    goto :goto_22

    :cond_3d
    move-object/from16 v23, v1

    move/from16 v31, v5

    move-object/from16 v32, v7

    move-object/from16 v33, v9

    move/from16 p22, v12

    const/16 v13, 0x8

    move-object v12, v2

    move/from16 v22, v18

    move/from16 v2, v21

    move/from16 v18, p3

    :goto_22
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-ne v1, v13, :cond_3e

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    move-result v1

    if-nez v1, :cond_3e

    return-void

    :cond_3e
    if-eqz v28, :cond_42

    if-eqz v18, :cond_40

    if-eq v15, v11, :cond_40

    if-nez v24, :cond_40

    move-object/from16 v1, v32

    instance-of v3, v1, Lb/f/b/g/a;

    if-nez v3, :cond_3f

    instance-of v3, v12, Lb/f/b/g/a;

    if-eqz v3, :cond_41

    :cond_3f
    move/from16 v3, v16

    goto :goto_23

    :cond_40
    move-object/from16 v1, v32

    :cond_41
    move/from16 v3, v22

    :goto_23
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    move-object/from16 v5, v33

    invoke-virtual {v10, v5, v15, v4, v3}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v10, v14, v11, v4, v3}, Lb/f/b/d;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move/from16 v22, v3

    goto :goto_24

    :cond_42
    move-object/from16 v1, v32

    move-object/from16 v5, v33

    :goto_24
    if-eqz v18, :cond_43

    if-eqz p21, :cond_43

    instance-of v3, v1, Lb/f/b/g/a;

    if-nez v3, :cond_43

    instance-of v3, v12, Lb/f/b/g/a;

    if-nez v3, :cond_43

    move/from16 v2, v16

    move v3, v2

    goto :goto_25

    :cond_43
    move/from16 v31, v2

    move/from16 v3, v22

    move/from16 v2, v26

    :goto_25
    if-eqz v31, :cond_4f

    if-eqz v27, :cond_4c

    if-eqz p20, :cond_44

    if-eqz p4, :cond_4c

    :cond_44
    move-object/from16 v4, v23

    if-eq v1, v4, :cond_46

    if-ne v12, v4, :cond_45

    goto :goto_26

    :cond_45
    move/from16 v16, v2

    :cond_46
    :goto_26
    instance-of v6, v1, Lb/f/b/g/d;

    if-nez v6, :cond_47

    instance-of v6, v12, Lb/f/b/g/d;

    if-eqz v6, :cond_48

    :cond_47
    const/16 v16, 0x5

    :cond_48
    instance-of v6, v1, Lb/f/b/g/a;

    if-nez v6, :cond_49

    instance-of v6, v12, Lb/f/b/g/a;

    if-eqz v6, :cond_4a

    :cond_49
    const/16 v16, 0x5

    :cond_4a
    if-eqz p20, :cond_4b

    const/4 v6, 0x5

    goto :goto_27

    :cond_4b
    move/from16 v6, v16

    :goto_27
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_28

    :cond_4c
    move-object/from16 v4, v23

    :goto_28
    if-eqz v18, :cond_4e

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p17, :cond_4e

    if-nez p20, :cond_4e

    if-eq v1, v4, :cond_4d

    if-ne v12, v4, :cond_4e

    :cond_4d
    move/from16 v2, v17

    :cond_4e
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    invoke-virtual {v10, v5, v15, v1, v2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v14, v11, v1, v2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    :cond_4f
    if-eqz v18, :cond_51

    move-object/from16 v2, p6

    if-ne v2, v15, :cond_50

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    goto :goto_29

    :cond_50
    const/4 v1, 0x0

    :goto_29
    if-eq v15, v2, :cond_51

    const/4 v3, 0x5

    invoke-virtual {v10, v5, v2, v1, v3}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_51
    if-eqz v18, :cond_53

    if-eqz v24, :cond_53

    if-nez p14, :cond_53

    if-nez v25, :cond_53

    if-eqz v24, :cond_52

    move/from16 v12, p22

    const/4 v1, 0x3

    if-ne v12, v1, :cond_52

    const/4 v3, 0x0

    invoke-virtual {v10, v14, v5, v3, v13}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2b

    :cond_52
    const/4 v3, 0x0

    const/4 v1, 0x5

    invoke-virtual {v10, v14, v5, v3, v1}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2b

    :cond_53
    const/4 v3, 0x0

    goto :goto_2b

    :cond_54
    :goto_2a
    move/from16 v18, p3

    :goto_2b
    if-eqz v18, :cond_58

    if-eqz v20, :cond_58

    move-object/from16 v1, p11

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_55

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    move-object/from16 v4, p7

    goto :goto_2c

    :cond_55
    move-object/from16 v4, p7

    move v2, v3

    :goto_2c
    if-eq v11, v4, :cond_58

    iget-boolean v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:Z

    if-eqz v3, :cond_57

    iget-boolean v3, v14, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-eqz v3, :cond_57

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_57

    check-cast v3, Lb/f/b/g/c;

    if-eqz p2, :cond_56

    invoke-virtual {v3, v1}, Lb/f/b/g/c;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    goto :goto_2d

    :cond_56
    invoke-virtual {v3, v1}, Lb/f/b/g/c;->b(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    :goto_2d
    return-void

    :cond_57
    const/4 v1, 0x5

    invoke-virtual {v10, v4, v14, v2, v1}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_58
    return-void

    :cond_59
    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object v5, v9

    const/4 v3, 0x0

    const/16 v13, 0x8

    const/16 v31, 0x1

    const/4 v6, 0x2

    :goto_2e
    if-ge v1, v6, :cond_5e

    if-eqz p3, :cond_5e

    if-eqz v20, :cond_5e

    invoke-virtual {v10, v5, v2, v3, v13}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    if-nez p2, :cond_5b

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_5a

    goto :goto_2f

    :cond_5a
    move v2, v3

    goto :goto_30

    :cond_5b
    :goto_2f
    move/from16 v2, v31

    :goto_30
    if-nez p2, :cond_5d

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5d

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5c

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v1, v3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_5c

    aget-object v1, v1, v31

    if-ne v1, v5, :cond_5c

    goto :goto_31

    :cond_5c
    move/from16 v31, v3

    goto :goto_31

    :cond_5d
    move/from16 v31, v2

    :goto_31
    if-eqz v31, :cond_5e

    invoke-virtual {v10, v4, v14, v3, v13}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_5e
    return-void
.end method

.method public a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/HashSet;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b/g/c;",
            "Lb/f/b/d;",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, Lb/f/b/g/g;->a(Lb/f/b/g/c;Lb/f/b/d;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, Lb/f/b/g/c;->m(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/d;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1
    iget-object p5, p5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_2

    .line 2
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 3
    iget-object p5, p5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_6

    .line 4
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 5
    iget-object p5, p5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_4

    .line 6
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 7
    iget-object p5, p5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_5

    .line 8
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 9
    iget-object p5, p5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_6

    .line 10
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public a(ZZ)V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    .line 38
    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    and-int/2addr p1, v1

    .line 39
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    .line 40
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    and-int/2addr p2, v2

    .line 41
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    :cond_3
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v6

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v2, :cond_5

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    if-ge v0, p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge p1, v0, :cond_6

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    :cond_6
    if-eqz p2, :cond_8

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_7

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    if-ge v1, p1, :cond_7

    goto :goto_1

    :cond_7
    move p1, v1

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    if-ge p1, p2, :cond_8

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    :cond_8
    return-void
.end method

.method public a()Z
    .locals 1

    instance-of v0, p0, Lb/f/b/g/h;

    if-nez v0, :cond_1

    instance-of v0, p0, Lb/f/b/g/d;

    if-eqz v0, :cond_0

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

.method public b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1
    iput p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 3
    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:I

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    .line 4
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget-boolean p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(I)V

    :cond_0
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    return-void
.end method

.method public b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public b(Lb/f/b/d;Z)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_0

    iget v0, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget v2, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    if-eqz p2, :cond_1

    iget-object v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v4, :cond_1

    iget v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget p1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    :cond_1
    sub-int p2, v2, v0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq v0, p2, :cond_2

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-eq v2, v3, :cond_2

    if-eq p1, p2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    move p1, v4

    move v0, p1

    move v1, v0

    move v2, v1

    :cond_3
    sub-int/2addr v2, v0

    sub-int/2addr p1, v1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_4

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v4

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_5

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    if-ge v2, p2, :cond_5

    goto :goto_0

    :cond_5
    move p2, v2

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_6

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    if-ge p1, v0, :cond_6

    move p1, v0

    :cond_6
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    if-ge p1, p2, :cond_7

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    :cond_7
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge p1, p2, :cond_8

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    :cond_8
    :goto_1
    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    if-nez v0, :cond_0

    new-instance v0, Lb/f/b/g/j/j;

    invoke-direct {v0, p0}, Lb/f/b/g/j/j;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    if-nez v0, :cond_1

    new-instance v0, Lb/f/b/g/j/l;

    invoke-direct {v0, p0}, Lb/f/b/g/j/l;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    :cond_1
    return-void
.end method

.method public d()I
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    add-int/2addr v0, v1

    return v0
.end method

.method public d(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    return v0
.end method

.method public e(I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Lb/f/b/g/j/j;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Lb/f/b/g/j/l;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public f(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    add-int/2addr p1, v3

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    return v1
.end method

.method public g()I
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final g(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public h()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Z

    return-void
.end method

.method public i()I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    return v0
.end method

.method public i(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    :cond_0
    return-void
.end method

.method public j()I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lb/f/b/g/c;

    if-eqz v1, :cond_0

    check-cast v0, Lb/f/b/g/c;

    iget v0, v0, Lb/f/b/g/c;->v0:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    return v0
.end method

.method public j(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    return-void
.end method

.method public k()I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lb/f/b/g/c;

    if-eqz v1, :cond_0

    check-cast v0, Lb/f/b/g/c;

    iget v0, v0, Lb/f/b/g/c;->w0:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    return v0
.end method

.method public k(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    return-void
.end method

.method public l(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1
    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 3
    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    if-eqz v0, :cond_0

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

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1
    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 3
    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    if-eqz v0, :cond_0

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

.method public q()V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:F

    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:I

    sget v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o0:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:F

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d0:Ljava/lang/Object;

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h0:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i0:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v5

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v5

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:I

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v5

    iput-boolean v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:Z

    return-void
.end method

.method public r()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1
    iput-boolean v0, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Z

    iput v0, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    const-string v1, "type: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "id: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
