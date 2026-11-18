.class public Lb/f/c/e;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/f/c/e$a;
    }
.end annotation


# instance fields
.field public b:Lb/f/c/d;


# virtual methods
.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lb/f/c/e;->generateDefaultLayoutParams()Lb/f/c/e$a;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lb/f/c/e$a;
    .locals 2

    new-instance v0, Lb/f/c/e$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lb/f/c/e$a;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lb/f/c/e;->generateLayoutParams(Landroid/util/AttributeSet;)Lb/f/c/e$a;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lb/f/c/e$a;
    .locals 2

    new-instance v0, Lb/f/c/e$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lb/f/c/e$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getConstraintSet()Lb/f/c/d;
    .locals 1

    iget-object v0, p0, Lb/f/c/e;->b:Lb/f/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lb/f/c/d;

    invoke-direct {v0}, Lb/f/c/d;-><init>()V

    iput-object v0, p0, Lb/f/c/e;->b:Lb/f/c/d;

    :cond_0
    iget-object v0, p0, Lb/f/c/e;->b:Lb/f/c/d;

    invoke-virtual {v0, p0}, Lb/f/c/d;->a(Lb/f/c/e;)V

    iget-object v0, p0, Lb/f/c/e;->b:Lb/f/c/d;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method
