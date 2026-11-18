.class public Lb/f/b/g/j/m$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/f/b/g/j/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lb/f/b/g/j/m;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Lb/f/b/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Lb/f/b/d;->b(Ljava/lang/Object;)I

    return-void
.end method
