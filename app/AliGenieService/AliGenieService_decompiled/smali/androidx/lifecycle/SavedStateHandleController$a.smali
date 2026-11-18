.class public final Landroidx/lifecycle/SavedStateHandleController$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/r/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/r/c;)V
    .locals 7

    const-class v0, Landroidx/lifecycle/SavedStateHandleController$a;

    instance-of v1, p1, Lb/m/v;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lb/m/v;

    invoke-interface {v1}, Lb/m/v;->d()Lb/m/u;

    move-result-object v1

    invoke-interface {p1}, Lb/r/c;->c()Lb/r/a;

    move-result-object v2

    invoke-virtual {v1}, Lb/m/u;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1
    iget-object v5, v1, Lb/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/m/q;

    .line 2
    invoke-interface {p1}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    const-string v6, "androidx.lifecycle.savedstate.vm.tag"

    .line 3
    invoke-virtual {v4, v6}, Lb/m/q;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/lifecycle/SavedStateHandleController;->a()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v2, v5}, Landroidx/lifecycle/SavedStateHandleController;->a(Lb/r/a;Landroidx/lifecycle/Lifecycle;)V

    .line 4
    move-object v4, v5

    check-cast v4, Lb/m/i;

    .line 5
    iget-object v4, v4, Lb/m/i;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v4, v6, :cond_2

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v6}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Landroidx/lifecycle/SavedStateHandleController$1;

    invoke-direct {v4, v5, v2}, Landroidx/lifecycle/SavedStateHandleController$1;-><init>(Landroidx/lifecycle/Lifecycle;Lb/r/a;)V

    invoke-virtual {v5, v4}, Landroidx/lifecycle/Lifecycle;->a(Lb/m/g;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2, v0}, Lb/r/a;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    iget-object v1, v1, Lb/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v2, v0}, Lb/r/a;->a(Ljava/lang/Class;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
