.class public final Lb/r/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/r/c;

.field public final b:Lb/r/a;


# direct methods
.method public constructor <init>(Lb/r/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/r/b;->a:Lb/r/c;

    new-instance p1, Lb/r/a;

    invoke-direct {p1}, Lb/r/a;-><init>()V

    iput-object p1, p0, Lb/r/b;->b:Lb/r/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lb/r/b;->a:Lb/r/c;

    invoke-interface {v0}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb/m/i;

    .line 1
    iget-object v1, v1, Lb/m/i;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_2

    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Lb/r/b;->a:Lb/r/c;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Lb/r/c;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lb/m/g;)V

    iget-object v1, p0, Lb/r/b;->b:Lb/r/a;

    .line 3
    iget-boolean v2, v1, Lb/r/a;->c:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    const-string v2, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v1, Lb/r/a;->b:Landroid/os/Bundle;

    :cond_0
    new-instance p1, Landroidx/savedstate/SavedStateRegistry$1;

    invoke-direct {p1, v1}, Landroidx/savedstate/SavedStateRegistry$1;-><init>(Lb/r/a;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->a(Lb/m/g;)V

    const/4 p1, 0x1

    iput-boolean p1, v1, Lb/r/a;->c:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
