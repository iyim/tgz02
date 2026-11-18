.class public Lb/o/v/b;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lb/o/l;


# instance fields
.field public X:Lb/o/m;

.field public Y:Ljava/lang/Boolean;

.field public Z:Landroid/view/View;

.field public a0:I

.field public b0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/o/v/b;->Y:Ljava/lang/Boolean;

    return-void
.end method

.method public static b(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lb/o/v/b;

    if-eqz v1, :cond_0

    check-cast v0, Lb/o/v/b;

    invoke-virtual {v0}, Lb/o/v/b;->E0()Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    .line 2
    instance-of v2, v1, Lb/o/v/b;

    if-eqz v2, :cond_1

    check-cast v1, Lb/o/v/b;

    invoke-virtual {v1}, Lb/o/v/b;->E0()Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lb/k/d/b;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lb/k/d/b;

    invoke-virtual {v0}, Lb/k/d/b;->E0()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a NavController set"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public D0()Lb/o/q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/o/q<",
            "+",
            "Lb/o/v/a$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lb/o/v/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m()Lb/k/d/p;

    move-result-object v2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sget v3, Lb/o/v/c;->nav_host_fragment_container:I

    .line 2
    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lb/o/v/a;-><init>(Landroid/content/Context;Lb/k/d/p;I)V

    return-object v0
.end method

.method public final E0()Landroidx/navigation/NavController;
    .locals 2

    iget-object v0, p0, Lb/o/v/b;->X:Lb/o/m;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavController is not available before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    new-instance p2, Lb/k/d/j;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lb/k/d/j;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lb/o/v/c;->nav_host_fragment_container:I

    .line 9
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setId(I)V

    return-object p2
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    iget-boolean p1, p0, Lb/o/v/b;->b0:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object p1

    invoke-virtual {p1}, Lb/k/d/p;->a()Lb/k/d/v;

    move-result-object p1

    invoke-virtual {p1, p0}, Lb/k/d/v;->b(Landroidx/fragment/app/Fragment;)Lb/k/d/v;

    invoke-virtual {p1}, Lb/k/d/v;->a()I

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    sget-object p3, Lb/o/t;->NavHost:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    sget v0, Lb/o/t;->NavHost_navGraph:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    iput v0, p0, Lb/o/v/b;->a0:I

    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p3, Lb/o/v/d;->NavHostFragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lb/o/v/d;->NavHostFragment_defaultNavHost:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/o/v/b;->b0:Z

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lb/o/v/b;->X:Lb/o/m;

    .line 12
    sget v0, Lb/o/s;->nav_controller_view_tag:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lb/o/v/b;->Z:Landroid/view/View;

    iget-object p1, p0, Lb/o/v/b;->Z:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lb/o/v/b;->Z:Landroid/view/View;

    iget-object p2, p0, Lb/o/v/b;->X:Lb/o/m;

    .line 14
    sget v0, Lb/o/s;->nav_controller_view_tag:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created host view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a ViewGroup"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lb/o/v/b;->X:Lb/o/m;

    .line 1
    iget-object v0, v0, Landroidx/navigation/NavController;->k:Lb/o/r;

    .line 2
    const-class v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    invoke-virtual {v0, v1}, Lb/o/r;->a(Ljava/lang/Class;)Lb/o/q;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 3
    iget-object v1, v0, Landroidx/navigation/fragment/DialogFragmentNavigator;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, v0, Landroidx/navigation/fragment/DialogFragmentNavigator;->e:Lb/m/f;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lb/m/g;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/navigation/NavController;)V
    .locals 4

    .line 4
    iget-object v0, p1, Landroidx/navigation/NavController;->k:Lb/o/r;

    .line 5
    new-instance v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m()Lb/k/d/p;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Lb/k/d/p;)V

    invoke-virtual {v0, v1}, Lb/o/r;->a(Lb/o/q;)Lb/o/q;

    .line 6
    iget-object p1, p1, Landroidx/navigation/NavController;->k:Lb/o/r;

    .line 7
    invoke-virtual {p0}, Lb/o/v/b;->D0()Lb/o/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/o/r;->a(Lb/o/q;)Lb/o/q;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lb/o/v/b;->X:Lb/o/m;

    if-eqz v0, :cond_0

    .line 10
    iput-boolean p1, v0, Landroidx/navigation/NavController;->o:Z

    invoke-virtual {v0}, Landroidx/navigation/NavController;->e()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lb/o/v/b;->Y:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public a0()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    .line 2
    iget-object v0, p0, Lb/o/v/b;->Z:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    iget-object v2, p0, Lb/o/v/b;->X:Lb/o/m;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb/o/v/b;->Z:Landroid/view/View;

    .line 3
    sget v2, Lb/o/s;->nav_controller_view_tag:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iput-object v1, p0, Lb/o/v/b;->Z:Landroid/view/View;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A0()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lb/o/m;

    invoke-direct {v1, v0}, Lb/o/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lb/o/v/b;->X:Lb/o/m;

    iget-object v0, p0, Lb/o/v/b;->X:Lb/o/m;

    .line 3
    iget-object v1, v0, Landroidx/navigation/NavController;->i:Lb/m/h;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p0, v0, Landroidx/navigation/NavController;->i:Lb/m/h;

    iget-object v1, v0, Landroidx/navigation/NavController;->i:Lb/m/h;

    invoke-interface {v1}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v0, v0, Landroidx/navigation/NavController;->m:Lb/m/g;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lb/m/g;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lb/o/v/b;->X:Lb/o/m;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z0()Lb/k/d/c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->b()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    .line 5
    iget-object v2, v0, Landroidx/navigation/NavController;->i:Lb/m/h;

    if-eqz v2, :cond_b

    iget-object v2, v0, Landroidx/navigation/NavController;->n:Lb/a/b;

    invoke-virtual {v2}, Lb/a/b;->c()V

    iget-object v2, v0, Landroidx/navigation/NavController;->i:Lb/m/h;

    iget-object v3, v0, Landroidx/navigation/NavController;->n:Lb/a/b;

    invoke-virtual {v1, v2, v3}, Landroidx/activity/OnBackPressedDispatcher;->a(Lb/m/h;Lb/a/b;)V

    iget-object v1, v0, Landroidx/navigation/NavController;->i:Lb/m/h;

    invoke-interface {v1}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, v0, Landroidx/navigation/NavController;->m:Lb/m/g;

    check-cast v1, Lb/m/i;

    .line 6
    iget-object v1, v1, Lb/m/i;->a:Lb/c/a/b/a;

    invoke-virtual {v1, v2}, Lb/c/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v0, Landroidx/navigation/NavController;->i:Lb/m/h;

    invoke-interface {v1}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v0, v0, Landroidx/navigation/NavController;->m:Lb/m/g;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lb/m/g;)V

    .line 8
    iget-object v0, p0, Lb/o/v/b;->X:Lb/o/m;

    iget-object v1, p0, Lb/o/v/b;->Y:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 9
    :goto_1
    iput-boolean v1, v0, Landroidx/navigation/NavController;->o:Z

    invoke-virtual {v0}, Landroidx/navigation/NavController;->e()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lb/o/v/b;->Y:Ljava/lang/Boolean;

    iget-object v1, p0, Lb/o/v/b;->X:Lb/o/m;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d()Lb/m/u;

    move-result-object v4

    .line 11
    iget-object v5, v1, Landroidx/navigation/NavController;->j:Lb/o/f;

    invoke-static {v4}, Lb/o/f;->a(Lb/m/u;)Lb/o/f;

    move-result-object v6

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, v1, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v4}, Lb/o/f;->a(Lb/m/u;)Lb/o/f;

    move-result-object v4

    iput-object v4, v1, Landroidx/navigation/NavController;->j:Lb/o/f;

    .line 12
    :goto_2
    iget-object v1, p0, Lb/o/v/b;->X:Lb/o/m;

    invoke-virtual {p0, v1}, Lb/o/v/b;->a(Landroidx/navigation/NavController;)V

    const-string v1, "android-support-nav:fragment:graphId"

    if-eqz p1, :cond_4

    const-string v4, "android-support-nav:fragment:navControllerState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android-support-nav:fragment:defaultHost"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v2, p0, Lb/o/v/b;->b0:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v2

    invoke-virtual {v2}, Lb/k/d/p;->a()Lb/k/d/v;

    move-result-object v2

    invoke-virtual {v2, p0}, Lb/k/d/v;->b(Landroidx/fragment/app/Fragment;)Lb/k/d/v;

    invoke-virtual {v2}, Lb/k/d/v;->a()I

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lb/o/v/b;->a0:I

    goto :goto_3

    :cond_4
    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_5

    iget-object v2, p0, Lb/o/v/b;->X:Lb/o/m;

    invoke-virtual {v2, v4}, Landroidx/navigation/NavController;->a(Landroid/os/Bundle;)V

    :cond_5
    iget v2, p0, Lb/o/v/b;->a0:I

    if-eqz v2, :cond_6

    iget-object v1, p0, Lb/o/v/b;->X:Lb/o/m;

    .line 13
    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavController;->a(ILandroid/os/Bundle;)V

    goto :goto_4

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_7
    if-eqz v2, :cond_8

    const-string v0, "android-support-nav:fragment:startDestinationArgs"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_8
    if-eqz v3, :cond_9

    iget-object v1, p0, Lb/o/v/b;->X:Lb/o/m;

    invoke-virtual {v1, v3, v0}, Landroidx/navigation/NavController;->a(ILandroid/os/Bundle;)V

    :cond_9
    :goto_4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    return-void

    .line 15
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewModelStore should be set before setGraph call"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lb/o/v/b;->X:Lb/o/m;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->d()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android-support-nav:fragment:navControllerState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-boolean v0, p0, Lb/o/v/b;->b0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "android-support-nav:fragment:defaultHost"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget v0, p0, Lb/o/v/b;->a0:I

    if-eqz v0, :cond_2

    const-string v1, "android-support-nav:fragment:graphId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
