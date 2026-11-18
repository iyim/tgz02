.class public final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandleController$a;
    }
.end annotation


# instance fields
.field public a:Z


# virtual methods
.method public a(Lb/m/h;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-interface {p1}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    check-cast p1, Lb/m/i;

    .line 1
    iget-object p1, p1, Lb/m/i;->a:Lb/c/a/b/a;

    invoke-virtual {p1, p0}, Lb/c/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Lb/r/a;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    iget-boolean p1, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->a(Lb/m/g;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    return v0
.end method
