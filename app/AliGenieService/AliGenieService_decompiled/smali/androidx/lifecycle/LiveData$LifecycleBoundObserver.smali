.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$b;
.source ""

# interfaces
.implements Lb/m/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.b;",
        "Lb/m/f;"
    }
.end annotation


# instance fields
.field public final e:Lb/m/h;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/m/h;

    invoke-interface {v0}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    check-cast v0, Lb/m/i;

    .line 1
    iget-object v0, v0, Lb/m/i;->a:Lb/c/a/b/a;

    invoke-virtual {v0, p0}, Lb/c/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lb/m/h;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/m/h;

    invoke-interface {p1}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    check-cast p1, Lb/m/i;

    .line 2
    iget-object p1, p1, Lb/m/i;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->a(Lb/m/n;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$b;->a(Z)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Lb/m/h;

    invoke-interface {v0}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    check-cast v0, Lb/m/i;

    .line 1
    iget-object v0, v0, Lb/m/i;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method
